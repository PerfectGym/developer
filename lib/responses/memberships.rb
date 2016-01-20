


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

      MEMBERSHIPSINCLUB_RESPONSE ||= {        
        
        "elemenst" => [
                  
          MEMBERSHIP_EARLYBIRD,
          MEMBERSHIP_OPEN
        ]        
      }            
    end
  end
end
