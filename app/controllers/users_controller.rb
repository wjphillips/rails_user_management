class UsersController < ApplicationController
	def index
		@users = User.all
	end
	def new
		@user = User.new
	end
	def create
		@user = User.new()
		@user[:first_name] = params[:user][:first_name]
		@user[:last_name] = params[:user][:last_name]
		@user[:email] = params[:user][:email]
		@user[:password] = params[:user][:password]
		@user.save
		@info = params[:user]
	end
	def show
		@user = User.find(params[:id])
	end
	def edit
		@user = User.find(params[:id])
	end
	def update
		@user = User.find(params[:id])
		@user[:first_name] = params[:user][:first_name]
		@user[:last_name] = params[:user][:last_name]
		@user[:email] = params[:user][:email]
		@user[:password] = params[:user][:password]
		@user.save
		redirect_to '/'
	end
	def delete
		@user = User.find(params[:id])
		@user.destroy
		redirect_to '/'
	end
end
