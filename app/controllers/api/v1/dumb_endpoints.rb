module API
  module V1
    class DumbEndpoints < Grape::API

      desc 'Get a json message', {
        success: { code: 200 }
      }
      get 'hello_world' do
        { message: "Hello world!"}
      end
    end
  end
end