module GitHub
  module Resources
    module Responses      

      CLUB_CYBERBOTIX ||= {

        "id": 2,
        "timestamp": 271990,
        "name": "Fibo Cyberbotics",
        "shortName": "Cyberbotics",
        "symbol": "FCBR",  
        "type": "Normal",
        "openDate": "2015-01-01",
        "latitude": 52.51038,
        "longitude": 13.39763,
        "email": "club@cyberbotics.com",
        "phoneNumber": "+49 12 123 456 789",
        "timezone": "Central European Standard Time",
        "address": {
          "line1": "Leipziger Str. 46/47",
          "line2": "",
          "city": "Berlin",
          "postalCode": "10-117",
          "country": "Germany",
        },
        "isDeleted": false,
        "isHidden": false,        
      }

      CLUB_MONACO ||= {

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
          "country": "Monaco",
        },
        "isDeleted": false,
        "isHidden": false,        
      }

	
	  ACQUIRECOUPON_RESPONSE ||= {
        "elements" => [34327]
      }


      CLUBZONE_SPA ||= {
        "id": 1,
        "timestamp": 50009,
        "name": "SPA",
        "description": "SPA",
        "dailyLimit": ""
      }

      CLUBZONE_GYM ||= {
        "id": 2,
        "timestamp": 2009,
        "name": "Gym",
        "description": "Gym",
        "dailyLimit": ""
      }

      CLUBZONE_CAFETERIA ||= {
        "id": 4,
        "timestamp": 2011,
        "name": "Cafeteria",
        "description": "Cafeteria",
        "dailyLimit": ""
      }


      CLUBS_RESPONSE ||= {  

        "elements" => [          
          CLUB_CYBERBOTIX,
          CLUB_MONACO,
          {
            "id": 3,
            "timestamp": 255980,
            "name": "Club Cracow",
            "shortName": "Cracow",
            "symbol": "CRA",
            "type": "Normal",
            "openDate": "2015-01-01",
            "latitude": 52.51038,
            "longitude": 13.39763,
            "email": "club@clubkrakow.com",
            "phoneNumber": "+49 12 123 456 789",
            "timezone": "Central European Standard Time",
            "address": {
              "line1": "Al. Słowackiego 46/47",
              "line2": "",
              "city": "Kraków",
              "postalCode": "10-117",
              "country": "Poland",
            },
            "isDeleted": false,
            "isHidden": false,            
          },                              
          {
            "id": 14,
            "timestamp": 256064,
            "name": "Club Moscow",
            "shortName": "Moscow",
            "symbol": "",
            "type": "Normal",
            "openDate": "2015-01-01",
            "latitude": 52.51038,
            "longitude": 13.39763,
            "email": "club@clubmoscow.com",
            "phoneNumber": "+49 12 123 456 789",
            "timezone": "Central European Standard Time",
            "address": {
              "line1": "Leipziger Str. 46/47",
              "line2": "",
              "city": "Moscow",
              "postalCode": "10-117",
              "country": "Russia",
            },
            "isDeleted": true,
            "isHidden": false,            
          },          
        ]              
      }      


      CLUBDETAILS_RESPONSE ||= {  


        "elements" => [          
          {
            "displayName": "Cyberbotics Berlin",
            "description": "Our club began in 1979 and has always been a favorite of different types of athletes and fitness enthusiasts. Refined and updated to offer a setting that is open and light where both staff and clientele are friendly and casual and the focus is on well-balanced health.",
            "languageCode": "",                        
            "equipment": [
              {
                "id": 10,
                "type": "Treadmill",
                "name": "Treadmill",
                "quantity": 10,
                "isDeleted": false
              },
              {
                "id": 11,
                "type": "StationaryBicycle",
                "name": "Stationary bicycle",
                "quantity": 10,
                "isDeleted": false
              }
            ],
            "facilities": [
              {
                "id": 7,
                "type": "WiFi",
                "name": "WiFi",
                "isDeleted": false
              },
              {
                "id": 8,
                "type": "Coffee",
                "name": "Coffee",
                "isDeleted": false
              },
              {
                "id": 9,
                "type": "Sunbed",
                "name": "Sunbed",
                "isDeleted": false
              }
            ],
            "openHours": [
              {
                "id": 11,
                "isClosed": false,
                "dayOfWeekOrHoliday": "Monday",
                "openFrom": "07:00:00",
                "openUntil": "23:00:00",
                "isDeleted": false
              },
              {
                "id": 12,
                "isClosed": false,
                "dayOfWeekOrHoliday": "Sunday",
                "openFrom": "10:00:00",
                "openUntil": "18:00:00",
                "isDeleted": false
              },
              {
                "id": 13,
                "isClosed": false,
                "dayOfWeekOrHoliday": "Tuesday",
                "openFrom": "07:00:00",
                "openUntil": "23:00:00",
                "isDeleted": false
              },
              {
                "id": 14,
                "isClosed": false,
                "dayOfWeekOrHoliday": "Wednesday",
                "openFrom": "07:00:00",
                "openUntil": "23:00:00",
                "isDeleted": false
              },
              {
                "id": 15,
                "isClosed": false,
                "dayOfWeekOrHoliday": "Thursday",
                "openFrom": "07:00:00",
                "openUntil": "23:00:00",
                "isDeleted": false
              },
              {
                "id": 16,
                "isClosed": false,
                "dayOfWeekOrHoliday": "Friday",
                "openFrom": "07:00:00",
                "openUntil": "23:00:00",
                "isDeleted": false
              },
              {
                "id": 17,
                "isClosed": false,
                "dayOfWeekOrHoliday": "Saturday",
                "openFrom": "09:00:00",
                "openUntil": "20:00:00",
                "isDeleted": false
              }
            ],
            "urls": [
              {
                "id": 3,
                "mediaType": "Facebook",
                "url": "http://facebook.com/Cyberbotics",
                "isDeleted": false
              },
              {
                "id": 4,
                "mediaType": "Twitter",
                "url": "http://twitter.com/Cyberbotics",
                "isDeleted": false
              },
              {
                "id": 5,
                "mediaType": "YouTube",
                "url": "http://youtube.com/Cyberbotics",
                "isDeleted": false
              },
              {
                "id": 6,
                "mediaType": "Instagram",
                "url": "http://instagram.com/Cyberbotics",
                "isDeleted": false
              }
            ],
            "contacts": [
              {
                "id": 4,
                "title": "",
                "name": "Support",
                "email": "support@club@cyberbotics.com",
                "phoneNumber": "+49 12 123 456 789",
                "isDeleted": false
              }
            ],
            "zones": [
              {
                "id": 38,
                "parentId": "",
                "name": "Mind & Body",
                "description": "Studio Mind & Body",
                "isDeleted": false
              },
              {
                "id": 39,
                "parentId": "",
                "name": "Spinning",
                "description": "Spinning",
                "isDeleted": false
              },
              {
                "id": 40,
                "parentId": "",
                "name": "Fit & Dance",
                "description": "Fit & Dance",
                "isDeleted": false
              }
            ],
            "photos": [
              {
                "photoUrl": "http://yoursubdomain.perfectgym.com/Api/Files/Photo?photoId=142",
                "id": 5,
                "timestamp": 374980,
                "isDeleted": false
              },
              {
                "photoUrl": "http://yoursubdomain.perfectgym.com/Api/Files/Photo?photoId=143",
                "id": 6,
                "timestamp": 374983,
                "isDeleted": false
              },            
            ],

            "id": 16,
            "timestamp": 271990,
            "name": "Cyberbotics Berlin",
            "shortName": "Cyberbotics",
            "symbol": "CBTCS",
            "type": "Normal",
            "openDate": "2015-01-01",
            "latitude": 52.51038,
            "longitude": 13.39763,
            "email": "club@cyberbotics.com",
            "phoneNumber": "+49 12 123 456 789",
            "timezone": "Central European Standard Time",
            "address": {
              "line1": "Leipziger Str. 46/47",
              "line2": "",
              "city": "Berlin",
              "postalCode": "10-117",
              "country": "Germany",
            },
            "isDeleted": false,
            "isHidden": false,            
          }
        ]
      }
    end
  end
end
