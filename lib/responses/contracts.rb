require_relative 'memberships'
require_relative 'paymentplans'
require_relative 'user'


module GitHub
  module Resources
    module Responses      

      
      CONTRACTS_RESPONSE ||= {  

        "elements" => [                              
          {
            "id": 10358,
            "timestamp": 350287,
            "signUpDate": "2016-01-26T00:00:00",
            "startDate": "2016-01-26T00:00:00",
            "cancelDate": "",
            "endDate": "",
            "isActive": true,
            "isDeleted": false
          },          
        ]              
      }      

      CONTRACT_RESPONSE ||= {

        "elements" => [
           {
            "id": 10358,
            "timestamp": 350287,
            "signUpDate": "2016-01-26T00:00:00",
            "startDate": "2016-01-26T00:00:00",
            "cancelDate": "",
            "endDate": "",
            "membership" => MEMBERSHIP_OPEN,
            "paymentPlan" => PAYMENTPLAN_OPEN24M,  
            "discounts" => [
              DISCOUNT
            ],          
            "isActive": true,
            "isDeleted": false
          }
        ]        
      }   
    end
  end
end
