class CategoriesController < ApplicationController

	def index
		
	end

	def show
		
	end

	def new
		@category = Category.new
		
	end

	def create
		 @category = Category.new(category_params)
binding.pry
			if @category.save
			flash[:notice] = "The category was successfully added."
			redirect_to root_path
		else
			render 'new'
		end
	end
private
	def category_params
		params.require(:category).permit(:name)
	end
end