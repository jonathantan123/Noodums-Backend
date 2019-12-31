class Api::V1::OrderItemsController < ApplicationController


    def index 
        order_items = OrderItem.all
        render json: order_items 
    end 


    def create
        
        order = Order.create(user_id: params[:user_id], total_price: params[:total], subtotal: params[:subtotal])
    
        order_items = params[:array] 
            
            order_items.each do |item|
                
                order.order_items.create(item_id: item[:id], quantity: item[:quantity]) 
            end
        
        
    end



    private 
    


end
