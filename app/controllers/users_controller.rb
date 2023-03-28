class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

  # GET /users
  # def index
  #   @users = User.all
  #   render json: @users
  # end

  # GET /users/1
  def show
    @user = User.find(params[:id])
    if @user
    render json: @user
    else
      render json: {error: "User not found"}, status: :not_found
    end
  end

  # POST /users
   def create
    user = User.create(user_params)
    if user.valid?
      render json: { user: user }, status: :created
    else
      render json: { error: user.errors.full_messages.join(', ') }, status: :unprocessable_entity
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

    # Only allow a list of trusted parameters through.
    def user_params
      params.permit(:first_name, :last_name, :phone, :email, :password)
    end
end
