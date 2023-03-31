class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :update, :index,:show]

  # GET /users
  def index
    @users = User.all
    render json: @users
  end

  # GET /users/:id
 def show
  token = request.headers['Authorization'].split(' ')[1] # extract JWT token from header
  decoded_token = decode_token(token)

  if decoded_token && decoded_token['user_id'] == params[:id].to_i
    @user = User.find(params[:id])
    render json: @user
  else
    render json: { error: 'Unauthorized' }, status: :unauthorized
  end
end




<<<<<<< HEAD
<<<<<<< HEAD
  # POST /users
   def create
    user = User.create(user_params)
    if user.valid?
      user.save
      render json: { user: user }, status: :created
    else
      render json: { error: user.errors.full_messages.join(', ') }, status: :unprocessable_entity
=======
=======
>>>>>>> 6f34c4f66bac2975508adc1cfb908e3df1a5f814
 #  POST /user
    def create
        user = User.create(user_params)
        if user.valid?
            render json: { "success": "User saved successfully!"}, status: :created
        else
            render json: {"errors": ["Validation errors"]}, status: :unprocessable_entity
        end
<<<<<<< HEAD
>>>>>>> 2373101bbad9c0a36ea663304f0052de428ba56b
=======

>>>>>>> 6f34c4f66bac2975508adc1cfb908e3df1a5f814
    end

  # PATCH/PUT /users/1
   
  

def update
  user = User.find(params[:id])
  if user
    user.update(user_params)
    render json: user, status: :accepted
  else
    render json: {error:"Unable to update user"}, status: :unprocessable_entity
  end
end

  # DELETE /users/:id
  def destroy
    user = User.find(params[:id])
    user.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.permit(:first_name, :last_name, :phone, :email,:level, :image)
    end
  

 def decode_token(token)
  begin
    JWT.decode(token, 'my_s3cr3t', true, algorithm: 'HS256')[0]
  rescue JWT::DecodeError
    nil
  end
end
end
