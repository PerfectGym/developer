require_relative 'user'


module GitHub
  module Resources
    module Responses      

      CLUBS_RESPONSE ||= {  

        "elements" => [          
          {
            "id": 2,
            "timestamp": 271990,
            "name": "Club Poznan",
            "shortName": "Poznan",
            "symbol": "POZ",
            "type": "Normal",
            "isDeleted": false
          },
          {
            "id": 3,
            "timestamp": 255980,
            "name": "Club Cracow",
            "shortName": "Cracow",
            "symbol": "CRA",
            "type": "Normal",
            "isDeleted": false
          },                    
          {
            "id": 9,
            "timestamp": 255968,
            "name": "Club Monaco",
            "shortName": "Monaco",
            "symbol": "MON",
            "type": "Platinum",
            "isDeleted": false
          },                    
          {
            "id": 14,
            "timestamp": 256064,
            "name": "Club Moscow",
            "shortName": "Moscow",
            "symbol": "",
            "type": "Normal",
            "isDeleted": true
          },          
        ]              
      }      

      # USERCLASSES_RESPONSE ||= {      
        
      #   "elements" => [
      #     {
      #       "booked": true,
      #       "attended": true,
      #       "userClassRating": 5,
      #       "userInstructorRating": 4,  
      #       "classType" => {

      #           "id" => 4,
      #           "timestamp" => 263952,
      #           "name" => "Box",
      #           "description" => "Box perfectly combines cardio and strength training under the guise of groove!",
      #           "rating" => {
      #             "rating": 4.3,
      #             "votesCount": 1234,
      #             "rankingSort": 2.3                  
      #           }                
      #         },
      #       "instructor" => {          
      #         "id": 52,
      #         "timestamp": 376826,
      #         "firstName": "Agatha",
      #         "laastName": "Strickland",
      #         "rating" => {
      #           "rating": 4.7,
      #           "votesCount": 1234,
      #           "rankingSort": 3.3      
      #         }              
      #       },
      #       "club" => {
      #         "id": 2,
      #         "timestamp": 271990,
      #         "name": "Fibo Cyberbotics",
      #         "shortName": "Cyberbotics",
      #         "symbol": "FCBR"           
      #       },
      #       "id": 1677,
      #       "timestamp": 254718,
      #       "isDeleted": false,
      #       "startDate": "2015-12-03T06:15:00",
      #       "endDate": "2015-12-03T07:15:00",
      #       "attendeesCount": 7,
      #       "attendeesLimit": 20,
      #       "clubZone": "Fitness"
      #     }
      #   ]                        
      # }      
    end
  end
end
