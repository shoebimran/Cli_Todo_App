# lib/tasks/cli_todos.rake
require 'json'

desc 'CLI Fetch and display the first 20 even records numbered TODOs in JSON format'
task :cli_todos do
  todos_data = []

  (1..20).each do |i|
    todo = {
      userId: 1,
      id: i*2,
      title: "delectus aut autem",
      completed: i.even?
    }
    todos_data << todo
  end
  
  puts JSON.pretty_generate(todos_data)
end
