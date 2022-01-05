module Admin
  class ApplicationController < ActionController::Base
    before_action :authenticate_admin!

    def authenticate_admin!
      pp warden
    end
  end
end
