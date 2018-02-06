class BooksController < ApplicationController
  before_action :authenticate_user! 
  
  def index
    @books = Book.paginate(:page => params[:page], :per_page => 10)
    
    @book = Book.new
  end
  
  def new
    @book = Book.new
  end

  def create
    @book = current_user.books.create(book_params)
    if @book.valid?
      redirect_to books_path
    else
      flash[:error] = "something went wrong!"
      render :new
    end
  end
  
  def show
    @book = Book.find(params[:id])
  end
  
  private
    def book_params
      params.require(:book).permit(:title, :author, :description, :cover_art)
    end
  
end
