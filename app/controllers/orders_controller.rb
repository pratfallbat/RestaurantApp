class OrdersController < ApplicationController
	def new
		@food_item = FoodItem.find params[:food_item_id]
	end

	def create
		
		@order = Order.new(order_params)
		@order.food_item =@food_item

		if @order.save
			flash[:success] = "Order Submitted.Thank you"
		end
		else
			flash[:error] = "Error : #{ @order.errors.full_messages.to_sentences}"
			render 'new'
		end
	end

 private
		 def order_params
		 	params.require(:order).permit(:name, :phone, :address)
		end

end
