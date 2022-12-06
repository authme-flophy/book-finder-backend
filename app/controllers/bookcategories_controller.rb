class BookcategoriesController < ApplicationController
    def index
        @bookcategories = BookCategory.all
    end
    def show
        @bookcategories = BookCategory.find(params[:id])
    end
    def create
        @bookcategory = BookCategory.new(bookcategory_params)
        if @bookcategory.save
        render json: @bookcategory
        else
        render json: @bookcategory.errors, status: :unprocessable_entity
        end
    end
    def destroy
        @bookcategory = BookCategory
    end
    private
    def bookcategory_params
        params.require(:bookcategory).permit(:name)
    end
end
