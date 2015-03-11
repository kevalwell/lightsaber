get '/employee/new' do
    redirect '/authentication/login' if !session[:user_id]

  if request.xhr?
    erb :'/employee/new', :layout => false
  else
    erb:'/employee/new'
  end
end

post '/employee/new' do

  params[:user_id] = session[:user_id]
  @employee = Employee.create(params)

  if request.xhr?
    erb :'/employee/view', :layout => false
  else
    erb:'/employee/view'
  end

end

get '/employee/:id' do
  @employee = Employee.find(params[:id])
  erb :'employee/view'
end

get '/employee/:id/edit' do
  @employee = Employee.find(params[:id])
  @title = "Edit note #{params[:id]}"
  erb :'employee/edit'
end

put '/employee/:id/edit' do
  e = Employee.find(params[:id])
  e.comment = params[:comment]
  e.save

  redirect '/'
end

get '/user/:user_id/employee/:id/delete' do
  @user = User.find(params[:user_id])
  @employee = Employee.find(params[:id])
  @title = "Confirm deletion of employee #{params[:id]}"
  erb :'/employee/delete'
end

delete '/user/:user_id/employee/:id/delete' do
  @user = User.find(params[:user_id])
  @employee = Employee.find(params[:id])
  e = Employee.find(params[:id])
  e.destroy
  redirect '/'
end
