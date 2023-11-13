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

        @keyholders = User.joins(
            "INNER JOIN key_assignments ON users.user_id = key_assignments.user_id " \
            "INNER JOIN classrooms ON key_assignments.room_id = classrooms.room_id"
            )
            .where(key_assignments: { is_returned: false })
            .select(
            'users.name AS user_name',
            'users.phone_number AS user_phone_number',
            'classrooms.room_no AS room_number',
            'classrooms.building AS building'
            )
            .distinct

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
            if Date.parse(params[:date_]) == @today && params[:start_time] < params[:end_time]
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
                results2 = Hallbooking.find_by_sql([query2,Date.parse(params[:date_]),params[:start_time],params[:end_time],session[:hall_id]])
                if results2.present?
                    flash[:error] = "Hall is busy. Please choose another slot."
                    redirect_to bookHall_path
                    return
                else
                    query3 = "select * from hallbookings where date_ = ? and start_time < ? and end_time > ? and hall_id = ? and is_approved = 1";
                    results3 = Hallbooking.find_by_sql([query3,Date.parse(params[:date_]),params[:start_time],params[:end_time],session[:hall_id]])
                    if results3.present?
                        flash[:error] = "Hall is busy. Please choose another slot."
                        redirect_to bookHall_path
                        return
                    else
                        query4 = "select * from hallbookings where date_ = ? and start_time > ? and end_time < ? and hall_id = ? and is_approved = 1";
                        results4 = Hallbooking.find_by_sql([query4,Date.parse(params[:date_]),params[:start_time], params[:end_time], session[:hall_id]])
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