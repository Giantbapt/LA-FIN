class PortraitsController < ApplicationController
	skip_before_action :authenticate_user!

	def new
		Portrait.new
	end

	def index
		@portraits = Portrait.all.order(:numéro)
	end

	def show
		# @next = Portrait.find(params[:id])
		@portraits = Portrait.all.order(:numéro)
		@portrait = Portrait.friendly.find(params[:id])
	end

	def image
		@portrait = Portrait.find(params[:id])
	end

	def create
	end

	def home
		@portraits = Portrait.all
	end

	private

  def portrait_params
    params.require(:portrait).permit(:id, :titre, :numéro)
  end
end
