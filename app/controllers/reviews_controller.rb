class ReviewsController < ApplicationController
    def index
        @reviews = Review.all
        render json: @reviews
    end
   
    def show
        @review = Review.find(params[:id])
        render json: @review
    end
    
    def create
        @review = Review.new(review_params)
        if @review.save
            render json: @review
        else
            render json: @review.errors, status: :unprocessable_entity
        end
    end
    def destroy
        @review = Review.find(params[:id])
        @review.destroy
    end
    private
    def review_params
        params.require(:review).permit(:book_id, :user_id, :comment)
    end
   
end
