class Api::V1::OrdersController < ApplicationController


    @@revenues = []
    @@number_of_orders= []


    def getRevenueByMonth(year)
        
  
      
        for i in 1..12 do

            time = DateTime.new(year, i)

            order_items = Order.where("created_at >= ? and created_at <= ? ", time.beginning_of_month, time.end_of_month)

            sum = order_items.map{|order| order.total_price}.reduce(0){|sum, x| sum + x }

            @@revenues.push(sum)
            @@number_of_orders.push(order_items.length)
            

        end 

        



    end 

        def self.ordersByMonth(year, month)
            time = DateTime.new(year, month)

            number_of_orders = Order.where("created_at >= ? and created_at <= ? ", time.beginning_of_month, time.end_of_month).length

            return number_of_orders

        end 



    def index 
        getRevenueByMonth(2019)


        render json: {
            revenue: @@revenues,
            number_of_orders: @@number_of_orders 
        }

        @@revenues = []
        @@number_of_orders= []


       
    end 






    def show 
        order = Order.find(params[:id])
        render json: OrderSerializer.new(order)  
    end 

end
