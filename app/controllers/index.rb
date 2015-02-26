require 'sinatra'

get '/' do
  erb :index
  redirect '/login'
end

get '/applesauce' do
  erb :apple_sauce
end

get '/creamcheese' do
  erb :creamcheese
end

get '/bodybuilding' do
  erb :bodybuilding
end

get '/login'
	@user = User.create(params)
	erb :form
end
# get '/form' do
#   puts
#    @message = params["message"]
#   erb :form

# end

# get '/:name' do
#  @name = params[:name]
#  erb :name
# end




