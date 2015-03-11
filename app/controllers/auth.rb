get '/' do
  if session[:user_id]
    @dreams = Dream.all
    erb :'review/user_page'
  else
    redirect '/login'
  end
end

get '/login' do
  erb :login
end

post '/login' do
  @user = User.find_by(email: params[:email])

  if @user || @user.try(:authenticate, params[:password])
    session[:user_id] = @user.id
    redirect "user_page/#{@user.id}"
  else
    redirect '/login'
  end
end

get '/signup' do
  erb :signup
end

post '/signup' do
  @user = User.create(params)
  session[:user_id] = @user.id
  redirect '/'
end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end
