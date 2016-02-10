class PractitionersController < ApplicationController
  include AdminHelper

  def index
    @practitioner = Practitioner.first
  end

  def contact
    @practitioner = Practitioner.first
    @hash = Gmaps4rails.build_markers(@practitioner) do |practitioner, marker|
      marker.lat practitioner.latitude
      marker.lng practitioner.longitude
      marker.picture({
        url: "#{view_context.image_path("map_marker.png") }",
                width: "64",
                height: "64"
          })
    end
  end

  def about
    @practitioner = Practitioner.first
  end

  def new
    if Practitioner.all.empty?
      @practitioner = Practitioner.new
    else
      redirect_to practitioners_path
    end
  end

  def create
    @practitioner = Practitioner.new(practitioner_params)
    if @practitioner.save
      flash[:notice] = "Your information has been saved."
      redirect_to practitioners_path
    else
      flash[:notice] = "There was an error. Please try again."
      render :new
    end
  end

  def edit
    if (Practitioner.all.length === 1) && admin?
      @practitioner = Practitioner.first
    else
      redirect_to practitioners_path
    end
  end

  def update
    @practitioner = Practitioner.first
    if @practitioner.update(practitioner_params)
      flash[:notice] = "Your information has been updated."
      redirect_to practitioners_path
    else
      flash[:notice] = "There was an error. Please try again."
      render :edit
    end
  end

  def destroy
    @practitioner = Practitioner.first
    @practitioner.destroy
  end

  private
  def practitioner_params
    params.require(:practitioner).permit(:name, :bio, :address, :phone, :email, :attached_image, :body, :logo, :background_image, :appointment_info, :current_news, :delete_logo, :delete_attached_image, :delete_background_image)
  end
end
