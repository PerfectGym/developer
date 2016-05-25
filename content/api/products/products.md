---
title: Products
---

# Products

Represents product available in your club.

{:toc}


## Products properties

Product is described by the following properties

Name            | Type                        | Description
-----|----------|------------------------------------------
`name`          |`string`                     | Product name.
`price`         |`decimal`                    | Product price.
`isActive`		|`bool` 				      | Is product available.
`unitOfMeasure` |`string`                     | Unit of measure.
`type`          |`string`                     | Product type.
`category`      |`string`                     | Product category.
`createdTime`   |`datetime`                   | Product added date.





## List products in club ![alt text][EM] 

    GET Products/Products

Returns products list.


### Parameters

Name             | Type       | Description
-----|-----------|------------|------------
`clubId`         |`long`      | **Required**. Club identifier. Request returns products in club identified by `clubId`.
`productTarget`  |`string`    | Defined place where product is available.
`clubServiceType`|`string`    | Service type.



### Example request

In this example we fetch products in club with `id` = `2`

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Products/Products?clubId=2       
```


### Example response

<%= headers 200 %>
<%= json(:product_response) %>


## List product targets ![alt text][EM] 

    GET Products/ProductTargets 

Returns targets list.


### Example request

In this example we fetch list of targets

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Products/ProductTargets
        
```
## List club service types ![alt text][EM] 

    GET Products/ClubServiceTypes

Returns club service types list.


### Example request

In this example we fetch list of service types

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Products/ClubServiceTypes
        
```


[PrepaidStatus]: /appendix/datatypes/prepaiddetails
[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"
