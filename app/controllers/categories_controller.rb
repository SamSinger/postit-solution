class CategoriesController < ApplicationController
	before_action :require_user, only: [:new, :create]

	def index
		
	end

	def show
		@category = Category.find_by slug: params[:id]
		
	end

	def new
		@category = Category.new		
	end

	 def create
	  	 @category = Category.new(category_params)

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