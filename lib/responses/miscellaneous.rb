
module GitHub
  module Resources
    module Responses

      COUNTRIES_RESPONSE ||= {

        "elements" => [
          {
            "id": 187,
            "symbol": "PL",
            "name": "Poland",
            "nativeName": "Polska"
          }
        ]              
      }


      CITIES_RESPOSNE ||= {

        "elements" => [

          {
            "id": 1695965,
            "name": "Bukowno Warszawa",
            "country": {
              "id": 187,
              "symbol": "PL",
              "name": "Poland",
              "nativeName": "Polska"
            }
          },
          {
            "id": 1722157,
            "name": "Warszawa",
            "country": {
              "id": 187,
              "symbol": "PL",
              "name": "Poland",
              "nativeName": "Polska"
            }
          }
        ]
      }
     
    end
  end
end



