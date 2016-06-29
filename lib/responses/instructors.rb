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

      INSTRUCTORS_AVAILABLE_RESPONSE ||= {  

        "elements" =>[
			{
				"id": 52,
		        "clubId":"38",
		        "employeeFirstName": "Agatha",
		        "employeeLastName": "Strickland",
		        "employeeId": "6456",
	            "startDate": "2016-05-24T09:30:00",
				"endDate": "2016-05-24T11:30:00"	        
			},
			{
				"id": 52,
		        "clubId":"38",
		        "employeeFirstName": "Agatha",
		        "employeeLastName": "Strickland",
		        "employeeId": "6456",
	            "startDate": "2016-05-24T12:30:00",
				"endDate": "2016-05-24T19:30:00"	        
			}              
        ]     
      }

		INSTRUCTORS_SHEDULER_RESPONSE ||= {  

        "elements" =>[
			{
				"id": 52,
		        "clubId":"38",
		        "employeeFirstName": "Agatha",
		        "employeeLastName": "Strickland",
		        "employeeId": "6456",
	            "startDate": "2016-05-24T09:30:00",
				"endDate": "2016-05-24T11:30:00"	        
			},
			{
				"id": 52,
		        "clubId":"38",
		        "employeeFirstName": "Agatha",
		        "employeeLastName": "Strickland",
		        "employeeId": "6456",
	            "startDate": "2016-05-24T12:30:00",
				"endDate": "2016-05-24T19:30:00"	        
			}              
        ]      

      }            
      
    end
  end
end
