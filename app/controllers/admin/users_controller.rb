class Admin::UsersController < Admin::BaseController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.paginate(page: params[:page])
    respond_with(@users)
  end

  def show
    respond_with(@user)
  end

  def new
    @user = User.new
    respond_with([:admin, @user])
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.save
      respond_with([:admin, @user])
    else
      render :new
    end
  end

  def update
    if @user.update(user_params)
      respond_with([:admin, @user])
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    respond_with([:admin, @user])
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :roles)
  end
end
