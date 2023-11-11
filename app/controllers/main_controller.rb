class MainController < ApplicationController
    def index
    end

    def valid
        
        @check = Admin.find_by(admin_id: params[:admin_id], password: params[:password])
        if @check
            redirect_to dashboard_path
        else
            flash[:error] = "Invalid credentials. Please try again."
            redirect_to '/' # Change this to your login path
        end

    end
    
    def dash
        @halls = Hall.all
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
end