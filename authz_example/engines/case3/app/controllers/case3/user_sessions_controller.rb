require_dependency "case3/application_controller"

module Case3
  class UserSessionsController < ApplicationController
    layout 'layouts/case3/sessions'
    skip_before_action :authorize!
    before_action :require_no_user, only: [:new, :create]
    skip_before_action :require_user, only: [:new, :create]

    def new
      @user_session = Case3::UserSession.new
    end

    def create
      @user_session = Case3::UserSession.new(user_session_params.to_h)
      if @user_session.save
        redirect_to root_path, notice: 'ログインに成功しました。'
      else
        render action: :new
      end
    end

    def destroy
      current_user_session.destroy
      redirect_to sign_in_path
    end

    private

      def user_session_params
        params.require(:user_session).permit(:email, :password, :remember_me)
      end
  end
end
