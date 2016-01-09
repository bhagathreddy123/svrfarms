class PropertiesController < ApplicationController
 before_action :authenticate_admin!
 before_action :set_property, :except => [:index,:new,:create]

  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
   1.times{@property.images.build}
  end

  def create
    @property = Property.new(property_params)
    1.times{@property.images.build} if @property.images.blank?
    if @property.save
      redirect_to properties_path
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @property.update(property_params)
      redirect_to properties_path
    else
      render :edit
    end
  end

  def show

  end

  def destroy
    @property.destroy
    redirect_to properties_path
  end


  private

  def set_property
    @property = Property.find(params[:id])
  end

  def property_params
    params.require(:property).permit!
  end

end
