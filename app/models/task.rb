class Task < ApplicationRecord
  after_update :broadcast_update
  after_create :broadcast_update

  private

  def broadcast_update
    TasksChannel.broadcast_to(:doesn_matter, self)
  end
end
