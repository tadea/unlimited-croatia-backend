class Api::V1::BeachesController < ApplicationController
    before_action :set_location

    def index
        @beaches = @location.beaches
        render json: @beaches
    end

    def show
        @beach = Beach.find(params[:id])
        render json: @beach
    end

    def create
        @beach = @location.beaches.new(beach_params)
        if @beach.save
           render json: @location
        else
           render json: {error: 'Error creating beach'}
        end
    end

    def destroy
    
        @beach = Beach.find(params["id"])
        @location = Location.find(@beach.location_id)
        @beach.destroy
        render json: @location
    end


    private
    def set_location
        @location = Location.find(params[:location_id])
    end

    def beach_params
        params.require(:beach).permit(:location_id, :name, :summary, :region, :image_url)
    end
end

