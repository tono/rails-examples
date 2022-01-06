module Case2
  class UserSession < Authlogic::Session::Base
    authenticate_with User
  end
end
