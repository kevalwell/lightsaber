require 'sinatra'

get '/' do
  <<-HTML
<p>
Welcome to my LightSaber.  Prepare to be amazed.
<p>
<a href='/sound'>Hear my swooshy sound!</a>
  HTML
end

get '/sound' do
  <<-HTML
<audio controls>
  <source src="http://soundbible.com/grab.php?id=19&type=wav" type="audio/wav">
  <source src="http://soundbible.com/grab.php?id=19&type=mp3" type="audio/mpeg">
Your browser does not support the audio element.
</audio>
  HTML
end

get '/name' do

end

post '/name/:name' do
  erb :
end

put '/name/:name' do
  erb :
end

delete '/name/:name' do
  @User = User.find(params[:name])
  erb :
end

get '/password' do
  erb :
end

post '/password/:password' do
  @User = User.find(params[:password])
  erb :
end

put '/password/:password' do
  @User = User.find(params[:password])
  erb :
end

delete '/name/:name' do
  @User = User.find(params[:password])
  erb :
end
