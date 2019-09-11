require 'rails_helper'

RSpec.describe API::V1::DumbEndpoints, type: :request do

  it "get hello_world" do
    get "/api/v1/hello_world"
    expect(response.body).to eq({message: 'Hello world!'}.to_json)
  end

end