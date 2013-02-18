class ConfessionsController < ApplicationController

	def create
		Confession.create(params[:confession])
	end

	def index
		@confessions = Confession.last(20)
		render json: @confessions
	end

end
