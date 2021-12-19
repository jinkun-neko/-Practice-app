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

  def create
    @user = User.new(user_params)    # 実装は終わっていないことに注意!
    if @user.save
      flash[:success] = "#{@user.name}さん、SHIORI アプリにようこそ ! "
      redirect_to @user
    else
      render 'new'
    end
  end

   def user_params
      params.require(:user).permit(:name, :email, :password,
      :password_confirmation, :picture)
   end
end
