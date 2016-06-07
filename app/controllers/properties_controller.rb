class PropertiesController < ApplicationController

  def index
    @properties = Property.all
  end

private
  def property_params
    params.require(:property).permit(:title, :description, :price,
                                     :image, :city, :state, :category_id)
  end

end
