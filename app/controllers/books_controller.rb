class BooksController < ApplicationController
    def index
        @books = Book.all
        #search for books by title
        @books = @books.where("title LIKE ?", "%#{params[:title]}%") if params[:title].present?
        render json: @books
    end
    def create
        @book = Book.new(book_params)
        if @book.save
            render json: @book
        else
            render json: @book.errors, status: :unprocessable_entity
        end
    end
  #display books and authors and reviews
  def show
    @book = Book.find(params[:id])
    render json: @book
    @reviews = Review.where(book_id: @book.id)
    @book_category = BookCategory.where(book_id: @book.id)
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      render json: @book
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :likes, :category_id)
  end
end
