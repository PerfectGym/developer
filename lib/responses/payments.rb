module GitHub
  module Resources
    module Responses

      CONTRACTPAYMENTS_RESPONSE ||= {

        "elements" => [
          {
            "name": "",
            "description": "Basic 6m 50% Admin fee",
            "paymentType": "AdminFee",
            "amount": {
              "net": -15.45,
              "tax": -3.55,
              "taxRate": 23,
              "gross": -19
            },
            "dueDate": "2016-01-26T00:00:00",
            "id": 3890,
            "timestamp": 448449,
            "isDeleted": false
          },
          {
            "name": "",
            "description": "Basic 6m Prorata, 6 days",
            "paymentType": "Prorata",
            "amount": {
              "net": -3.13,
              "tax": -0.72,
              "taxRate": 23,
              "gross": -3.85
            },
            "dueDate": "2016-01-26T00:00:00",
            "id": 3889,
            "timestamp": 448447,
            "isDeleted": false
          },
          {
            "name": "",
            "description": "Basic w 2016-02 (discount 9,95 - 50%)",
            "paymentType": "Membership",
            "amount": {
              "net": -8.09,
              "tax": -1.86,
              "taxRate": 23,
              "gross": -9.95
            },
            "dueDate": "2016-02-02T00:00:00",
            "id": 3891,
            "timestamp": 448451,
            "isDeleted": false
          }
        ]      
      }



      PAYMENT_RESPONSE ||= {

        "elements" => [
          {
            "paymentUrl": "http://yourcompany.perfectgym.com/example_payment_url",
            "paymentId": "PGAPI_a12b55c5-d526-4e4e-ae9c"
          },          
        ]      
      }


      PAYMENTSTATUS_RESPONSE ||= {

        "elements" => [
          {
            "status": "Success",
            "errorMessage": ""
          }
        ]
      }
    end
  end
end
