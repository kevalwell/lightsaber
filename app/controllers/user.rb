get '/user/:id' do
  @user = User.find(params[:id])
  @reviews = Review.where("user_id = #{params[:id]}")
  @employees = Employee.all
  erb :'/user/home'
end

