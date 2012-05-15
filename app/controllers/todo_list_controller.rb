class TodoListController < ApplicationController
  def list
    
  end

  def fetch_tasks
    tasks = Task.find_all_by_new_task(false)
    
    render :json => ActiveSupport::JSON.encode(tasks)
  end

  def save_tasks
    tasks = ActiveSupport::JSON.decode(params[:tasks])
    
    tasks["tasks"].each do |task|
      db_task = Task.find(task["id"])
      db_task.description = task["description"]
      db_task.employee = task["employee"]
      db_task.deadline = task["deadline"]
      db_task.new_task = false
      db_task.save
    end
    
    render :text => "jeba"
  end

  def fetch_new_task_id
    task = Task.new
    task.new_task = true
    task.save
    
    render :text => task.id
  end
end
