class Api::V1::OrdersController < ApplicationController
    def create
        user = User.find_by(username: params[:user][:username])
        @orders = params[:orders]
        @orders.each do |order|

        orderdone = Order.create(name: order[:name],
                           price: order[:price], 
                           image: order[:image],
                           status: order[:status],
                           description: order[:description],
                           user_id:user.id,
                           restaurant_id: order[:restaurant_id]
                          )
      
                        end
        render json:{
            status:200
        }
     
      end
      def get 
        user = User.find_by(username: params[:username])
        restaurant = Restaurant.find_by(url: params[:restaurant])
        orders = Order.where(user_id: user.id , restaurant_id: restaurant.id)
        render json: {
            orders: orders
        }
        

        
      end
    
   
end