get '/review/new' do
    redirect '/authentication/login' if !session[:user_id]
  if request.xhr?
    erb :'/review/new', :layout => false
  else
    erb :'/review/new'
  end
end

post '/review/new' do

  params[:user_id] = session[:user_id]
  @review = Review.create(params)
  if request.xhr?
    erb :'/review/view', :layout => false
  else
    erb:'/review/view'
  end
end

get '/review/:id' do
  @review = Review.find(params[:id])
  erb :'review/view'
end

get '/review/:id/edit' do
  @review = Review.find(params[:id])
  @title = "Edit note #{params[:id]}"
  erb :'review/edit'
end

put '/review/:id/edit' do
  r = Review.find(params[:id])
  r.comment = params[:comment]
  if r.save
    {:r => r, :status => "success"}.to_json
  else
    {:r => r, :status => "failure"}.to_json
  end
  redirect '/'
end

get '/user/:user_id/review/:id/delete' do
  @user = User.find(params[:user_id])
  @review = Review.find(params[:id])
  @title = "Confirm deletion of Review #{params[:id]}"
  erb :delete
end

delete '/user/:user_id/review/:id/delete' do
  @user = User.find(params[:user_id])
  @reviews = Review.where("id = #{params[:id]}")
  r = Review.find(params[:id])
  if r.destroy
    {:r => r, :status => "success"}.to_json
  else
    {:r =>r, :status => "failure"}.to_json
  end
  redirect '/'
end
