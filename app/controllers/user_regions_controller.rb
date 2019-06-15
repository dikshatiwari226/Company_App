class UserRegionsController < ApplicationController

	def new
		
	end

	def index
		@user_regions = UserRegion.all
	end

	def create
		@user_region = UserRegion.new(user_region_params)
		if @user_region.save
			redirect_to @user_region
		else
			render 'new'
		end
	end

	def show
		@user_region = UserRegion.find(params[:id])
	end
	
	def edit
		@user_region = UserRegion.find(params[:id])
	end

	def update
		@user_region = UserRegion.find(params[:id])
		@user_region.update(user_region_params)

		redirect_to user_regions_path
	end

	def destroy
		@user_region = UserRegion.find(params[:id])
		@user_region.destroy

		redirect_to user_regions_path
	end

	private 
	def user_region_params
		params.require(:user_region ).permit(:user_id, :region_id)
	end
end
