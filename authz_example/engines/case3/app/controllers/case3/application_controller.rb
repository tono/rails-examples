module Case3
  class ApplicationController < ActionController::Base
    include Banken
    before_action :require_user
    before_action :authorize!, except: :index
    helper_method :logged_in?, :current_user_session, :current_user

    private

      def logged_in?
        current_user.present?
      end

      def current_user_session
        return @current_user_session if defined?(@current_user_session)
        @current_user_session = Case3::UserSession.find
      end

      def current_user
        return @current_user if defined?(@current_user)
        @current_user = current_user_session && current_user_session.user
      end

      def require_user
        unless current_user
          store_location
          redirect_to sign_in_path
        end
      end

      def require_no_user
        if current_user
          store_location
          redirect_to root_path
        end
      end

      def store_location
        session[:return_to] = request.url
      end

      def redirect_back_or_default(default)
        redirect_to(session[:return_to] || default)
        session[:return_to] = nil
      end
  end
end
