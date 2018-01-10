class Book < ApplicationRecord
  validates :title, :author, :description, presence: true
  mount_uploader :cover_art, CoverartUploader
  belongs_to :user
  
  
  def new
      @book = Book.new
  end
  
  def index
     @book = Book.index
  end
  
  def show
    @book = Book.where(id: :book_id)
  end
  
end
