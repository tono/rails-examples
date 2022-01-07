require_dependency "case2/application_controller"

module Case2
  class HomeController < ApplicationController
    skip_authorize_resource

    def index
    end
  end
end
