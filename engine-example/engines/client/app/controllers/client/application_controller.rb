module Client
  class ApplicationController < ActionController::Base
    before_action :authenticate_store_user!
  end
end
