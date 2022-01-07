module Case3
  class TasksLoyalty < ApplicationLoyalty
    def index?
      true
    end

    def show?
      true
    end

    def create?
      true
    end

    def update?
      true
    end

    def destroy?
      user.admin?
    end
  end
end
