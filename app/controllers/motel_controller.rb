class MotelController < ApplicationController

	def index
		@motels = Motel.all
	end

	def motel_params
    	params.require(:motel).permit(:name, :description, :URL_WebPAge, :URL_Video, :prices, :type, :logo, :form_page, :city, :addres)
  	end

end
