class TasksChannel < ApplicationCable::Channel
  def subscribed
    puts "User subscribed to TasksChannel"
    stream_for :doesn_matter
  end

  def receive(data)
    puts "Incoming data"
    puts data
    Task.create(name: data["val"])
  end
end
