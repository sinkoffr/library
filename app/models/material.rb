class Material < ApplicationRecord
    validates :title, :author, :description, :cover_art, presence: true
    
    def new
        @material = Material.new
    end
end
