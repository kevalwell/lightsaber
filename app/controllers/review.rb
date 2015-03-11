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
