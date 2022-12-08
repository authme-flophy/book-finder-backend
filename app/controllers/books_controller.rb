class BooksController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
    books = Book.all
    render json: books
  end

  def show
    book = Book.find(params[:id])
    render json: book
  end

  private

  def render_not_found_response
    render json: { error: "Validation errors" }, status: :not_found
  end

end
