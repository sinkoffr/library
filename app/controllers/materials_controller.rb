class MaterialsController < ApplicationController
  before_action :authenticate_user! 
  
  def index
  
    @materials = current_user.materials
    # @materials = Material.where(user_id: current_user.id)
  end
  
  def new
    @material = Material.new
    
  end
  
  def create
    current_user.materials.create(material_params)
    redirect_to materials_path
  end
  
  def show
    @material = Material.all
  end
  
  
  private
    def material_params
      params.require(:material).permit(:title, :author, :description, :cover_art)
    end
    
    
end
