class ChatroomPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    record.buddy_connection.user_1_id == user.id || record.buddy_connection.user_2_id == user.id
  end
end
