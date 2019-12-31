class Api::V1::FavoritesController < ApplicationController

        def create 

            user = User.find(params[:user_id])

             if user.favorites.any? { |favorite| favorite.item_id === params[:item_id] }
                favorite = Favorite.create(item_id: params[:item_id], user_id: params[:user_id])

                render json: favorite
             else 

                render json: {message: "this has already been added!"}
                
             end 
        end 


         def destroy
            debugger
            
        end'

end
