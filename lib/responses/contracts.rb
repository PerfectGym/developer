require_relative 'memberships'
require_relative 'paymentplans'
require_relative 'user'


module GitHub
  module Resources
    module Responses      

      
      CONTRACTS_RESPONSE ||= {  

        "elements" => [                              
          {
            "id": 10358,
            "timestamp": 350287,
            "signUpDate": "2016-01-26T00:00:00",
            "startDate": "2016-01-26T00:00:00",
            "cancelDate": "",
            "endDate": "",
            "isActive": true,
            "isDeleted": false
          },          
        ]              
      }      

      CONTRACT_RESPONSE ||= {

        "elements" => [
           {
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
            "freezes" => [
              ],
            "status": "Current",
            "isCurrent": true,        
            "isActive": true,
            "isDeleted": false
          }
        ]        
      }   

	  CONTRACTFEE_RESPONSE ||= {

        "elements" => [
           {
            "id": 10358,
            "timestamp": 350287,
            "signUpDate": "2016-01-26T00:00:00",
            "startDate": "2016-01-26T00:00:00",
            "cancelDate": "",
            "endDate": "",
            "administarationFee": 12, 
			"freezFee": 0,
			"joiningFee": 5,
			"membershipFee": 100,
			"totalFee": 1217,
            "paidTransactions" => [
              {
				"amount":12,
				"amountToSettle":0,	
				"date": "2017-10-29T10:07:14",
				"type": "AdminFee"
			  },
			  {
				"amount":5,
				"amountToSettle":0,	
				"date": "2017-10-29T10:07:14",
				"type": "JoiningFee"
			  }
            ],  
            "pendingTransactions" => [
				{
				"amount":100,
				"amountToSettle": -100,	
				"date": "2017-10-01T00:00:00",
				"type": "Membership"
			  },
			    {
				"amount":100,
				"amountToSettle": -100,	
				"date": "2017-11-01T00:00:00",
				"type": "Membership"
			  },
				{
				"amount":100,
				"amountToSettle": -100,	
				"date": "2017-12-01T00:00:00",
				"type": "Membership"
			  },
				{
				"amount":100,
				"amountToSettle": -100,	
				"date": "2018-01-01T00:00:00",
				"type": "Membership"
			  },
				{
				"amount":100,
				"amountToSettle": -100,	
				"date": "2018-02-01T00:00:00",
				"type": "Membership"
			  },
				{
				"amount":100,
				"amountToSettle": -100,	
				"date": "2018-03-01T00:00:00",
				"type": "Membership"
			  },
				{
				"amount":100,
				"amountToSettle": -100,	
				"date": "2018-04-01T00:00:00",
				"type": "Membership"
			  },
				{
				"amount":100,
				"amountToSettle": -100,	
				"date": "2018-05-01T00:00:00",
				"type": "Membership"
			  },
				{
				"amount":100,
				"amountToSettle": -100,	
				"date": "2018-06-01T00:00:00",
				"type": "Membership"
			  },
				{
				"amount":100,
				"amountToSettle": -100,	
				"date": "2018-07-01T00:00:00",
				"type": "Membership"
			  },
				{
				"amount":100,
				"amountToSettle": -100,	
				"date": "2018-08-01T00:00:00",
				"type": "Membership"
			  },
				{
				"amount":100,
				"amountToSettle": -100,	
				"date": "2018-09-01T00:00:00",
				"type": "Membership"
			  }
              ],
            "status": "Current",
            "isCurrent": true,        
            "isActive": true,
            "isDeleted": false
          }
        ]        
      }   


      CONTRACT_FREEZE_RESPONSE ||= {

        "elements" => [
           {
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
            "freezes" => [
              {
                "startDate": "2016-04-01T00:00:00",
                "endDate": "2016-04-07T23:59:59",
                "fee": 1,
                "status": "NotStarted",
                "reason": {
                  "id": 1,
                  "name": "Holiday"
                },
                "type": {
                  "name": "Daily Freeze",
                  "isActive": true,
                  "fixedFee": 1,
                  "administrationFee": 25,
                  "freezePeriod": "Day",
                  "minimumInterval": 2,
                  "maximumInterval": 8,
                  "id": 7,
                  "timestamp": 0,
                  "isDeleted": false
                },
                "id": 175,
                "timestamp": 692507,
                "isDeleted": false
              },
            ],
            "status": "Current",
            "isCurrent": true,        
            "isActive": true,
            "isDeleted": false
          }
        ]        
      }   


      FREEZEREASONS_RESPONSE ||= {

        "elements" => [      
          {
            "id": 1,
            "name": "Holiday"
          },
          {
            "id": 2,
            "name": "Injury"
          },
          {
            "id": 3,
            "name": "Medical"
          },
          {
            "id": 4,
            "name": "Other"
          },
          {
            "id": 5,
            "name": "Pregnancy"
          }                                
        ]        
      }   


      FREEZETYPES_RESPONSE ||= {

        "elements" => [      
          {
            "name": "Daily Freeze",
            "isActive": true,
            "isSystem": false,
            "fixedFee": 1,
            "administrationFee": 25,
            "freezePeriod": "Day",
            "id": 7,
            "timestamp": 0,
          },          
          {
            "name": "Monthly Freeze",
            "isActive": true,
            "isSystem": false,
            "fixedFee": 1,
            "administrationFee": 20,
            "freezePeriod": "Month",
            "id": 6,
            "timestamp": 0,            
          },          
        ]        
      }   


      FREEZETYPEDETAILS_RESPONSE ||= {

        "elements" => [      
          {
            "freezeFee": 1,
            "freezeMaxLength":30,
            "availableStartDates": [
              {
                "year": 2016,
                "month": 4,
                "startMonthDate": "2016-04-01T00:00:00",
                "endMonthDate": "2016-04-30T23:59:59"
              },
              {
                "year": 2016,
                "month": 5,
                "startMonthDate": "2016-05-01T00:00:00",
                "endMonthDate": "2016-05-31T23:59:59"
              },
              {
                "year": 2016,
                "month": 6,
                "startMonthDate": "2016-06-01T00:00:00",
                "endMonthDate": "2016-06-30T23:59:59"
              }
            ],
            "name": "Daily Freeze",
            "isActive": true,
            "isSystem": false,
            "fixedFee": 1,
            "administrationFee": 25,
            "freezePeriod": "Day",
            "id": 7,
            "timestamp": 0,
          },                    
        ]        
      }   


      CONTRACT_ERROR_RESPONSE ||= {

        "errors " => [
           {
              "message": "Freeze only for 2 - 8 days, not 13",
              "property": "",
              "code": "InvalidFreezeParameters"
          }
        ]        
      }   
    end
  end
end
