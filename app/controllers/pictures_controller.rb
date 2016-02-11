class PicturesController < ApplicationController
  include AdminHelper

  def index
    if admin?
      @pictures = Picture.order(:name)
    else
      redirect_to practitioners_path
    end
  end

  def new
    if admin?
      @picture = Picture.new
    else
      redirect_to practitioners_path
    end
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      flash[:notice] = "Your picture has been saved."
      redirect_to pictures_path
    else
      flash[:notice] = "There was an error. Please try again."
      render :new
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to pictures_path
  end

  private
  def picture_params
    params.require(:picture).permit(:name, :markdown_image, :alt_text)
  end
end
