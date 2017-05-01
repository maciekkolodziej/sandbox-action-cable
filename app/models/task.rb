class Task < ApplicationRecord
  after_commit :broadcast_update

  private

  def broadcast_update
    TasksChannel.broadcast_to(:doesn_matter, self)
  end
end
