---
title: Coupons
---

# Coupons

This API lets you create one day pass to club and send it to user.

{:toc}


## Create one day pass coupon ![alt text][EM]

    POST Coupons/AcquireCoupon

### Parameters 

Name        | Type       | Description
------------|------------|------------|------------
`firstName`    |`string`      | **Required**. User first name.
`lastName`     |`string`      | **Required**. User last name.
`email`        |`string`      | **Required**. User email.
`phoneNumber`  |`string`      | **Required**. User phone number.
`personalId`   |`string`      | **Required**. User personal identifier.
`homeClubId`   |`long`        | **Required**. Club identifier. 
`couponName`   |`string`      | **Required**. Coupon name.
`couponDescription`|`string`  | **Required**. Coupon description.
`couponValidFrom`  |`date`    | **Required**. Coupon valid from date.
`couponValidTo`    |`date`    | **Required**. Coupon valid to date.


### Example request

In this example we create one day pass for user

``` command-line
curl -X POST 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 
	 -d '{	    
	    "couponValidFrom": "2016-01-26T00:00:00",
	    "couponValidTo": "2017-01-26T00:00:00",
		"firstName": "John",
	    "lastName": "Fibo",
        "email": "john.fibo@perfectgym.pl",
	    "phoneNumber": "0048123456789",
	    "personalId": "88120834567",
	    "homeClubId": "0048123456789",
	    "couponName": "Coupon",
        "couponDescription": "Description"        
	}'  
     http://yoursubdomain.perfectgym.com/Api/Coupons/AcquireCoupon     	
```


### Example response

Return coupon identifier

<%= headers 200 %>
<%= json(:acquirecoupon_response) %>



[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"
