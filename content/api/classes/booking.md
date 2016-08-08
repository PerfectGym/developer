---
title: Booking
---

# Booking

This API allow users to sign up (book) and sign out (cancel) for fitness classes.

{:toc}


## Execute class booking ![alt text][EM] ![alt text][UM]

    POST Classes/BookClass

Signs up user for fitness class.


### Employee mode parameters 

Name         | Type       | Description
-----|-------|------------|------------
`classId`    |`long`      | **Required**. Class identifier. Request signs up user for fitness class identified with `classId`.
`userId`     |`long`      | **Required**. User identifier.  Request signs up user identified with `userId` for fitness class.


### User mode parameters 

Name         | Type       | Description
-----|-------|------------|------------
`classId`    |`long`      | **Required**. Class identifier. Request signs up authenticated user for fitness class identified by `classId`.



### Response

[Class details][UserClassProperties] if booking is successful, or collection of [errors][Error] 
with [class booking error codes][ClassBookingErrorCode] otherwise.


### Employee mode example request

In this example we sign up user with `id` = `40` for classes with `id` = `1677`

``` command-line
curl -i 
     -X POST 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Classes/BookClass/
     	?classId=1677
     	&userId=40
```


### Example response

<%= headers 200 %>
<%= json(:bookclass_response) %>


### Example error response

Subsequent booking for class with `id` =`1677` and for user with `id` = `40` generates following error:

<%= headers 400 %>
<%= json(:bookclass_error_response) %>




## Execute class cancel ![alt text][EM] ![alt text][UM]

    POST Classes/CancelBooking

Cancels user booking.


### Employee mode parameters

Name         | Type       | Description
-----|-------|------------|------------
`classId`    |`long`      | **Required**. Class identifier. Request cancels user booking for fitness class identified by `classId`.
`userId`     |`long`      | **Required**. User identifier.  Request cancels user identified by `userId` booking for fitness class.


### User mode parameters

Name         | Type       | Description
-----|-------|------------|------------
`classId`    |`long`      | **Required**. Class identifier. Request cancels authenticated user booking for fitness class identified by `classId`.



### Response

[Class details][UserClassProperties] if class cancel is successful, or collection of [errors][Error] 
with [class cancel error codes][ClassCancelErrorCode] otherwise.


### Employee mode example request

In this example we cancel booking of user with `id` = `40` for classes with `id` = `1677`

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Classes/CancelBooking
     	?classId=1677
     	&userId=40
```
 

### Example response

<%= headers 200 %>
<%= json(:cancelclass_response) %>


### Example error response

Subsequent cancel for class with `id` =`1677` and for user with `id` = `40` generates following error:

<%= headers 400 %>
<%= json(:cancelclass_error_response) %>



## Execute private training booking ![alt text][UM]

    POST Classes/BookClass/PersonalTraining

Signs up user for fitness personal training.



### User mode parameters 

Name         | Type       | Description
-----|-------|------------|------------
`title`      |`string`    | **Required**. Reservation title.
`startDate`  |`datetime`  | **Required**. Reservation starting time.
`endDate`    |`datetime`  | **Required**. Reservation for a specific time .
`clubId`     |`long`      | **Required**. Club identifier.
`employeeId` |`long`      | **Required**. Employee identifier. Employee leading personal training
`description`|`string`    | 			  Reservation comment
`clubZoneId` |`long`      | 			  Club zone identifier. 
`productId`  |`long`      | 			  Product identifier. Product bought by user, related to personal training



### User mode example request

In this example we sign up user for personal training with specific employee `id` = `1677`

``` command-line
curl -X POST 
	 -H "Authorization: Bearer $ACCESS_TOKEN" 
	 -H "Content-Type: application/json" 
	 -d '{
	    "title": "Reservation",
	    "startDate": "2015-12-03T06:15:00",
		"endDate": "2015-12-03T08:15:00",
	    "clubId": 1,
	    "employeeId": "1677",
	    "clubZoneId": 12       	    
	}' 
	http://yoursubdomain.perfectgym.com/Api/Classes/BookClass/PersonalTraining
```


### Example response

<%= headers 200 %>
<%= json(:bookclasspt_response) %>






[ClassesTypes]:  /api/classes/classestypes#properties
[UserClassProperties]: /api/classes/userclasses#properties
[Error]: /appendix/datatypes/error
[ClassBookingErrorCode]: /appendix/errorcodes/classbookingerrorcode
[ClassCancelErrorCode]: /appendix/errorcodes/classcancelerrorcode

[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"
