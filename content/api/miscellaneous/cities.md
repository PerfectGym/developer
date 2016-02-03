---
title: Cities
---

# Cities

{:toc}


## <a name="properties"></a>City properties

Country is described by the following properties

Name         | Type     		  | Description
-------------|--------------------|-----------------------
`id`         |`long`    		  | Unique identifier of city.
`name`       |`string`  		  | City name.
`country` 	 |[Country][Country]  | Contry city is located in.




## List cities with given name

    GET Geo/Cities/{countryId}

Returns paginated cities list, in country identified by `countryId`.


### Query string parameters

Name    | Type     | Description
--------|----------|---------------------
`name`  |`string`  | Optional. City name. Request returns cities with name containing `name` parameter value.
`page`  |`int`     | Optional. Page number, defaults to `1`.


### Example request

In this example we fetch list of all polish cities that name contains `Warszawa` string.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/api/Geo/Cities?name=Warszawa
```


### Example response

<%= headers 200 %>
<%= json(:CITIES_RESPOSNE) %>


[Country]: /api/miscellaneous/countries#properties
