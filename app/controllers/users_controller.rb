class UsersController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update]
  before_action :correct_user,   only: [:edit, :update]

    def show
      @user = User.find(params[:id])
    end

    def update
      if @user.update(user_params)
        flash[:success] = "アップデートしました。"
        redirect_to @user
      else
        render 'edit'
      end
    end

    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)  
      if @user.save
        log_in @user
        flash.now[:success] = "#{@user.name}さん、SHIORI アプリにようこそ ! "
        redirect_to @user
      else
        render 'new'
      end
    end

    def edit
      @user = User.find(params[:id])
    end

    private
    
   def user_params
      params.permit(:name, :email, :password,
      :password_confirmation, :picture)
   end

       # beforeアクション

    # ログイン済みユーザーかどうか確認
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    # 正しいユーザーかどうか確認
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
end
