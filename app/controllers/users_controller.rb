class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  before_action :require_user_logged_in, only: [:index, :show]

  # GET /users/1
  # GET /users/1.json
  
  def index
    @users = User.all
  end
  
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end


  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    
      if @user.save
      flash[:success] = 'ユーザを登録しました。'
      redirect_to @user
      else
      flash.now[:danger] = 'ユーザの登録に失敗しました。'
      render :new
      end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_digest)
    end
end
