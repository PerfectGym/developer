module GitHub
  module Resources
    module Responses      

      INSTRUCTOR_AGATHA_STRICKLAND ||= {  
        
        "id": 52,
        "timestamp": 376826,
        "firstName": "Agatha",
        "lastName": "Strickland",
        "displayName": "Agatha Strickland",
        "email": "a.strickland@cyberbotics.com",
        "photoUrl": "",
        "sex": "Female",
        "rating" => {
          "rating": 4.7,
          "votesCount": 1234,
          "rankingSort": 3.3        
        },                                      
        "isActive": true,
        "isDeleted": false        
      }      

      
      INSTRUCTORS_RESPONSE ||= {  

        "elements" => INSTRUCTOR_AGATHA_STRICKLAND
      }      
      
    end
  end
end
