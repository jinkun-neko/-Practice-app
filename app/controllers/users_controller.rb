class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

   def user_params
      params.require(:book).permit(:name, :email, :picture)
   end
end
