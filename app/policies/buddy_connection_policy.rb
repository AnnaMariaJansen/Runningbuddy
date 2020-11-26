class BuddyConnectionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def destroy?
    record.user_1_id == user.id || record.user_2_id == user.id
  end
end
