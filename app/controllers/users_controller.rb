class UsersController < ApiController

    def show
        @user = User.find(params[id]);
    end

    def update
        Users::UserUpdater.new(user_params: user_params).update!
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :city, :address)
    end
end
