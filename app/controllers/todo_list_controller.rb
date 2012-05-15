class TodoListController < ApplicationController
  def list
    
  end

  def fetch_tasks
    tasks = Task.all
    stringi = ""
    
    render :json => ActiveSupport::JSON.encode(tasks)
  end

  def save_tasks
    
  end

end
