module GitHub
  module Resources
    module Responses


      DISCOUNTS_RESPONSE ||= {

        "elements" => [
          {
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
        ]      
      }


      DISCOUNTEDFEES_RESPONSE ||= {

        "elements" => [
          {
            "joiningFee": {
              "net": 0,
              "tax": 0,
              "taxRate": 23,
              "gross": 0
            },
            "administarationFee": {
              "net": 15.45,
              "tax": 3.55,
              "taxRate": 23,
              "gross": 19
            },
            "membershipFee": {
              "net": 8.09,
              "tax": 1.86,
              "taxRate": 23,
              "gross": 9.95
            },
            "freezFee": {
              "net": 0,
              "tax": 0,
              "taxRate": 23,
              "gross": 0
            }
          }
        ]
      }
    end
  end
end
