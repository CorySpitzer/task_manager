require('sinatra')
require('sinatra/reloader')
require('./lib/task')
also_reload('lib/*.rb')

get('/') do
  @tasks = Task.all
  erb(:index)
end

get('/clear') do
  Task.clear
  redirect to('/')
end

post('/success') do
  description = params.fetch('task-description')
  @task = Task.new(description).save
  erb(:success)
end
