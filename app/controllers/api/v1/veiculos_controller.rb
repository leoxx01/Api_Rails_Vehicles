class Api::V1::VeiculosController < ApplicationController

    # GET /api/v1/veiculos
    def index
        begin
            @vehicles = Veiculo.all
            render json: @vehicles
        rescue => e
            render json: {msg:e.message}
        end
    end
    
    # GET /api/v1/veiculos/:id
    def show
        begin
            @vehicle = Veiculo.find(params[:id])
            render json: @vehicle
        rescue => e
            render json: {status: 204, message:"Carro não encontrado"}
        end
    end   
    
    # POST /api/v1/veiculos
    def create
        begin
            @vehicle = Veiculo.create(vehicle_params)
            render json:  @vehicle
        rescue => e
            render json: {msg: e.message}
        end
    end

    # DELETE /api/v1/veiculos/:id
    def destroy
        begin
            @vehicle = Veiculo.find(params[:id])
            @vehicle.destroy
            render json: @vehicle
        rescue => e
            render json:{msg:"ID inexistente"}
        end
    end
        
    # PUT /api/v1/veiculos/:id
    def update
        begin
            @vehicle = Veiculo.find(params[:id])
            @vehicle.update(vehicle_params)
            render json: @vehicle
        rescue => e
            render json:{msg: e.message}
        end
    end

end
    private
        def vehicle_params
            params.require(:veiculo).permit(:marca,:veiculo,:ano,:description,:vendido)
        end
        
    
    

