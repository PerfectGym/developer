require_relative 'memberships'
require_relative 'paymentplans'


module GitHub
  module Resources
    module Responses

      DISCOUNT ||= {
        
        "id": 10,
        "isActive": true,
        "name": "50%",
        "administartionFeeDiscountType": "ValueDiscount",
        "joiningFeeDiscountType": "None",
        "membershipFeeDiscountType": "PercentDiscount",
        "administartionFeeDiscountValue": 0,
        "joiningFeeDiscountValue": "",
        "membershipFeeDiscountValue": 50        
      }


      USER_RESPONSE ||= {

        "elements" => [
          "id": 1,
          "timestamp": 447183,
          "personalId": "80010101234",
          "number": "102000001",
          "cardNumber": "1078902793",
          "firstName": "Jan",
          "lastName": "Nowak",
          "email": "nowak@example.com",
          "photoUrl": "",
          "birthDate": "1944-09-17T00:00:00",
          "isForeigner": false,
          "sex": "Male",
          "phone": "0048123456789",
          "idCardName": "Passport",
          "idCardNumber": "ABC 123456",
          "legalGuardian": "",
          "newsletterAgreement": false,
          "termsAndConditionsAgreement": false,
          "address": {
            "country": "Poland",
            "city": "Warszawa",
            "postalCode": "20-259",
            "line1": "al. Jerozolimskie 114",
            "line2": ""
          }, 
          "directDebit": {
            "accountNumber": "",
            "ownerName": "",
            "street": "",
            "cityAndPostalCode": ""
          },       
          "homeClubId": 12,
          "isActive": true,
          "isDeleted": false,
          "currentContract": {
            "id": 10358,
            "timestamp": 350287,
            "signUpDate": "2014-03-28T00:00:00",
            "startDate": "2014-04-01T00:00:00",
            "cancelDate": "2015-03-31T23:59:59",
            "endDate": "2015-03-31T23:59:59",
            "membership" => MEMBERSHIP_OPEN,
            "paymentPlan": {
              "id": 2,
              "timestamp": 252688,
              "name": "Student weekly 45",
              "isActive": true,
              "isDeleted": false
            },
            "discounts" => [
              DISCOUNT
            ],
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
          "cardNumber": "1078902793",
          "firstName": "John",
          "lastName": "Fibo",
          "email": "john.fibo@perfectgym.pl",
          "phone": "0048123456789",
          "idCardName": "Passport",
          "idCardNumber": "ABC 123456",
          "legalGuardian": "",
          "photoUrl": "",
          "birthDate": "1978-06-01T00:00:00",
          "isForeigner": false,
          "sex": "Male",
          "newsletterAgreement": false,
          "termsAndConditionsAgreement": false,
          "address": {
            "country": "Poland",
            "city": "Warszawa",
            "postalCode": "20-259",
            "line1": "al. Jerozolimskie 114",  
            "line2": ""
          },                
          "directDebit": {
            "accountNumber": "",
            "ownerName": "",
            "street": "",
            "cityAndPostalCode": ""
          },       
          "homeClubId": 12,
          "isActive": true,
          "isDeleted": false,
          "currentContract": ""
        ]        
      }   

      USERUPDATE_RESPONSE ||= {

        "elements" => [
          "id": 236,
          "timestamp": 448035,
          "personalId": "80010101234",
          "number": "2b7b02df-08ae-4720-a3ce-a594bfc46d47",
          "cardNumber": "1078902793",
          "firstName": "John",
          "lastName": "Fibo",
          "email": "john.fibo@perfectgym.pl",
          "phone": "0048123456789",
          "idCardName": "Passport",
          "idCardNumber": "ABC 123456",
          "legalGuardian": "",
          "photoUrl": "",
          "birthDate": "1978-06-01T00:00:00",
          "isForeigner": false,
          "sex": "Male",
          "newsletterAgreement": false,
          "termsAndConditionsAgreement": false,
          "address": {
            "country": "Poland",
            "city": "Warszawa",
            "postalCode": "02-962",
            "line1": "ul. Przyczolkowa 334",  
            "line2": ""
          }, 
          "directDebit": {
            "accountNumber": "",
            "ownerName": "",
            "street": "",
            "cityAndPostalCode": ""
          },                      
          "homeClubId": 12,
          "isActive": true,
          "isDeleted": false,
          "currentContract": ""
        ]        
      }         


      USERCONTRACT_RESPONSE ||= {

        "elements" => [
          "id": 236,
          "timestamp": 448035,
          "personalId": "80010101234",
          "number": "2b7b02df-08ae-4720-a3ce-a594bfc46d47",
          "cardNumber": "1078902793",
          "firstName": "John",
          "lastName": "Fibo",
          "email": "john.fibo@perfectgym.pl",
          "phone": "0048123456789",
          "idCardName": "Passport",
          "idCardNumber": "ABC 123456",
          "legalGuardian": "",
          "photoUrl": "",
          "birthDate": "1978-06-01T00:00:00",
          "isForeigner": false,
          "sex": "Male",
          "newsletterAgreement": false,
          "termsAndConditionsAgreement": false,
          "address": {
            "country": "Poland",
            "city": "Warszawa",
            "postalCode": "02-962",
            "line1": "ul. Przyczolkowa 334",  
            "line2": ""
          }, 
          "directDebit": {
            "accountNumber": "",
            "ownerName": "",
            "street": "",
            "cityAndPostalCode": ""
          },                  
          "homeClubId": 12,
          "isActive": true,
          "isDeleted": false,
          "currentContract": {
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

      USERPHOTO_RESPONSE ||= {

              "elements" => [
                "id": 236,
                "timestamp": 448035,
                "personalId": "80010101234",
                "number": "2b7b02df-08ae-4720-a3ce-a594bfc46d47",
                "cardNumber": "1078902793",
                "firstName": "John",
                "lastName": "Fibo",
                "email": "john.fibo@perfectgym.pl",
                "phone": "0048123456789",
                "idCardName": "Passport",
                "idCardNumber": "ABC 123456",
                "legalGuardian": "",
                "photoUrl": "http://yoursubdomain.perfectgym.com/Api/Files/File?fileId=78",
                "birthDate": "1978-06-01T00:00:00",
                "isForeigner": false,
                "sex": "Male",
                "newsletterAgreement": false,
                "termsAndConditionsAgreement": false,
                "address": {
                  "country": "Poland",
                  "city": "Warszawa",
                  "postalCode": "02-962",
                  "line1": "ul. Przyczolkowa 334",  
                  "line2": ""
                },  
                "directDebit": {
                  "accountNumber": "",
                  "ownerName": "",
                  "street": "",
                  "cityAndPostalCode": ""
                },                 
                "homeClubId": 12,
                "isActive": true,
                "isDeleted": false,
                "currentContract": ""
              ]        
            }
      USERNOCONTRACT_RESPONSE ||= {

        "elements" => [
          "id": 236,
          "timestamp": 448035,
          "personalId": "80010101234",
          "number": "2b7b02df-08ae-4720-a3ce-a594bfc46d47",
          "cardNumber": "1078902793",
          "firstName": "John",
          "lastName": "Fibo",
          "email": "john.fibo@perfectgym.pl",
          "phone": "0048123456789",
          "idCardName": "Passport",
          "idCardNumber": "ABC 123456",
          "legalGuardian": "",
          "photoUrl": "http://yoursubdomain.perfectgym.com/Api/Files/File?fileId=78",
          "birthDate": "1978-06-01T00:00:00",
          "isForeigner": false,
          "sex": "Male",
          "newsletterAgreement": false,
          "termsAndConditionsAgreement": false,
          "address": {
            "country": "Poland",
            "city": "Warszawa",
            "postalCode": "02-962",
            "line1": "ul. Przyczolkowa 334",  
            "line2": ""
          }, 
          "directDebit": {
            "accountNumber": "",
            "ownerName": "",
            "street": "",
            "cityAndPostalCode": ""
          },                  
          "homeClubId": 12,
          "isActive": true,
          "isDeleted": false,
          "currentContract": ""
        ]        
      }   


      USERDIRECTDEBIT_RESPONSE ||= {

        "elements" => [
          "id": 236,
          "timestamp": 448035,
          "personalId": "80010101234",
          "number": "2b7b02df-08ae-4720-a3ce-a594bfc46d47",
          "cardNumber": "1078902793",
          "firstName": "John",
          "lastName": "Fibo",
          "email": "john.fibo@perfectgym.pl",
          "phone": "0048123456789",
          "idCardName": "Passport",
          "idCardNumber": "ABC 123456",
          "legalGuardian": "",
          "photoUrl": "http://yoursubdomain.perfectgym.com/Api/Files/File?fileId=78",
          "birthDate": "1978-06-01T00:00:00",
          "isForeigner": false,
          "sex": "Male",
          "newsletterAgreement": false,
          "termsAndConditionsAgreement": false,
          "address": {
            "country": "Poland",
            "city": "Warszawa",
            "postalCode": "02-962",
            "line1": "ul. Przyczolkowa 334",  
            "line2": ""
          },  
          "directDebit": {
            "accountNumber": "61 1090 1014 0000 0712 1981 2874",
            "ownerName": "John Fibo",
            "street": "Przyczółkowa 334",
            "cityAndPostalCode": "02-962 Warszawa"
          },                 
          "homeClubId": 12,
          "isActive": true,
          "isDeleted": false,
          "currentContract": {
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


      USERTERMSANDCONDITIONS_RESPONSE ||= {

        "elements" => [
          "id": 236,
          "timestamp": 448035,
          "personalId": "80010101234",
          "number": "2b7b02df-08ae-4720-a3ce-a594bfc46d47",
          "cardNumber": "1078902793",
          "firstName": "John",
          "lastName": "Fibo",
          "email": "john.fibo@perfectgym.pl",
          "phone": "0048123456789",
          "idCardName": "Passport",
          "idCardNumber": "ABC 123456",
          "legalGuardian": "",
          "photoUrl": "http://yoursubdomain.perfectgym.com/Api/Files/File?fileId=78",
          "birthDate": "1978-06-01T00:00:00",
          "isForeigner": false,
          "sex": "Male",
          "newsletterAgreement": false,
          "termsAndConditionsAgreement": true,
          "address": {
            "country": "Poland",
            "city": "Warszawa",
            "postalCode": "02-962",
            "line1": "ul. Przyczolkowa 334",  
            "line2": ""
          },  
          "directDebit": {
            "accountNumber": "61 1090 1014 0000 0712 1981 2874",
            "ownerName": "John Fibo",
            "street": "Przyczółkowa 334",
            "cityAndPostalCode": "02-962 Warszawa"
          },                 
          "homeClubId": 12,
          "isActive": true,
          "isDeleted": false,
          "currentContract": {
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

      USERADD_ERROR_RESPONSE ||= {      
         
        "errors" => [
          {
            "code": "UserAlreadyExist",
            "property": "Email",
            "message": ""
          }
        ]                        
      }     

      USERUPDATE_ERROR_RESPONSE ||= {      
         
        "errors" => [
          {
            "code": "UserDoesNotExists",
            "property": "",
            "message": ""
          }
        ]                        
      }     

      DIRECTDEBIT_ERROR_RESPONSE ||= {      
         
        "errors" => [
          {
            "code": "InvalidIBAN",
            "property": "",
            "message": ""
          }
        ]                        
      }     

      USERCREDENTIALS_ERROR_RESPONSE ||= {      
         
        "errors" => [
          {
            "code": "InvalidUserNameOrPassword",
            "property": "",
            "message": ""
          }
        ]                        
      }     

    end
  end
end



