class Users::LearnsController < ApplicationController

	def index
		@learns = Learn.all
	end

	def show
		@learn = Learn.find(params[:id])
	end
end
