class BoatsController < ApplicationController

  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def new
    @boat = Boat.new
  end

  def create
      @boat = Boat.new(boat_params)
      if @boat.save
        flash[:notice] = "Boat listing saved successfully."
        redirect_to boat_path(@boat)
      else
        flash[:notice] = "Please try again"
        redirect_to new_boat_path
      end
  end

  # def edit
  #   @release = Release.find(params[:id])
  #   @genre_collection = Genre.all
  # end
  #
  # def update
  #   @release = Release.find(params[:id])
  #   if @release.update(release_params)
  #     flash[:notice] = "Release successfully updated"
  #     redirect_to release_path(@release)
  #   else
  #     @genre_collection = Genre.all
  #     render :edit
  #   end
  # end
  #
  # def destroy
  #     release = Release.find(params[:id])
  #     destroy_release(release)
  #     flash[:notice] = "Release successfully deleted"
  #     redirect_to root_path
  # end

  private

  def boat_params
    params.require(:boat).permit(
      :boat_year,
      :boat_make,
      :boat_model,
      :engine_year,
      :engine_make,
      :engine_model,
      :engine_hours,
      :length,
      :photo,
      :video,
      :description,
    )
  end
end
