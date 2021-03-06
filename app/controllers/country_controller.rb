class CountryController < ApplicationController
	
	def index
		@countries = Country.all
		# @states = CS.states(params[:country])	
	end

	def new
		
	end

	def create
		@country = Country.new(country_params)
		if @country.save
			redirect_to @country
		else
			render 'new'			
		end
	end

	def show 
		@country = Country.find(params[:id])
	end

	def edit
		@country = Country.find(params[:id])
	end

	def update
		@country = Country.find(params[:id])
		if @country.update(country_params)
			redirect_to @country		
		else
			render 'edit'	
		end
	end

	def destroy
		@country = Country.find(params[:id])
		@country.destroy

		redirect_to country_index_path
	end

	def country_select
		@states = CS.states(params[:country_code])
		respond_to do |format|
       		format.js {  }
    	end
	end
	
	private	
	def country_params
		params.require(:country).permit(:country_name)
	end
end
