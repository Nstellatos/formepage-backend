class CategoriesController < ApplicationController
#    before_action :set_category, only: [:show]
    def index  
        categories = Category.includes(:videos) 
        render json: categories
    end
    def show
        category = Category.find(params[:id])
        render json: category
    end
    def create 
        category = Category.new(category_params)
        if category.save
            render json: category, status: :created
        else
            render json: category.errors, status: :unprocessable_entity
        end
    end

    private 
    # def set_category
    #     category = Category.find(params[:id])
    # end
    def category_params
        params.require(:category).permit(:name)
    end
end
