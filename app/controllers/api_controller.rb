class ApiController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found_error
    rescue_from ActiveRecord::RecordInvalid, with: :invalid_error
    rescue_from ActiveRecord::Validations, with: :validation_error

    before_action :set_default_format
    before_action :authenticate_token!


    private

    def set_default_format
        request.format = :json
    end

    def authenticate_token!
        payload = JsonWebToken.decode(auth_token)
        @current_user = User.find(payload["user_id"])
    rescue JWT::ExpiredSignature
        render json: {errors: ["Auth token has expired"]}, status: :unauthorized
    rescue JWT::DecodeError
        render json: {errors: ["Invalid auth token"]}, status: :unauthorized
    end

    def auth_token
        @auth_token ||= requestheaders.fetch("Authorization", "").split(" ").last
    end

    def invalid_error(e)
        render json: { errors: [e.message] }, status: 422
    end

    def not_found_error
        render json: {errors: ["Invalid email or password"]}, status: 404
    end

    def validation_error
        render json: { errors: [@user.errors.full_messages] }, status: 409
    end
end
