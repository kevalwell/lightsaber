get '/review/new' do
    redirect '/authentication/login' if !session[:user_id]

  erb :'/review/new'
end

post '/review/new' do

  params[:user_id] = session[:user_id]
  @review = Review.create(params)
  erb :'review/view'

end

get '/review/:id' do
  @review = Review.find(params[:id])
  erb :'review/view'
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
  r.destroy
  redirect '/'
end
