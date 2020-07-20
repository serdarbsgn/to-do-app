namespace :my_tasks do
require 'date'
value = {title: Date.today.to_s + " rake command" , description: "this todo is made by a rake command", date: Date.today , is_general: 0}

  desc "TODO"
  task task_create_daily: :environment do  
   value[:is_general] = 0
   @todo = Todo.create(value)
   @todo.save
  end
  
  desc "TODO"
  task task_create_general: :environment do
   value[:is_general] = 1
   @todo = Todo.create(value)
   @todo.save
  end

  desc "TODO"
  task task_delete_past: :environment do
  @todos = Todo.where( "date < ?" , Date.today.to_s )
  @todos.each do |t|
  puts t
  t.destroy
  end
  end

end
