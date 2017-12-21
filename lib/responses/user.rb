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

      CONTRACT ||= {
        "id": 10358,
        "timestamp": 350287,
        "signUpDate": "2016-01-26T00:00:00",
        "startDate": "2016-01-26T00:00:00",
        "cancelDate": "",
        "endDate": "",
        "isCurrent": true,
        "membership" => MEMBERSHIP_OPEN,
        "paymentPlan" => PAYMENTPLAN_OPEN24M,  
        "discounts" => [
          DISCOUNT
        ],          
        "documentUrl": "",
        "isActive": true,
        "isDeleted": false
      }      

      CONTRACT_SIGNED ||= {
        "id": 10358,
        "timestamp": 350287,
        "signUpDate": "2016-01-26T00:00:00",
        "startDate": "2016-01-26T00:00:00",
        "cancelDate": "",
        "endDate": "",
        "isCurrent": true,
        "membership" => MEMBERSHIP_OPEN,
        "paymentPlan" => PAYMENTPLAN_OPEN24M,  
        "discounts" => [
          DISCOUNT
        ],          
        "documentUrl": "http://yoursubdomain.perfectgym.com/Api/Files/Files?fileId=120",
        "isActive": true,
        "isDeleted": false
      } 

      AGREEMENTTYPE_RESPONSE ||= {        
        "elements" => [
	        "id": 2,       
	        "name": "Newsletter",
	        "description": "Newsletter"
		 ]                     
      } 

      USERFRIEND_RESPONSE ||= {        
        "elements" => [
	        "userId": 10,	       
	        "dateFrom": "2016-01-26T00:00:00",
	        "dateTo": "2016-02-26T00:00:00",
		 ]                     
      }  

       USER_PRODUCTS ||= {        
        "elements" => [
	        {
            "productId": 10,	       
	        "productName": "1 x PT",
	        "quantity": "10",
			"expireDate": "2019-10-01T00:00:00"
            }
		 ]                     
      }   

		USERLIST_RESPONSE ||= {

        "elements" => [          
          {
            "id": 10,      
	        "birthDate": "2000-10-01T00:00:00",
            "coverPhotoUrl": "null",
			"created": "2017-12-21T09:47:01",
			"updated": "2017-12-22T09:40:00",
			"email": "test1111test@wp.pl",
			"firstName": "John",
			"lastName": "Fibo",
			"number": "002023500",
			"homeClubId": 1,
			"personalId": "null",
			"isAccepted": "True",			
			"isActive": "True",
			"isDeleted": "True",
			"phoneNumber": "654444444",
			"photoUrl": "https://pure/Api/Files/UserPhoto/sYew224q$$2fyc$$3d?=635670411821628066",
			"sex": "Male",
		    "timestamp": 495037225
				          
           }          
        ]        
      }               

		USERPRODUCTS_RESPONSE ||= {

        "elements" => [          
          {
            "id": 10,      
	        "expireDate": "2019-10-01T00:00:00",
            "unitOfMeasure": "Piece",
			"transactionId": 99075,
			"quantity":1,
			"price":0,
			"name": "BodyShaping",
			"isStartPackageOnlyForNewcomer": "False",
			"isStartPackage": "True",
			"isActive": "True",
			"initialQuantity": 1,
			"categoriesClasses" => [
				"description": "MIX1",
				"id": 2,
				"name": "MIX1"
			]            
           }          
        ]        
      }               


      USER_RESPONSE ||= {

        "elements" => [
          "id": 1,
          "timestamp": 447183,
          "personalId": "80010101234",
          "number": "102000001",
          "cardNumber": "",          
          "firstName": "Jan",
          "lastName": "Nowak",
          "email": "nowak@example.com",
		      "emailAddressIsConfirmed": false,
          "photoUrl": "",
          "coverPhotoUrl": "",
          "birthDate": "1944-09-17T00:00:00",
          "isForeigner": false,
          "sex": "Male",
          "phoneNumber": "0048123456789",
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
            "cityAndPostalCode": "",
            "documentUrl": ""
          },       
          "homeClubId": 12,
		  "registeredAtClubId": "",
          "isActive": true,
          "isDeleted": false,
          "contracts" => [
            "id": 10358,
            "timestamp": 350287,
            "signUpDate": "2014-03-28T00:00:00",
            "startDate": "2014-04-01T00:00:00",
            "cancelDate": "2015-03-31T23:59:59",
            "endDate": "2015-03-31T23:59:59",
            "isCurrent": false,
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
          ]
        ]        
      }

      USERADD_RESPONSE ||= {

        "elements" => [
          "id": 236,
          "timestamp": 447937,
          "personalId": "80010101234",
          "number": "2b7b02df-08ae-4720-a3ce-a594bfc46d47",
          "cardNumber": "",          
          "firstName": "John",
          "lastName": "Fibo",
          "email": "john.fibo@perfectgym.pl",
		      "emailAddressIsConfirmed": false,
          "phoneNumber": "0048123456789",
          "idCardName": "Passport",
          "idCardNumber": "ABC 123456",
          "legalGuardian": "",
          "photoUrl": "",
          "coverPhotoUrl": "",
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
            "cityAndPostalCode": "",
            "documentUrl": ""
          },       
          "homeClubId": 12,
		  "registeredAtClubId": "",
          "isActive": true,
          "isDeleted": false,
          "contracts" => [
          ] 
        ]        
      }   

      USERUPDATE_RESPONSE ||= {

        "elements" => [
          "id": 236,
          "timestamp": 448035,
          "personalId": "80010101234",
          "number": "2b7b02df-08ae-4720-a3ce-a594bfc46d47",
          "cardNumber": "",          
          "firstName": "John",
          "lastName": "Fibo",
          "email": "john.fibo@perfectgym.pl",
		      "emailAddressIsConfirmed": false,
          "phoneNumber": "0048123456789",
          "idCardName": "Passport",
          "idCardNumber": "ABC 123456",
          "legalGuardian": "",
          "photoUrl": "",
          "coverPhotoUrl": "",
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
            "cityAndPostalCode": "",
            "documentUrl": ""
          },                      
          "homeClubId": 12,
		  "registeredAtClubId": "",
          "isActive": true,
          "isDeleted": false,
          "contracts" => [
          ] 
        ]        
      }         


      USERPHOTO_RESPONSE ||= {
        "elements" => [
          "id": 236,
          "timestamp": 448035,
          "personalId": "80010101234",
          "number": "2b7b02df-08ae-4720-a3ce-a594bfc46d47",
          "cardNumber": "",
          "firstName": "John",
          "lastName": "Fibo",
          "email": "john.fibo@perfectgym.pl",
		      "emailAddressIsConfirmed": false,
          "phoneNumber": "0048123456789",
          "idCardName": "Passport",
          "idCardNumber": "ABC 123456",
          "legalGuardian": "",
          "photoUrl": "http://yoursubdomain.perfectgym.com/Api/Files/Photo?photoId=78",
          "coverPhotoUrl": "",
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
            "cityAndPostalCode": "",
            "documentUrl": ""
          },                 
          "homeClubId": 12,
		  "registeredAtClubId": "",
          "isActive": true,
          "isDeleted": false,
          "contracts" => [
          ] 
        ]        
      }


      USERCONTRACT_RESPONSE ||= {

        "elements" => [
          "id": 236,
          "timestamp": 448035,
          "personalId": "80010101234",
          "number": "2b7b02df-08ae-4720-a3ce-a594bfc46d47",
          "cardNumber": "",          
          "firstName": "John",
          "lastName": "Fibo",
          "email": "john.fibo@perfectgym.pl",
		      "emailAddressIsConfirmed": false,
          "phoneNumber": "0048123456789",
          "idCardName": "Passport",
          "idCardNumber": "ABC 123456",
          "legalGuardian": "",
          "photoUrl": "",
          "coverPhotoUrl": "",
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
            "cityAndPostalCode": "",
            "documentUrl": ""
          },                  
          "homeClubId": 12,
		  "registeredAtClubId": "",
          "isActive": true,
          "isDeleted": false,
          "contracts": [
            CONTRACT
          ]
        ]        
      }   
      
      USERNOCONTRACT_RESPONSE ||= {

        "elements" => [
          "id": 236,
          "timestamp": 448035,
          "personalId": "80010101234",
          "number": "2b7b02df-08ae-4720-a3ce-a594bfc46d47",
          "cardNumber": "",
          "firstName": "John",
          "lastName": "Fibo",
          "email": "john.fibo@perfectgym.pl",
		      "emailAddressIsConfirmed": false,
          "phoneNumber": "0048123456789",
          "idCardName": "Passport",
          "idCardNumber": "ABC 123456",
          "legalGuardian": "",
          "photoUrl": "http://yoursubdomain.perfectgym.com/Api/Files/Photo?photoId=78",
          "coverPhotoUrl": "",
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
            "cityAndPostalCode": "",
            "documentUrl": ""
          },                  
          "homeClubId": 12,
		  "registeredAtClubId": "",
          "isActive": true,
          "isDeleted": false,
          "contracts": [            
          ]
        ]        
      }   

      USERCONTRACTSIGNED_RESPONSE ||= {

        "elements" => [
          "id": 236,
          "timestamp": 448035,
          "personalId": "80010101234",
          "number": "2b7b02df-08ae-4720-a3ce-a594bfc46d47",
          "cardNumber": "",          
          "firstName": "John",
          "lastName": "Fibo",
          "email": "john.fibo@perfectgym.pl",
		      "emailAddressIsConfirmed": false,
          "phoneNumber": "0048123456789",
          "idCardName": "Passport",
          "idCardNumber": "ABC 123456",
          "legalGuardian": "",
          "photoUrl": "",
          "coverPhotoUrl": "",
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
            "cityAndPostalCode": "",
            "documentUrl": ""
          },                  
          "homeClubId": 12,
		  "registeredAtClubId": "",
          "isActive": true,
          "isDeleted": false,
          "contracts": [
            CONTRACT_SIGNED
          ]
        ]        
      }   


      USERDIRECTDEBIT_RESPONSE ||= {

        "elements" => [
          "id": 236,
          "timestamp": 448035,
          "personalId": "80010101234",
          "number": "2b7b02df-08ae-4720-a3ce-a594bfc46d47",
          "cardNumber": "",
          "firstName": "John",
          "lastName": "Fibo",
          "email": "john.fibo@perfectgym.pl",
		      "emailAddressIsConfirmed": false,
          "phoneNumber": "0048123456789",
          "idCardName": "Passport",
          "idCardNumber": "ABC 123456",
          "legalGuardian": "",
          "photoUrl": "http://yoursubdomain.perfectgym.com/Api/Files/Photo?photoId=78",
          "coverPhotoUrl": "",
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
            "cityAndPostalCode": "02-962 Warszawa",
            "documentUrl": ""
          },                 
          "homeClubId": 12,
		  "registeredAtClubId": "",
          "isActive": true,
          "isDeleted": false,
          "contracts": [
            CONTRACT_SIGNED
          ]
        ]        
      }            

      USERDIRECTDEBITSIGN_RESPONSE ||= {

        "elements" => [
          "id": 236,
          "timestamp": 448035,
          "personalId": "80010101234",
          "number": "2b7b02df-08ae-4720-a3ce-a594bfc46d47",
          "cardNumber": "",
          "firstName": "John",
          "lastName": "Fibo",
          "email": "john.fibo@perfectgym.pl",
		      "emailAddressIsConfirmed": false,
          "phoneNumber": "0048123456789",
          "idCardName": "Passport",
          "idCardNumber": "ABC 123456",
          "legalGuardian": "",
          "photoUrl": "http://yoursubdomain.perfectgym.com/Api/Files/Photo?photoId=78",
          "coverPhotoUrl": "",
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
            "cityAndPostalCode": "02-962 Warszawa",
            "documentUrl": "http://yoursubdomain.perfectgym.com/Api/Files/Files?fileId=123"
          },                 
          "homeClubId": 12,
		  "registeredAtClubId": "",
          "isActive": true,
          "isDeleted": false,
          "contracts": [
            CONTRACT_SIGNED
          ]
        ]        
      }            


      USERTERMSANDCONDITIONS_RESPONSE ||= {

        "elements" => [
          "id": 236,
          "timestamp": 448035,
          "personalId": "80010101234",
          "number": "2b7b02df-08ae-4720-a3ce-a594bfc46d47",
          "cardNumber": "",
          "firstName": "John",
          "lastName": "Fibo",
          "email": "john.fibo@perfectgym.pl",
		      "emailAddressIsConfirmed": false,
          "phoneNumber": "0048123456789",
          "idCardName": "Passport",
          "idCardNumber": "ABC 123456",
          "legalGuardian": "",
          "photoUrl": "http://yoursubdomain.perfectgym.com/Api/Files/Photo?photoId=78",
          "coverPhotoUrl": "",
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
            "cityAndPostalCode": "02-962 Warszawa",
            "documentUrl": "http://yoursubdomain.perfectgym.com/Api/Files/Files?fileId=123"
          },                 
          "homeClubId": 12,
		  "registeredAtClubId": "",
          "isActive": true,
          "isDeleted": false,
          "contracts": [
            CONTRACT_SIGNED
          ]
        ]        
      }   


      USERMEMBERSHIPCARD_RESPONSE ||= {

        "elements" => [
          "id": 236,
          "timestamp": 448035,
          "personalId": "80010101234",
          "number": "2b7b02df-08ae-4720-a3ce-a594bfc46d47",
          "cardNumber": "123456789",          
          "firstName": "John",
          "lastName": "Fibo",
          "email": "john.fibo@perfectgym.pl",
		      "emailAddressIsConfirmed": false,
          "phoneNumber": "0048123456789",
          "idCardName": "Passport",
          "idCardNumber": "ABC 123456",
          "legalGuardian": "",
          "photoUrl": "http://yoursubdomain.perfectgym.com/Api/Files/Photo?photoId=78",
          "coverPhotoUrl": "",
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
            "cityAndPostalCode": "02-962 Warszawa",
            "documentUrl": "http://yoursubdomain.perfectgym.com/Api/Files/Files?fileId=123"
          },                 
          "homeClubId": 12,
		  "registeredAtClubId": "",
          "isActive": true,
          "isDeleted": false,
          "contracts": [
            CONTRACT_SIGNED
          ]
        ]        
      } 



      USERCLUBVISITS_RESPONSE ||= {

        "elements" => [
          {
            "enterDate": "2015-07-01T16:17:38",
            "exitDate": "2015-07-01T17:30:25",
            "club": {
              "id": 9,
              "timestamp": 255968,
              "name": "Club Monaco",
              "shortName": "Monaco",
              "symbol": "MON",
              "type": "Platinum",
              "openDate": "2015-01-01",
              "latitude": 52.51038,
              "longitude": 13.39763,
              "email": "club@clubmonaco.com",
              "phoneNumber": "+49 12 123 456 789",
              "timezone": "Central European Standard Time",
              "address": {
                "line1": "Rue Grimaldi 47",
                "line2": "",
                "city": "Monaco",
                "postalCode": "10-117",
                "country": "Monaco"
              },
              "isDeleted": false,
              "isHidden": false
            },
            "id": 219,
            "timestamp": 219102,
            "isDeleted": false
          },
          {
            "enterDate": "2015-11-24T17:06:50",
            "exitDate": "2015-11-24T18:51:16",
            "club": {
              "id": 9,
              "timestamp": 255968,
              "name": "Club Monaco",
              "shortName": "Monaco",
              "symbol": "MON",
              "type": "Platinum",
              "openDate": "2015-01-01",
              "latitude": 52.51038,
              "longitude": 13.39763,
              "email": "club@clubmonaco.com",
              "phoneNumber": "+49 12 123 456 789",
              "timezone": "Central European Standard Time",
              "address": {
                "line1": "Rue Grimaldi 47",
                "line2": "",
                "city": "Monaco",
                "postalCode": "10-117",
                "country": "Monaco"
              },
              "isDeleted": false,
              "isHidden": false
            },
            "id": 333,
            "timestamp": 410378,
            "isDeleted": false
          },
          {
            "enterDate": "2015-11-25T09:57:07",
            "exitDate": "2015-11-25T13:04:44",
            "club": {
              "id": 9,
              "timestamp": 255968,
              "name": "Club Monaco",
              "shortName": "Monaco",
              "symbol": "MON",
              "type": "Platinum",
              "openDate": "2015-01-01",
              "latitude": 52.51038,
              "longitude": 13.39763,
              "email": "club@clubmonaco.com",
              "phoneNumber": "+49 12 123 456 789",
              "timezone": "Central European Standard Time",
              "address": {
                "line1": "Rue Grimaldi 47",
                "line2": "",
                "city": "Monaco",
                "postalCode": "10-117",
                "country": "Monaco"
              },
              "isDeleted": false,
              "isHidden": false
            },
            "id": 340,
            "timestamp": 410472,
            "isDeleted": false
          },
          {
            "enterDate": "2015-11-30T16:14:52",
            "exitDate": "2015-11-30T18:27:00",
            "club": {
              "id": 9,
              "timestamp": 255968,
              "name": "Club Monaco",
              "shortName": "Monaco",
              "symbol": "MON",
              "type": "Platinum",
              "openDate": "2015-01-01",
              "latitude": 52.51038,
              "longitude": 13.39763,
              "email": "club@clubmonaco.com",
              "phoneNumber": "+49 12 123 456 789",
              "timezone": "Central European Standard Time",
              "address": {
                "line1": "Rue Grimaldi 47",
                "line2": "",
                "city": "Monaco",
                "postalCode": "10-117",
                "country": "Monaco"
              },
              "isDeleted": false,
              "isHidden": false
            },
            "id": 349,
            "timestamp": 412023,
            "isDeleted": false
          }

        ]        
      }


      WHOISINUSERS_RESPONSE ||= {

        "elements" => [ 
          {
            "id": 1,            
            "firstName": "Jan",
            "lastName": "Nowak",            
            "photoUrl": "",            
            "sex": "Male",                                      
            "isPresent": true,
            "isDeleted": false,
            "timestamp": 447183
          } 
        ]
      }


      USERRESETPASSWORDTOKEN_RESPONSE ||= {

        "elements" => [
          "resetPasswordToken": "9c10cdf6-565d-47cf-a7af-d27e6f989df8"  
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
	  
	  RESULTSTATUS_RESPONSE ||= {
		"elements" => [
			{
				ResultStatus: "Success"
			}
		]
	  }
	  
	  SENDEMAILTORESETPASSWORD_EMAILTEMPLATENOTDEFINED_ERROR_RESPONSE ||= {
		"errors" => [
			{
				"code": "EmailTemplateNotDefined",
				"property": "",
				"message": ""
			}
		]
	  }
	  
	  SENDEMAILTORESETPASSWORD_UNABLESENDEMAIL_ERROR_RESPONSE ||= {
		"errors" => [
			{
				"code": "UnableSendEmail",
				"property": "",
				"message": ""
			}
		]
	  }
	  
	  SENDEMAILTORESETPASSWORD_INVALIDTOKEN_ERROR_RESPONSE ||= {
		"errors" => [
			{
				"code": "InvalidToken",
				"property": "",
				"message": ""
			}
		]
	  }
	  
	  CONFIRMEMAILADDRESS_INVALIDTOKEN_ERROR_RESPONSE ||= {
		"errors" => [
			{
				"code": "InvalidToken",
				"property": "",
				"message": ""
			}
		]
	  }
	  
	  USEREMAILCONFIRMED_RESPONSE ||= {

        "elements" => [
          "id": 236,
          "timestamp": 448035,
          "personalId": "80010101234",
          "number": "2b7b02df-08ae-4720-a3ce-a594bfc46d47",
          "cardNumber": "",          
          "firstName": "John",
          "lastName": "Fibo",
          "email": "john.fibo@perfectgym.pl",
		      "emailAddressIsConfirmed": true,
          "phoneNumber": "0048123456789",
          "idCardName": "Passport",
          "idCardNumber": "ABC 123456",
          "legalGuardian": "",
          "photoUrl": "",
          "coverPhotoUrl": "",
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
            "cityAndPostalCode": "",
            "documentUrl": ""
          },                      
          "homeClubId": 12,
		  "registeredAtClubId": "",
          "isActive": true,
          "isDeleted": false,
          "contracts" => [
          ] 
        ]        
      }
	  
	  

    end
  end
end



