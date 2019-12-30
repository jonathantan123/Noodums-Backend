class Api::V1::OrdersController < ApplicationController


    def show 
        order = Order.find(params[:id])
        render json: OrderSerializer.new(order)  
    end 

end
