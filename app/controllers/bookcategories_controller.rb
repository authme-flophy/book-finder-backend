class BookcategoriesController < ApplicationController
    def index
        @bookcategories = Bookcategory.all
    end
    #if invalid id is given render error
    def show
        books = Bookcategory.find(params[:id])
    
    end
    def create
        @bookcategory = Bookcategory.new(bookcategory_params)
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
