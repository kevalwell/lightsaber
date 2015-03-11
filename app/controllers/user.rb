get '/user/:id' do
  @user = User.find(params[:id])
  @reviews = Review.where("user_id = #{params[:id]}")
  erb :'/user/home'
end

