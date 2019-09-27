class Api::V1::BeachesController < ApplicationController
    before_action :set_location

    def index
        @beaches = @location.beaches
        render json: @beaches
    end

    def show
        @beach = @location.beaches.new(beach_params)
        render json: @beach
    end

    def create
        @beach = Beach.new(beach_params)
        if @beach.save
           render json: @beach
        else
           render json: {error: 'Error creating beach'}
        end
    end

    def destroy
        
    end

    private
    def set_location
        @location = Location.find(params[:location_id])
    end

    def beach_params
        params.require(:beach).permit(:location_id, :name, :summary, :region, :image_url)
    end
end
end
