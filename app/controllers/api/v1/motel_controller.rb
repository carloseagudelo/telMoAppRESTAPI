class Api::V1::MotelController < ApplicationController
	respond_to :json

	def index
        respond_with User.all
    end
end
