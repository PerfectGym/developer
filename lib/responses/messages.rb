
module GitHub
  module Resources
    module Responses      

      
      MESSAGES_RESPONSE ||= {  

        "elements" => [                              
          {
            "title": "Shoes",
            "id": 10252,
            "timestamp": 692590,
            "isDeleted": false
          },          
        ]              
      }      


      MESSAGEDETAILS_RESPONSE ||= {  

        "elements" => [                              
          {
            "text": "Dear club member, you have left your shoes in our club. Please collect it at a reception desk.",
            "status": "Planned",
            "read": false,
            "comment": "",
            "title": "Shoes",
            "id": 10252,
            "timestamp": 692590,
            "isDeleted": false,
            "attachments":[{
				          "id": 10358,
				          "name": "file.pdf"
				          }]
          }          
        ]              
      }      
      
    end
  end
end

