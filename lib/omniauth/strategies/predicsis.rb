module OmniAuth
  module Strategies
    class Predicsis < OmniAuth::Strategies::OAuth2
      option :name, :predicsis

      option :client_options, {
        :site => "http://id.predicsis.io",
        :authorize_path => "/oauth/authorize"
      }

      uid do
        raw_info["id"]
      end

      info do
        {
          :email => raw_info["email"]
        }
      end

      def raw_info
        @raw_info ||= access_token.get('http://api.predicsis.io/users/me').parsed
      end
    end
  end
end
