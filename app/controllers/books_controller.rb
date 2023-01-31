class BooksController < ApplicationController
  
  
  def create
    @book = Book.new(book_params)
    @book.save
  end
  
  def index
    @books = Book.all
    @book = Book.new
    redirect_to books_path
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
