class Api::V1::TripsController < ApplicationController
  def index
    render json: TripSerializer.new(Trip.all)
  end

  def show
    trip = Trip.find(params[:id])
    options = {include: [:trip_events]} 
    render json: TripSerializer.new(trip, options)
  end
  
  def create
    # if params[:trip][:city] != "" && params[:trip][:country] != "" && params[:trip][:postcode] != ""
    #   city_info = CityFacade.get_city_info(params[:trip][:city], params[:trip][:country], params[:trip][:postcode])
    #   @restaurants = CityFacade.get_restaurant_info(city_info.place_id)
    #   # @attractions = CityFacade.get_tourist_attraction_info(city_info.place_id)
    #   @place_id = city_info.place_id
    #   image = FlickrFacade.get_city_image(params[:trip][:city], params[:trip][:country])
    #   @url = image.url
    #   trip = Trip.create!(trip_params)
    #   @restaurants.each do |restaurant|
    #     TripEvent.create!(trip_id: trip.id, event_id: restaurant.place_id, name: restaurant.name, address: restaurant.address)
    #   end
   
    #   # TripAttendee.create!()
        
    #   # @attractions.each do |attraction|
    #   #   Attraction.create!(trip_id: trip.id, event_id: attraction.place_id, name: attraction.name, address: attraction.address)
    #   # end
    #   render json: TripSerializer.new(trip), status: :created
    # else
    #   render json: ErrorSerializer.no_matches_found
    # end
  end

  def update
    trip = Trip.find(params[:id])
    trip.update!(trip_params)
    render json: TripSerializer.new(trip)
  end

  def destroy
    trip = Trip.find(params[:id])
    trip.destroy!
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :city, :country, :postcode, :start_date, :end_date).merge(place_id: @place_id, image_url: @url)
  end
end