class Api::V1::UsersController < ApplicationController


    def index 
        users = User.all    
        render json:  UserSerializer.new(users)
   
    end 

    def create 
        
        user = User.new(
            email_address: params[:email_address],
            password: params[:password])
        
        if user.save 
            render json: user  
        else 
            render json: {errors: user.errors.full_messages}
        
    end 
end 




end
