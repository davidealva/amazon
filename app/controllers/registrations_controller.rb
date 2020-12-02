class RegistrationsController < Devise::RegistrationsController
    protected

    def after_sign_up_path_for(resource)
        new_account_path(current_user.account)
    end
end