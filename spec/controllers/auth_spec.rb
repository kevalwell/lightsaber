require_relative '../spec_helper.rb'


describe 'auth controller'  do
  let(:user) {User.create(email: "testing", password: "testing")}

describe 'GET /authentication/signup' do
  it 'should render page signup' do
    get '/authentication/signup'
    expect(last_response).to be_ok
  end
end

it 'should respond to the login page' do
    get '/authentication/login'
    expect(last_response).to be_ok
  end

  it 'should respond to the signup page' do
    get '/authentication/signup'
    expect(last_response).to be_ok

it 'should respond to the login page' do
    get 'authentication/login'
    expect(last_response).to be_ok
  end

describe 'POST /authentication/signup' do
  it 'should register a user' do
    post '/authentication/register_user', params = {user:{email: "Testpassing", password: "testicus"}}
    expect(last_response).to be_redirect
    follow_redirect!
    last_response.path.should == "/"
  end
end

describe 'GET /authentication/logout' do
  it 'should log out user' do
    get '/authentication/logout'
    expect(last_response).to be_redirect
    follow_redirect!
    last_response.path.should == '/'
  end
end
 it 'should log in existing user' do
    post '/authentication/login', params={user:{email: "Testorian", password: "543"}
    expect(last_response).to be_redirect
    follow_redirect!
    puts last_response.body
    expect(last_response.body).to include 'Reviews'
  end

end

















end
