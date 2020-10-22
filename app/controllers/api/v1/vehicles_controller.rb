class Api::V1::VehiclesController < ApplicationController
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
        #Refatorar essa parte
    end
    # DELETE /api/v1/vehicles/1
    def destroy
        @vehicle = Veiculo.find(params[:id])
        @vehicle.destroy
        render json: @vehicle
    end
    # PUT /api/v1/vehicles/1
    def update
        @vehicle = Veiculo.find(params[:id])
        @vehicle.update(vehicle_params)
        render json: @vehicle
    end
end
    private
        
        def vehicle_params
            params.require(:vehicle).permit(:marca, :veiculo, :ano, :description, :vendido)
        end
    

