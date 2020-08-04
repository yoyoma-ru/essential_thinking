class Admins::LearnsController < ApplicationController

	# before_action: set_learn, only
	def new
		@learn = Learn.new
	end

	def create
		learn = Learn.new(learn_params)
		if learn.save
			redirect_to admins_learns_path
		else
			redirect_to root_path
		end
	end

	def index
		@learns = Learn.all
	end

	def show
		@learn = Learn.find(params[:id])
	end

	def edit
		@learn = Learn.find(params[:id])
	end

	def update
		@learn = Learn.find(params[:id])
		if @learn.update(learn_params)
			redirect_to admins_learn_path(@learn.id)
		else
			redirect_to admins_learns_path
		end
	end

	def destroy
		@learn = Learn.find(params[:id])
		if @learn.destroy
			redirect_to admins_learns_path
		else
			redirect_to admins_learn_path(@learn.id)
		end
	end

	def destroy
	end

	private
	# def set_learn
	# 	@learn = Learn.find(params[:id])
	# end

	def learn_params
		params.require(:learn).permit(:part,
			                          :title,
			                          :subtitle,
			                          :explanation,
			                          :example_essential_thinking,
			                          :example_non_essential_thinking)
	end
end
