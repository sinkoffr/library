class Book < ApplicationRecord
    validates :title, :author, :description, presence: true
    belongs_to :user
    
    def new
        @book = Book.new
    end
    
    def index
       @item = Book.index
    end
end
