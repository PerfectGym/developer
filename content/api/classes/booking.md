---
title: Booking
---

# Booking

This API allow users to sign up (book) and sign out (cancel) for fitness classes.


## Execute class booking

    POST Classes/BookClass/{classId}/{userId} 

Request signs up user for fitness class.


### Path parameters

Name         | Type       | Description
-----|-------|------------|------------
`classId`    |`long`      | Class identifier. Request signs up user for fitness class identified by `classId`.
`userId`     |`long`      | User identifier.  Request signs up user identified by `userId` for fitness class.


### Response details properties

Name            							| Type      | Description
-----|----------|----------------------------------------------------
`standbyList`     							|`bool`   	| `true` if user has beed added to standby list.
`classAlreadyBooked`     					|`bool`   	| `true` if class is already booked by the user.
`bookingRejected`    						|`bool`     | `true` if booking is rejected. Rejection reason message can be accessed via `rejectionReason` parameter.
`bookingBlockedForUser`            			|`bool`     | `true` if booking is blocked for user. Booking can be blocked if user signed up for class and didn't show up.
`bookingInZoneNotAllowed`     				|`bool`     | `true` if user membership does not allow to book classes in a specific club zone.
`bookingWithDebitNotAllowed`     			|`bool`     | `true` if user has debit.
`bookingWithoutActiveContractNotAllowed`	|`bool`     | `true` if user does not have an active membership.
`bookingNotAllowed`       					|`bool`     | `true` if booking for selected classes is not allowed.
`bookingToLate`								|`bool`     | `true` if it is too late to book selected class.
`bookingToSoon`								|`bool`     | `true` if it is to early to book selected class.
`dailyBookingLimitReached`					|`bool`     | `true` if daily club booking limit has beed exceeded.
`dailyZoneBookingLimitReached`				|`bool`     | `true` if daily club zone booking limit has been exceeded.
`userNotAllowedToAccessClub`				|`bool`     | `true` if user membership does not allow to access club during selected class.
`standbyListLimitReached`					|`bool`     | `true` if standby list limit has beed exceeded.
`rejectionReason`							|`string`	| Rejection reason message.


### Example request

In this example we sign up user with id = `40` for classes with id = `1677`

``` command-line
curl -i 
     -X POST 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/api/Classes/BookClass/1677/40
```


### Example response

In this example booking is unsuccessful because it is to late to book selected classes.
<%= headers 200 %>
<%= json(:bookclass_response) %>



## Execute class cancel

    POST Classes/CancelBooking/{classId}/{userId}

Request cancels user booking.


### Path parameters

Name         | Type       | Description
-----|-------|------------|------------
`classId`    |`long`      | Class identifier. Request cancels user booking for fitness class identified by `classId`.
`userId`     |`long`      | User identifier.  Request cancels user identified by `userId` booking for fitness class.


### Response details properties

Name            	| Type      | Description
-----|--------------|------------------------
`classNotBooked`    |`bool`   	| `true` if user has not been signed up for class.
`toLateToCancel`	|`bool`   	| `true` if it is to late to cancel selected class.


### Example request

In this example we cancel booking of user with id = `40` for classes with id = `1677`

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/api/Classes/CancelBooking/1677/40
```


### Example response

In this example class cancelation is unsuccessful because class was not booked.
<%= headers 200 %>
<%= json(:cancelclass_response) %>




[ClassesTypes]:  /api/classes/classestypes#properties
