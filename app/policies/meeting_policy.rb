class MeetingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def update?
    run = Run.find(record.run_id)
    return record.user_id == user.id || run.user_id == user.id
  end
end
