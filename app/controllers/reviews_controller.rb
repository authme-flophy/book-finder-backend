class ReviewsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  
  def index
    reviews = Review.all
    render json: reviews
  end
 
  def show
    review = Review.find(params[:id])
    render json: review
  end
  
  def create
      review = Review.create!(book_id: params[:book_id], user_id: session[:user_id], comment: params[:comment])
      render json: review
  end

  def destroy
      @review = Review.find(params[:id])
      @review.destroy
  end


  private

  def render_not_found_response
    render json: { error: "Validation errors" }, status: :not_found
  end
   
end
