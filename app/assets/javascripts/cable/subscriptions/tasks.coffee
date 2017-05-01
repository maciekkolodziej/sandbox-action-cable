console.log('Tasks.coffee included')
App.cable.subscriptions.create "TasksChannel",
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

flash = (element) ->
  element.style.color = 'red'
  setTimeout ( ->
    element.style.color = 'black'
  ), 2000
