class ServicesController < ApplicationController
  include AdminHelper

  def index
    @services = Service.order(:order)
  end

  def new
    if admin?
      @service = Service.new
    else
      redirect_to new_practitioner_path
    end
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      flash[:notice] = "Your service has been added."
      redirect_to services_path
    else
      flash[:notice] = "Please try again."
      render :new
    end
  end

  def edit
    if admin?
      @service = Service.find(params[:id])
    end
  end

  def update
    @service = Service.find(params[:id])
    if @service.update(service_params)
      flash[:notice] = "Your service has been updated."
      redirect_to services_path
    else
      flash[:notice] = "Please try again."
      render :edit
    end
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    redirect_to services_path
  end

  private
  def service_params
    params.require(:service).permit(:name, :attached_image, :description, :duration, :cost, :order, :delete_image)
  end
end
