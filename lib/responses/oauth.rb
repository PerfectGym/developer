require_relative 'user'

module GitHub
  module Resources
    module Responses
      OAUTH_RESPONSE ||= {        
        "access_token" => "abcdefgh12345678",
        "token_type" => "bearer",
        "expires_in" => 7775999
                
      }

      # OAUTH_ACCESS_WITH_USER ||= OAUTH_ACCESS.merge(:user => USER)
    end
  end
end
