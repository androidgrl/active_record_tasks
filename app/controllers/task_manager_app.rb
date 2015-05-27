class TaskManager < Sinatra::Base
  get '/tasks' do
    users = User.all
    statuses = Status.all
    erb :index, :locals => { :users => users, :statuses => statuses }
  end

  get '/statuses/:id' do |id|
    tasks = Task.where(status_id: id)
    erb :status, :locals => { :tasks => tasks }
  end
end
