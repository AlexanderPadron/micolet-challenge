class UsersController < ApplicationController
  @root_url = "/users/index"

  layout 'application'

  add_flash_types :notice

  def index
    @users = User.new
  end

  def exist
  end

  def success
  end

  def create
    if User.exists?(email: params[:user][:email])
      redirect_to "/users/exist"
    else
      @users = User.new(user_params)
      if @users.save
        redirect_to "/send"
      else
        render :new
      end
    end
  end
  
  private
    def user_params
      params.require(:user).permit(:email, :women, :men, :children)
    end
end
