class TasksChannel < ApplicationCable::Channel
  def subscribed
    puts "User subscribed to TasksChannel"
    stream_for :doesn_matter
  end
end
