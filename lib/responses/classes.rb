require_relative 'instructors'
require_relative 'clubs'


module GitHub
  module Resources
    module Responses

      CLASSTYPE_BOX ||= {        
        
        "id" => 1,
        "timestamp" => 263952,
        "name" => "Box",
        "description" => "Box perfectly combines cardio and strength training under the guise of groove!",
        "rating" => {
          "rating": 4.1,
          "votesCount": 1234,
          "rankingSort": 2.3                        
        }                    
      }    

      CLASSTYPE_POWERYOGA ||= {        
        
        "id": 2,
        "timestamp": 382653,
        "name": "POWER JOGA",
        "description": "Power Yoga is definitely an intense workout that will make you sweat.",
        "rating" => {
          "rating": 4.1,
          "votesCount": 4321,
          "rankingSort": 4.3
        }                   
      }      


      CLASSTYPE_RESPONSE ||= {        
        
        "elements" => [
          CLASSTYPE_BOX,
          CLASSTYPE_POWERYOGA
        ]
      }      

      CLASSES_RESPONSE ||= {  

        "elements" => [
          {
            "classType" => CLASSTYPE_BOX,
            "instructor" => INSTRUCTOR_AGATHA_STRICKLAND,
            "club" => CLUB_CYBERBOTIX,
            "id": 1677,
            "timestamp": 254718,
            "isDeleted": false,
            "startDate": "2015-12-03T06:15:00",
            "endDate": "2015-12-03T07:15:00",
            "attendeesCount": 7,
            "attendeesLimit": 20,
            "clubZone": "Fitness"                
          }
        ]              
      }

      CLASSES_FIRST_PAGE_RESPONSE ||= {  

        "elements" => [          
          {
            "Elements omitted for clarity": "..." 
          },
          {            
            "id": 1677,
            "timestamp": 254718,
            "isDeleted": false,
            "startDate": "2015-12-03T06:15:00",
            "endDate": "2015-12-03T07:15:00",
            "attendeesCount": 7,
            "attendeesLimit": 20,
            "clubZone": "Fitness"                
          }
        ]              
      }

      CLASSES_SECOND_PAGE_RESPONSE ||= {  

        "elements" => [          
          {            
            "id": 2345,
            "timestamp": 366718,
            "isDeleted": false,
            "startDate": "2015-12-28T08:00:00",
            "endDate": "2015-12-28T09:00:00",
            "attendeesCount": 0,
            "attendeesLimit": 20,
            "clubZone": "Fitness"                
          }
        ]              
      }

      USERCLASSES_RESPONSE ||= {      
        
        "elements" => [
          {
            "booked": true,
            "attended": true,
            "userClassRating": 5,
            "userInstructorRating": 4,  
            "classType" => CLASSTYPE_BOX,
            "instructor" => INSTRUCTOR_AGATHA_STRICKLAND,
            "club" => CLUB_CYBERBOTIX,
            "id": 1677,
            "timestamp": 254718,
            "isDeleted": false,
            "startDate": "2015-12-03T06:15:00",
            "endDate": "2015-12-03T07:15:00",
            "attendeesCount": 7,
            "attendeesLimit": 20,
            "clubZone": "Fitness"
          }
        ]                        
      }

      BOOKCLASS_RESPONSE ||= {      
        
        "elements" => [
          {
            "booked": true,
            "attended": false,
            "userClassRating": "",
            "userInstructorRating": "",  
            "classType" => CLASSTYPE_BOX,
            "instructor" => INSTRUCTOR_AGATHA_STRICKLAND,
            "club" => CLUB_CYBERBOTIX,
            "id": 1677,
            "timestamp": 254718,
            "isDeleted": false,
            "startDate": "2015-12-03T06:15:00",
            "endDate": "2015-12-03T07:15:00",
            "attendeesCount": 7,
            "attendeesLimit": 20,
            "clubZone": "Fitness"
          }
        ] 
      }        

      CANCELCLASS_RESPONSE ||= {      
        
        "elements" => [
          {
            "booked": false,
            "attended": false,
            "userClassRating": "",
            "userInstructorRating": "",  
            "classType" => CLASSTYPE_BOX,
            "instructor" => INSTRUCTOR_AGATHA_STRICKLAND,
            "club" => CLUB_CYBERBOTIX,
            "id": 1677,
            "timestamp": 254718,
            "isDeleted": false,
            "startDate": "2015-12-03T06:15:00",
            "endDate": "2015-12-03T07:15:00",
            "attendeesCount": 6,
            "attendeesLimit": 20,
            "clubZone": "Fitness"
          }
        ] 
      }    
      
      BOOKCLASS_ERROR_RESPONSE ||= {      
         
        "errors" => [
          {
            "code": "ClassAlreadyBooked",
            "property": "",
            "message": ""
          }
        ]                        
      }  

      CANCELCLASS_ERROR_RESPONSE ||= {

        "errors" => [
          {
            "code": "ClassNotBooked",
            "property": "",
            "message": ""
          }
        ]
      }    

      RATECLASS_RESPONSE ||= {      
        
        "elements" => [
          {
            "booked": true,
            "attended": true,
            "userClassRating": 5,
            "userInstructorRating": "",  
            "classType" => CLASSTYPE_BOX,
            "instructor" => INSTRUCTOR_AGATHA_STRICKLAND,
            "club" => CLUB_CYBERBOTIX,
            "id": 1677,
            "timestamp": 254718,
            "isDeleted": false,
            "startDate": "2015-12-03T06:15:00",
            "endDate": "2015-12-03T07:15:00",
            "attendeesCount": 7,
            "attendeesLimit": 20,
            "clubZone": "Fitness"
          }
        ] 
      }    

      RATEINSTRUCTOR_RESPONSE ||= {      
        
        "elements" => [
          {
            "booked": true,
            "attended": true,
            "userClassRating": 5,
            "userInstructorRating": 4,  
            "classType" => CLASSTYPE_BOX,
            "instructor" => INSTRUCTOR_AGATHA_STRICKLAND,
            "club" => CLUB_CYBERBOTIX,
            "id": 1677,
            "timestamp": 254718,
            "isDeleted": false,
            "startDate": "2015-12-03T06:15:00",
            "endDate": "2015-12-03T07:15:00",
            "attendeesCount": 7,
            "attendeesLimit": 20,
            "clubZone": "Fitness"
          }
        ] 
      }   


      RATECLASS_ERROR_RESPONSE ||= {      
         
        "errors" => [
          {
            "code": "ClassAlreadyRated",
            "property": "",
            "message": ""
          }
        ]                        
      }  

      RATEINSTRUCTOR_ERROR_RESPONSE ||= {

        "errors" => [
          {
            "code": "InstructorAlreadyRated",
            "property": "",
            "message": ""
          }
        ]
      }           
    end
  end
end
