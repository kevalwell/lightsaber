get '/' do
  erb :index
end

get '/.json' do
  #content_type: json
  if params[:code] == "1234"
  {secret_user: 'East Philosophy'}.to_json
else
  403
  end
end

get '/login' do
  erb :login
end

post '/login' do
    email = params[:username]
  password = params[:password_digest]
@user = User.authenticate(params)

  if @user
    session[:user_id] = @user.id

    redirect '/secret_page'
  else
    redirect '/login'
  end
end

 post '/login.json' do
#   content_type :json

   email = params[:username]
   password = params[:password_digest]
   @user =User.authenticate(params)

   if @user
    session[:user_id] = @user.id
    @user.to_json
   else
    403
   end
 end

get '/guess' do
  erb :guess
end

