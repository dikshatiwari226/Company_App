class StateController < ApplicationController
  
	def new
		
	end

  def index
  	@states = State.all
  end

  def create
  	@state = State.new(state_params)
  	if @state.save
  		redirect_to @state
		else
			render 'new'  		
  	end
  end

  def show
  	@state = State.find(params[:id])
  end

  def edit
  	@state = State.find(params[:id])
  end

  def update
  	@state = State.find(params[:id])
  	if @state.update(state_params)
  		redirect_to @state
		else
			render 'edit'  		
  	end
  end

  def destroy
  	@state = State.find(params[:id])
  	@state.destroy
  	redirect_to state_index_path
  end

  private
  def state_params
  	params.require(:state).permit(:state_name)
  end
end
