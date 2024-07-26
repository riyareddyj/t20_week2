class MaatchPolicy < ApplicationPolicy
  def index?
    @user.admin?
    @user.manager?
    @user.coach?
    @user.captain?
  end

  def show?
    @user.admin?
    @user.manager?
    @user.coach?
    @user.captain?
  end

  def create?
    @user.admin?
  end

  def new?
    @user.admin?
  end

  def update?
    @user.admin?
  end

  def edit?
    @user.admin?
  end

  def destroy?
    @user.admin?
  end


  class Scope < ApplicationPolicy::Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end
end
