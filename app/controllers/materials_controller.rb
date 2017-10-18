class MaterialsController < ApplicationController
  
  
  def index
    @material = Material.all
  end
  
  def new
    @material = Material.new
  end
  
  def create
    @material = Material.create(material_params)
    
    redirect_to materials_index_path
  end
  
  def show
    @material = Material.all
  end
  
  
  private
    def material_params
      params.require(:material).permit(:title, :author, :description, :cover_art)
      
    end
end
