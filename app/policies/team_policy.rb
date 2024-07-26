class TeamPolicy < ApplicationPolicy
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
    @user.manager?
  end

  def new?
    @user.admin?
    @user.manager?
  end

  def update?
    @user.admin?
    @user.manager?
  end

  def edit?
    @user.admin?
    @user.manager?
  end

  def destroy?
    @user.admin?
    @user.manager?
  end

  class Scope < ApplicationPolicy::Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end
end
