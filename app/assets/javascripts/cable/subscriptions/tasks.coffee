console.log('Tasks.coffee included')
App.tasksChannel = App.cable.subscriptions.create "TasksChannel",
  received: (data) ->
    task = document.getElementById("task_" + data.id)
    if(task?)
      task.innerText = data.name
      flash(task)
    else
      list = document.getElementById("tasks-list")
      item = document.createElement("li")
      item.innerText = data.name
      item.id = "task_" + data.id
      list.appendChild(item)
      flash(item)

document.getElementById("new-task-form").onsubmit = (e) ->
  e.preventDefault()
  name = document.getElementById("new-task-name")
  App.tasksChannel.send({ val: name.value })
  name.value = null

flash = (element) ->
  element.style.color = 'red'
  setTimeout ( ->
    element.style.color = 'black'
  ), 2000
