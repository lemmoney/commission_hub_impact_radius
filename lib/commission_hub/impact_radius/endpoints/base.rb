module CommissionHub
  module ImpactRadius
    module Endpoints
      class Base < CommissionHub::Endpoint

        def call(request_params={})
          request_params = {
            basic_auth: {
              username: username,
              password: password
            } }.merge(request_params)
          connection.class.get(full_uri, request_params)
        end

        def username
          connection.settings.basic_auth_username
        end

        def password
          connection.settings.basic_auth_password
        end

      end
    end
  end
end


