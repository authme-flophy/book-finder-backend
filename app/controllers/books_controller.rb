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
  #associate books with book categories if id is nill render error 404 error
  def show
    books = Book.find(params[:id])
    if books
      render json: books
    else
      render_404
    end
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
