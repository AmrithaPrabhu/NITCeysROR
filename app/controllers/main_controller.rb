class MainController < ApplicationController
    def index
    end

    def valid
        
        @check = Admin.find_by(admin_id: params[:admin_id], password: params[:password])
        if @check
            session[:admin_id] = params[:admin_id]
            redirect_to dashboard_path
        else
            flash[:error] = "Invalid credentials. Please try again."
            redirect_to '/'
        end

    end
    
    def dash
        @halls = Hall.all
        
        query5="SELECT * FROM hallbookings, admins, halls WHERE hallbookings.admin_id = admins.admin_id AND hallbookings.hall_id = halls.hall_id AND hallbookings.is_approved = 0"
        @hallbookings=Hallbooking.find_by_sql(query5)
    end

    def apprej

        if params[:commit_action] == "Approve"

            booking_to_update=Hallbooking.find_by(hall_id: params[:hallbooking]["hall_id"], 
                                            admin_id: params[:hallbooking]["admin_id"], 
                                            start_time: params[:hallbooking]["start_time"],
                                            end_time: params[:hallbooking]["end_time"],
                                            is_approved: 0)

            error_flag=0
            # @bookings_to_check=Hallbooking.find_by(hall_id: params[:hallbooking]["hall_id"], date_: params[:hallbooking]["date_"], is_approved: 1)
            query7 = "SELECT * FROM hallbookings where hall_id = ? and date_ = ? and is_approved = 1"
            @bookings_to_check = Hallbooking.find_by_sql([query7,params[:hallbooking]["hall_id"],params[:hallbooking]["date_"]])
            # @bookings_to_check = Array(@bookings_to_check) 
            # puts (@bookings_to_check)
            if @bookings_to_check
                @bookings_to_check.each do |booking|
                    puts "########PPPPRKLGJQERYJE%YJ%!!!!!!!!!!!!!!!!!!!"
                    # puts (booking.start_time <= booking_to_update.start_time)
                    puts (booking.start_time <= booking_to_update.start_time )
                    puts (booking.end_time >= booking_to_update.end_time)
                    puts (booking.end_time)
                    puts (booking_to_update.end_time)
                    if (
                        (booking.start_time <= booking_to_update.start_time && booking.end_time >= booking_to_update.start_time) || 
                        (booking.start_time <= booking_to_update.end_time && booking.end_time >= booking_to_update.end_time) || 
                        (booking.start_time >= booking_to_update.start_time && booking.end_time <= booking_to_update.end_time) ||
                        (booking.start_time <= booking_to_update.start_time && booking.end_time >= booking_to_update.end_time)
                        ) 
                            error_flag=1
                    end
                end
            end

            if(error_flag == 0)
                if booking_to_update.update(is_approved: 1)
                    flash[:success] = "Approval Successful"
                    redirect_to dashboard_path
                else
                    flash[:error] = "Approval Failed"
                    redirect_to dashboard_path
                end
            else
                if booking_to_update.destroy
                    flash[:error] = "Deleted Due to Clash"
                    redirect_to dashboard_path
                else
                    flash[:error] = 'Failed to delete the record regardless or clash: db error.'
                    redirect_to dashboard_path
                end
            end
            
        elsif params[:commit_action] == "Reject"
            booking_to_delete=Hallbooking.find_by(hall_id: params[:hallbooking]["hall_id"], 
                                        admin_id: params[:hallbooking]["admin_id"], 
                                        start_time: params[:hallbooking]["start_time"],
                                        end_time: params[:hallbooking]["end_time"],
                                        is_approved: 0)
            if booking_to_delete.destroy
                flash[:success] = 'Record was successfully deleted.'
                redirect_to dashboard_path
            else
                flash[:error] = 'Failed to delete the record.'
                redirect_to dashboard_path
            end
        end

    end

    def book
        @hallName = Hall.find_by(hall_id: params[:hall_id])
        if @hallName
            session[:hall_name] = @hallName.hall_name
            session[:hall_id] = @hallName.hall_id
            session[:location] = @hallName.location
            redirect_to bookHall_path
        end
    end

    def booking
        @name = session[:hall_name]
        @id = session[:hall_id]
        @loc = session[:location]
        @obj = session[:hall]
    end 

    def checkBooking
        @bookingDetails = Hallbooking.find_by(date_: params[:date_], start_time: params[:start_time], end_time: params[:end_time], hall_id: session[:hall_id])
        if @bookingDetails
            flash[:error] = "Hall Occupied"
            redirect_to bookHall_path
            return
        else
            @today = Date.today
            if Date.parse(params[:date_]) < @today
                flash[:error] = "Invalid date chosen."
                redirect_to bookHall_path
                return
            end
            if Date.parse(params[:date_]) == @today && params[:start_time] > params[:end_time]
                flash[:error] = "Invalid timings."
                redirect_to bookHall_path
                return
            end
            if params[:end_time] < params[:start_time]
                flash[:error] = "Invalid timings."
                redirect_to bookHall_path
                return
            end
            @query1 = Hallbooking.find_by(date_: params[:date_], start_time: params[:start_time], end_time: params[:end_time], hall_id: session[:hall_id], is_approved: 1)
            if @query1
                flash[:error] = "Hall is busy. Please choose another slot."
                redirect_to bookHall_path
                return
            else
                query2 = "select * from hallbookings where date_ = ? and start_time < ? and end_time > ? and hall_id = ? and is_approved = 1";
                results2 = Hallbooking.find_by_sql([query2,params[:date_],params[:start_time],params[:end_time],session[:hall_id]])
                if results2.present?
                    flash[:error] = "Hall is busy. Please choose another slot."
                    redirect_to bookHall_path
                    return
                else
                    query3 = "select * from hallbookings where date_ = ? and start_time < ? and end_time > ? and hall_id = ? and is_approved = 1";
                    results3 = Hallbooking.find_by_sql([query3,params[:date_],params[:start_time],params[:end_time],session[:hall_id]])
                    if results3.present?
                        flash[:error] = "Hall is busy. Please choose another slot."
                        redirect_to bookHall_path
                        return
                    else
                        query4 = "select * from hallbookings where date_ = ? and start_time > ? and end_time < ? and hall_id = ? and is_approved = 1";
                        results4 = Hallbooking.find_by_sql([query4,params[:date_],params[:start_time], params[:end_time], session[:hall_id]])
                        if results4.present?
                            flash[:error] = "Hall is busy. Please choose another slot."
                            redirect_to bookHall_path
                            return
                        else
                            new_booking = Hallbooking.new(
                                                            date_: Date.parse(params[:date_]),
                                                            start_time: params[:start_time],
                                                            end_time: params[:end_time],
                                                            hall_id: session[:hall_id],
                                                            admin_id: session[:admin_id],
                                                            reason: params[:reason],
                                                            is_approved: 0
                                                            )
                            
                            if new_booking.save
                                flash[:success] = "Hall booking request sent. Please await approval from competent authority."
                                redirect_to dashboard_path
                                return
                            else
                                flash[:error] = "Error creating booking: #{new_booking.errors.full_messages.to_sentence}"
                                redirect_to bookHall_path
                                return
                            end
                        end
                    end
                end
            end
        end
        # redirect_to dashboard_path
    end
end