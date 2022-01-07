module Case3
  class CategoriesLoyalty < ApplicationLoyalty
    def index?
      true
    end

    def show?
      true
    end

    def create?
      user.admin?
    end

    def update?
      user.admin?
    end

    def destroy?
      user.admin?
    end
  end
end
