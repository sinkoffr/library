class BooksController < ApplicationController
  before_action :authenticate_user! 
  
  def index
    @books = current_user.books.order(:title)
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
  
  def google_api_search
    books = GoogleBooks.get_by_title(params[:search])
    render json: books["items"].map{ |book| book["volumeInfo"] }
  end
  
  private
    def book_params
      params.require(:book).permit(:title, :author, :description, :cover_art)
    end
  
end
