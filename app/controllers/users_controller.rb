class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    # @user = User.new(user_params)
    @user = User.new

    @user.name = params[:user][:name]
    @user.age = params[:user][:age]
    @user.daily_goal = 30
    @user.time_eligible=false

    if @user.save

      # successfully saved the user, now save the companion record

      @parent = Parent.new
      @parent.name = params[:user][:parentName]
      @parent.email = params[:user][:parentEmail]
      @parent.user_id = @user.id

      if @parent.save
        render json: @parent, status: :created, location: @parent
        # render json: @user, status: :created, location: @user
      else
        render json: @parent.errors, status: :unprocessable_entity
      end
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:name, :age, :daily_goal, :time_eligible, :parentName, :parentEmail)
    end
end
