---
title: Countries
---

# Countries

{:toc}


## <a name="properties"></a>Country properties

Country is described by the following properties

Name         | Type     | Description
-------------|----------|-----------------------
`id`         |`long`    | Unique identifier of country.
`symbol`  	 |`string`  | Country symbol.
`name`       |`string`  | Country name.
`nativeName` |`string`  | Country name in native language.




## List countries with given name ![alt text][EM]

    GET Geo/Countries

Returns paginated countries list.


### Parameters

Name    | Type     | Description
--------|----------|---------------------
`name`  |`string`  | Country name. Request returns countries with with name containing `name` parameter value.
`page`  |`int`     |  Page number, defaults to `1`.


### Example request

In this example we fetch list of all countries that name contains `pol` string.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Geo/Countries?name=pol
```


### Example response

<%= headers 200 %>
<%= json(:countries_response) %>

[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"