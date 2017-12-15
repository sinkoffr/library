class Material < ApplicationRecord
    validates :title, :author, :description, presence: true
    belongs_to :user
    
    def new
        @material = Material.new
    end
    
    def index
       @item = Material.index
    end
end
