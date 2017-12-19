class BooksController < ApplicationController
  before_action :authenticate_user! 
  
  def index
    @books = current_user.books.order(:title)
  end
  
  def new
    @book = Book.new
  end
  
  def create
    current_user.book.create(book_params)
    redirect_to books_path
  end
  
  def show
    @book = Book.all
  end
  
  private
    def book_params
      params.require(:book).permit(:title, :author, :description, :cover_art)
    end
    
    
end
