desc "test"
require 'date'

task :inserttodo do 
   value = {title: "rake command" , description: "this todo is made by a rake command", date: Date.today.to_s , is_general: 0}
   @todo = Todo.create(value)
   @todo.save
end
