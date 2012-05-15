ToDo::Application.routes.draw do
  root :to => 'todo_list#list'
  
  match "/fetch_tasks" => "todo_list#fetch_tasks"
  
end
