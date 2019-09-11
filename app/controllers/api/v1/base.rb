module API
  module V1
    class Base < Grape::API
      version 'v1', using: :path
      format :json


      mount API::V1::DumbEndpoints

      # swagger documentation is available at /api/v5/swagger_doc
      # in dev        : https://petstore.swagger.io/?url=http://localhost:3000/api/v1/swagger_doc
      add_swagger_documentation info: {
                                  title: "API v1",
                                  description: "not really useful now"
                                }

    end
  end
end