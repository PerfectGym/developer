---
title: Products
---

# Products

Represents product available in your club.

{:toc}


## <a name="properties"></a>Products properties

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

## Buy product ![alt text][EM]

    POST Payments/Product/Buy

Use to buy product using user's prepaid account 

### Body parameters

Name 	     	    | Type  	| Description
--------------------|-----------|--------------------
`userId`  	   		|`long`     | **Required**. User identifier.
`productId`  	    |`long`     | **Required**. Product identifier.
`quantity`  	    |`long`     | **Required**. Product quantity.


### Response

[Prepaid Status][PrepaidStatus] 



### Example request

In this example we request to buy product with `productId` = `2` for user identified with `id` = `236`.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     -H "Content-Type: application/json" 
     -d '{
        	"userId": 236,        	
    		"productId": 2,
			"quantity": 1

    }' 
    http://yoursubdomain.perfectgym.com/Api/Payments/Product/Buy     	
```


### Example response

<%= headers 200 %>
<%= json(:prepaidstatus_response) %>

## List product targets ![alt text][EM] 

    GET Products/ClubServiceType

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

    GET Products/ClubServiceType

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
