class PortraitsController < ApplicationController
	skip_before_action :authenticate_user!

	def new
		Portrait.new
	end

	def index
		@portraits = Portrait.all
	end

	def show 
		@portrait = Portrait.find(params[:id])
	end

	def create
	end

	def home
		@portraits = Portrait.all
	end
end
