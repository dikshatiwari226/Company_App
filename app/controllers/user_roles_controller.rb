class UserRolesController < ApplicationController

	def index
		@users = UserRole.all
	end

	def new
		
	end

	def create
		@user_role = UserRole.new(user_roles_params)
		if @user_role.save
			redirect_to @user_role
		else
			render 'new'
		end
	end

	def show
		@user = UserRole.find(params[:id])
	end

	def edit
		@user = UserRole.find(params[:id])
	end

	def update
		@user = UserRole.find(params[:id])
		if @user.update(user_roles_params)
			redirect_to @user
		else
			render 'edit'
		end
	end

	def destroy
		@user = UserRole.find(params[:id])
		@user.destroy

		redirect_to user_roles_path
	end

	private
	def user_roles_params
		params.require(:user_role).permit(:role_name)
	end
end
