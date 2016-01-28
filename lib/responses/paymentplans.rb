module GitHub
  module Resources
    module Responses

      PAYMENTPLAN_OPEN3M ||= {
        "id": 41,
        "timestamp": 447620,
        "name": "Open 3m",
        "isActive": true,
        "isDeleted": false
      }

      PAYMENTPLAN_OPEN6M ||= {
        "id": 42,
        "timestamp": 447621,
        "name": "Open 6m",
        "isActive": true,
        "isDeleted": false
      }

      PAYMENTPLAN_OPEN12M ||= {
        "id": 43,
        "timestamp": 447622,
        "name": "Open 12m",
        "isActive": true,
        "isDeleted": false
      }

      PAYMENTPLAN_OPEN24M ||= {
        "id": 44,
        "timestamp": 447623,
        "name": "Open 24m",
        "isActive": true,
        "isDeleted": false
      }  



      PAYMENTPLANS_RESPONSE ||= {

        "elements" => [

          PAYMENTPLAN_OPEN3M,
          PAYMENTPLAN_OPEN6M,
          PAYMENTPLAN_OPEN12M,
          PAYMENTPLAN_OPEN24M
        ]
      }  


      PAYMENTPLANDETAILS_RESPONSE ||= {

        "elements" => [
          {
            "startDate": "2015-01-01T00:00:00",
            "endDate": "2016-12-31T00:00:00",
            "freezeAllowed": true,
            "shortDescription": "",
            "description": "",
            "commitmentPeriod": "24M", 
            "fees" => {

              "joiningFee": {
                "net": 0,
                "tax": 0,
                "taxRate": 23,
                "gross": 0
              },
              "administartionFee": {
                "net": 15.45,
                "tax": 3.55,
                "taxRate": 23,
                "gross": 19
              },
              "membershipFee": {
                "net": 16.18,
                "tax": 3.72,
                "taxRate": 23,
                "gross": 19.9
              },
              "freezFee": {
                "net": 0,
                "tax": 0,
                "taxRate": 23,
                "gross": 0
              },
            },                       
            "paymentInterval": "1M",
            "membership": {
              "id": 20,
              "timestamp": 280599,
              "name": "High5 Full",
              "isActive": true,
              "isDeleted": false
            },
            "id": 44,
            "timestamp": 447623,
            "name": "Open 24m",
            "isActive": true,
            "isDeleted": false
          }
        ]      
      }
    end
  end
end
