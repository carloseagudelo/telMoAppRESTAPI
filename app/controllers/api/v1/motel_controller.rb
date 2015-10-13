class Api::V1::MotelController < ApplicationController
	respond_to :json

	def index
        respond_with Motel.all
    end
end
