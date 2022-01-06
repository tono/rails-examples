module Case1
  class UserSession < Authlogic::Session::Base
    authenticate_with User
  end
end
