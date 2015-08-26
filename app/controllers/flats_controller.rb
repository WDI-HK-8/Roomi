class FlatsController < ApplicationController

  def index
    @flats = Flat.all
  end


  def create
    @flat = Flat.new(flat_params)

    if @flat.save
      # render success in Jbuilder
    else
      render json: { message: "400 Bad Request" }, status: :bad_request
    end
  end

  def update
    @flat = Flat.find_by_id(params[:id])

    if @flat.nil?
      render json: { message: "Cannot find flat" }, status: :not_found
    else
      @flat.update(flat_params)
    end
  end

  def show
    @flat = Flat.find_by_id(params[:id])

    if @flat.nil?
      render json: { message: "Cannot find flat" }, status: :not_found
    end
  end

  def destroy
    @flat = Flat.find_by_id(params[:id])

    if @flat.nil?
      render json: { message: "Cannot find flat" }, status: :not_found
    else
      if @flat.destroy
        render json: { message: "Successfully deleted" }, status: :no_content
      else
        render json: { message: "Unsuccessfully deleted" }, status: :bad_request 
      end
    end
  end

  private

  def flat_params
    params.require(:flat).permit(:building_number, :building_street_name, :building_district_name, :building_type, :buiding_have_elevator, :property_floor, :property_nbr_of_rooms, :property_nbr_of_bathrooms, :property_can_smoke, :property_have_wifi, :are_pets_allowed, :room_rent_amount, :room_date_available, :room_preference, :room_no_beds, :room_type_bed, :is_room_furnished, :room_bathroom, :room_description)
  end

end
