require_relative 'clubs'
require_relative 'paymentplans'


module GitHub
  module Resources
    module Responses

      MEMBERSHIP_WEEKEND ||= {        
        
        "id": 6,
        "timestamp": 167179,
        "name": "Weekend",
        "isActive": true,
        "isDeleted": false   
      }          

      MEMBERSHIP_LUNCH ||= {        
        
        "id": 2,
        "timestamp": 167181,
        "name": "Lunch",
        "isActive": true,
        "isDeleted": false   
      }


      MEMBERSHIP_EARLYBIRD ||= {        
        
        "id": 9,
        "timestamp": 188113,
        "name": "Early Bird ",
        "isActive": true,
        "isDeleted": false    
      }

      MEMBERSHIP_OPEN ||= {        
        
        "id": 1,
        "timestamp": 349423,
        "name": "Open",
        "isActive": true,
        "isDeleted": false    
      }


      MEMBERSHIPS_RESPONSE ||= {        
        
        "elemenst" => [

          MEMBERSHIP_WEEKEND,
          MEMBERSHIP_LUNCH,
          MEMBERSHIP_EARLYBIRD,
          MEMBERSHIP_OPEN
        ]        
      }  


      MEMBERSHIPDETAILS_RESPONSE ||= {

        "elemenst" => [

          "startDate": '2015-01-01T00:00:00',
          "endDate": '2016-12-31T23:59:59',
          "accessRules": [
            {
              "id": 18,
              "timestamp": 280591,
              "name": "Access rule",
              "description": "",
              "allowedClubs": [
                CLUB_CYBERBOTIX, 
                CLUB_MONACO            
              ],
              "allowedZoneTypes": [               
                CLUBZONE_SPA,
                CLUBZONE_GYM,
                CLUBZONE_CAFETERIA
              ]
            }
          ],      
          "paymentPlans": [
            PAYMENTPLAN_HIGH5FULL3M,
            PAYMENTPLAN_HIGH5FULL6M,
            PAYMENTPLAN_HIGH5FULL12M,
            PAYMENTPLAN_HIGH5FULL24M            
          ],
          "id": 20,
          "timestamp": 280599,
          "name": "High5 Full",
          "isActive": true,
          "isDeleted": false
        ]
      }
       

      MEMBERSHIPSINCLUB_RESPONSE ||= {        
        
        "elemenst" => [
                  
          MEMBERSHIP_EARLYBIRD,
          MEMBERSHIP_OPEN
        ]        
      }            
    end
  end
end
