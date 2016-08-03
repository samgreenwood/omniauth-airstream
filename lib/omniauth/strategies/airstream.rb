require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class AirStream < OmniAuth::Strategies::OAuth2

      option :client_options, {
                                :site => 'http://members.goonwood.wan',
                                :authorize_url => 'http://members.goonwood.wan/oauth/v2/auth',
                                :token_url => 'http://members.goonwood.wan/oauth/v2/token'
                            }

      uid { raw_info['uuid'] }

      info do
        {

            :name => raw_info['username'],
            :email => raw_info['email']
        }
      end

      extra do
        {
            'raw_info' => raw_info
        }
      end

      def raw_info

        @raw_info ||= access_token.get('/oauth/v2/tokeninfo').parsed

        puts raw_info
      end
    end
  end
end

OmniAuth.config.add_camelization 'airstream', 'AirStream'