---
title: Booking
---

# Booking

This API allow users to sign up (book) and sign out (cancel) for fitness classes.

{:toc}


## Execute class booking

    POST Classes/BookClass

Request signs up user for fitness class.




### Parameters 

Name         | Type       | Description
-----|-------|------------|------------
`classId`    |`long`      | **Required**. Class identifier. Request signs up user for fitness class identified by `classId`.
`userId`     |`long`      | **Required**. User identifier.  Request signs up user identified by `userId` for fitness class.



### Response

[Class details][UserClassProperties] if booking is successful, or collection of [errors][Error] 
with [class booking error codes][ClassBookingErrorCode] otherwise.


### Example request

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



## Execute class cancel

    POST Classes/CancelBooking

Request cancels user booking.


### Parameters

Name         | Type       | Description
-----|-------|------------|------------
`classId`    |`long`      | **Required**. Class identifier. Request cancels user booking for fitness class identified by `classId`.
`userId`     |`long`      | **Required**. User identifier.  Request cancels user identified by `userId` booking for fitness class.


### Response

[Class details][UserClassProperties] if class cancel is successful, or collection of [errors][Error] 
with [class cancel error codes][ClassCancelErrorCode] otherwise.


### Example request

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



[ClassesTypes]:  /api/classes/classestypes#properties
[UserClassProperties]: /api/classes/userclasses#properties
[Error]: /appendix/datatypes/error
[ClassBookingErrorCode]: /appendix/errorcodes/classbookingerrorcode
[ClassCancelErrorCode]: /appendix/errorcodes/classcancelerrorcode
