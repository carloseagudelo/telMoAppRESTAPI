class Api::V1::MotelController < ApplicationController
	respond_to :json

	def index
        respond_with User.all
    end

    def show
    	@motel = User.find(params[:id])
    	if @motel.nil?
    		render json: null
    	else 
    		render json: @motel
    	end
    end

    def update
        @motel= User.find(params[:id])
        @motel.calification = params[:calification] 
        if @motel.update(motel_params)
            render json: @motel
        else
            render json: null
        end
    end


private

    def motel_params
      params.require(:motel).permit(:id, :email, :name, :description, :URL_WebPage, :URL_Video, :logo, :addres, :calification)
    end
end
