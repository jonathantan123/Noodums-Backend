class Api::V1::OrdersController < ApplicationController


    @@revenues = []
    @@number_of_orders= []
    @@quantity= []
    


    def getRevenueByMonth(year)
        
        for i in 1..12 do

            time = DateTime.new(year, i)

            order_items = Order.where("created_at >= ? and created_at <= ? ", time.beginning_of_month, time.end_of_month)

            sum = order_items.map{|order| order.total_price}.reduce(0){|sum, x| sum + x }

            @@revenues.push(sum)
            @@number_of_orders.push(order_items.length)
            

        end 

        
    end 

    def getMostCommonItems(year, item_id)
        
        items= OrderItem.all.select{|order| order.item_id === item_id }

        num = items.map{|order| order.quantity}.reduce(0){|sum, x| sum + x }

        @@quantity.push(num)

    end 



    def index

        Item.all.map{|item| getMostCommonItems(2019, item.id)}
        
        getRevenueByMonth(2019)


        render json: {
            revenue: @@revenues,
            number_of_orders: @@number_of_orders,
            quantity: @@quantity

        }

        @@revenues = []
        @@number_of_orders= []
        @@quantity= []




       
    end 






    def show 
        order = Order.find(params[:id])
        render json: OrderSerializer.new(order)  
    end 

end
