class Api::V1::VehiclesController < ApplicationController
    before_action :set_vehicle, only: [:update, :destroy]
    # GET /api/v1/vehicles
    def index
        @vehicles = Veiculo.all
        render json: @vehicles
    end

    # GET /api/v1/vehicles/2
    def show
        @vehicle = Veiculo.find(params[:id])
        render json: @vehicle
    end   

    # POST /api/v1/vehicles
    def create
       @vehicle = Veiculo.create(vehicle_params)
        render json:  @vehicle
       if @vehicle.save
           render json:  @vehicle
       else
         render json: @vehicle.errors, status: :unprocessable_entity
       end
     end
end

    private

        def set_vehicle
            @vehicle = Veiculo.find(params[:id])
        end
        
        def vehicle_params
            params.require(:vehicle).permit(:marca, :veiculo, :ano, :description, :vendido)
        end
    
end
