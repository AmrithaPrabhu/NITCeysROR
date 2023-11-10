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
    end

    
end