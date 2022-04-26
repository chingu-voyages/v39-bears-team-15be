class AuthController < ApiController
    skip_before_action :authenticate_token!

    def login
      @token = Auth::UserAuthenticator.new(
        email: params[:email],
        password: params[:password]
      ).authenticate!

    raise ActiveRecord::RecordNotFound if !@token

      return @token
    end

    def signup
      @user = Auth::UserCreator.new(
        user_params: user_params,
      ).create!

      @user
    end

    def logout
      token = request.headers['Authorization']&.split(' ')&.last
      @token = JsonWebToken.destroy(token)
    end


    private

    def user_params
      params.permit(:first_name, :last_name, :email, :password, :password_confirmation, :address, :city)
    end
end
