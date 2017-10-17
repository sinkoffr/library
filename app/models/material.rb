class Material < ApplicationRecord
    validates :title, :author, :description, presence: true
    
    def new
        @material = Material.new
    end
end
