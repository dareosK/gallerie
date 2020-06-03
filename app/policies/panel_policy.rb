class PanelPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    record.show.user == user # checks if the user of the show == is the current user.
  end

  def edit?
    record.show.user == user # checks if the user of the show == is the current user.
  end

  def update?
    record.show.user == user # checks if the user of the show == is the current user.
  end

  def destroy?
    record.show.user == user # checks if the user of the show == is the current user.
  end
end
