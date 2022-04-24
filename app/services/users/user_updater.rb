module Users
    class UserUpdater
        def update!
           @current_user.update(user: user_params);
        end
    end
end
