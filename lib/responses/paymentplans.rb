module GitHub
  module Resources
    module Responses

      PAYMENTPLAN_HIGH5FULL3M ||= {
        "id": 41,
        "timestamp": 447620,
        "name": "High 5 Full 3m",
        "isActive": true,
        "isDeleted": false
      }

      PAYMENTPLAN_HIGH5FULL6M ||= {
        "id": 42,
        "timestamp": 447621,
        "name": "High 5 Full 6m",
        "isActive": true,
        "isDeleted": false
      }

      PAYMENTPLAN_HIGH5FULL12M ||= {
        "id": 43,
        "timestamp": 447622,
        "name": "High 5 Full 12m",
        "isActive": true,
        "isDeleted": false
      }

      PAYMENTPLAN_HIGH5FULL24M ||= {
        "id": 44,
        "timestamp": 447623,
        "name": "High 5 Full 24m",
        "isActive": true,
        "isDeleted": false
      }  



      PAYMENTPLANS_RESPONSE ||= {

        "elements" => [

          PAYMENTPLAN_HIGH5FULL3M,
          PAYMENTPLAN_HIGH5FULL6M,
          PAYMENTPLAN_HIGH5FULL12M,
          PAYMENTPLAN_HIGH5FULL24M
        ]
      }   
    end
  end
end
