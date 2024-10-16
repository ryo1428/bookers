class BooksController < ApplicationController
  
  def top
    
  end
  
  def index
    @book = Book.new
    @books = Book.all
  end
  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/books/:id'
  end
  
  def show
    @book = Book.find(params[:id])
  end 
  
  def edit
    @book = Book.find(params[:id])
  end 
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end