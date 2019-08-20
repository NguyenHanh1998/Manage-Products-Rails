module SessionHelper

    def log_in admin
        session[:user_id] = admin.id
    end

    def log_out
        session.delete :user_id
    end
end
