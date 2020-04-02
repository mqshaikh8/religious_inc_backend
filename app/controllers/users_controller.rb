class UsersController < ApplicationController

    def login
        
        @user = User.find_by(name:params[:name],password:params[:password])
        if @user
            puts "sup"
            render {found:"Good"}
        else
            puts "err"
            render json: {error:"error"}
        end
    end

    def persist
    end



end