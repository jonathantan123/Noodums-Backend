class Api::V1::UsersController < ApplicationController


    def index 
        users = User.all    
        render json:  UserSerializer.new(users)
   
    end 

    def create 
        
        user = User.new(
            email_address: params[:email_address],
            password: params[:password], 
            first_name: params[:first_name], 
            last_name: params[:last_name], 
            phone_number: params[:phone_number]
            )
        
        if user.save 
            render json: UserSerializer.new(user) 
        else 
            render json: {errors: user.errors.full_messages}
        
    end 
end 

def update 

    user = User.find(params[:id])
    user.update(phone_number: params[:phone_number], first_name: params[:first_name], last_name: params[:last_name], email_address: params[:email_address] )
    

end 


private 






end
