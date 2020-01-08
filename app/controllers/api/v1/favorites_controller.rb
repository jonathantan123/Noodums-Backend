class Api::V1::FavoritesController < ApplicationController

        def create 


            user = User.find(params[:user_id])

            foundItem= user.favorites.find { |favorite| favorite.item_id === params[:item_id] }
            
            

             if foundItem === nil 
                favorite = Favorite.create(item_id: params[:item_id], user_id: params[:user_id])
                
                render json: favorite
                
             
             else 
                debugger
              

                render json: {error: "nothing found"}
        
                
             end 
        end 


         def show 
            favorite = Favorite.find_by(item_id: params[:id])
            Favorite.destroy(favorite.id)
            
            
        end

end
