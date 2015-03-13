# require_relative 'spec_helper'

describe 'Review' do
  let(:user) {User.create(email: "testicus", password: "123")}

  it 'shoul bring render form to create new review' do
    get '/review/new'
    expect(last_response).to be_ok
  end

  it 'should create a message' do
    post '/review/new', params={comment: "The employee failed to achieve their purpose", rating:"2", store_name: "Duane Reade"}
    expect(last_response).to be_redirect
    follow_redirect!
    expect(last_response.body).to_include(params[:store_name])

  end
end
