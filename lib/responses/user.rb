module GitHub
  module Resources
    module Responses
      
      USER_RESPONSE ||= {

        "elements" => [
          "id": 1,
          "timestamp": 447183,
          "personalId": "80010101234",
          "number": "102000001",
          "firstName": "Jan",
          "lastName": "Nowak",
          "email": "nowak@example.com",
          "birthDate": "1944-09-17T00:00:00",
          "sex": "Male",
          "phone": "0048123456789",
          "address": {
            "country": "Poland",
            "city": "Warszawa",
            "postalCode": "20-259",
            "street": "al. Jerozolimskie 114",
          },        
          "homeClubId": 12,
          "isActive": true,
          "isDeleted": false,
          "currentContract": {
            "id": 1,
            "timestamp": 350287,
            "signUpDate": "2014-03-28T00:00:00",
            "startDate": "2014-04-01T00:00:00",
            "cancelDate": "2015-03-31T23:59:59",
            "endDate": "2015-03-31T23:59:59",
            "membership": {
              "id": 1,
              "timestamp": 349423,
              "name": "Open",
              "isActive": true,
              "isDeleted": false
            },
            "paymentPlan": {
              "id": 2,
              "timestamp": 252688,
              "name": "Student weekly 45",
              "isActive": true,
              "isDeleted": false
            },
            "isActive": true,
            "isDeleted": false
          }
        ]        
      }

      USERADD_RESPONSE ||= {

        "elements" => [
          "id": 236,
          "timestamp": 447937,
          "personalId": "80010101234",
          "number": "2b7b02df-08ae-4720-a3ce-a594bfc46d47",
          "firstName": "John",
          "lastName": "Fibo",
          "email": "john.fibo@perfectgym.pl",
          "phone": "0048123456789",
          "birthDate": "1978-06-01T00:00:00",
          "sex": "Male",
          "address": {
            "country": "Poland",
            "city": "Warszawa",
            "postalCode": "20-259",
            "street": "al. Jerozolimskie 114",  
          },                
          "homeClubId": 12,
          "isActive": true,
          "isDeleted": false,
          "currentContract": ""
        ]        
      }   

      USERADD_ERROR_RESPONSE ||= {      
         
        "errors" => [
          {
            "code": "UserAlreadyExist",
            "property": "Email",
            "message": ""
          }
        ]                        
      }     
    end
  end
end



