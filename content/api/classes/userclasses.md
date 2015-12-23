---
title: User classes
---

# User classes

This API gives you read only access to list of fitness classes 
available in your gym.

{:toc}



## Overview 

User class represents fitness class conducted in your club. User classes share most 
of its data with [Classes][Classes], and holds additional properties specific to club user.


## Class properties

User class holds the same data as [Classes][ClassesProperties] plus user specyfic properties.
Only user specyfic properties are described here.


Name            		| Type    | Description
-----|------------------|----------------------
`booked`     			|`bool`   | `true` if user is signed up for classes, `false` otherwise.
`attended`    			|`bool`   | `true` if user has attended classes, `false` otherwise.
`userClassRating`       |`int`    | User class rating. Value of `1` - `5`, represents user rating of selected class. `null` if user didn't rate class.
`userInstructorRating`  |`int`    | User instructor rating. Value of `1` - `5`, represents user rating of instructor conducting class. `null` if user didn't rate instructor.



## List user classes in a given timeframe

    GET Classes/GetClassesForUser/{userId}/{clubId}/{startDate}/{endDate}  

Request returns user classes list.


### Path parameters

Name         | Type       | Description
-----|-------|------------|------------
`userId`     |`long`      | UserId identifier. Request returns classes data for user identified by `userId`.
`clubId`     |`long`      | Club identifier. Request returns classes that take place in club identified by `clubId`.
`startDate`  |`datetime`  | Start date. Request returns classes that starts leter then `startDate`.
`endDate`    |`datetime`  | End date. Request returns classes that ends earlier then `endtDate`.


### Example request

In this example we fetch list of all user (with id = `40`) classes in club with id = `2`, that starts in december 2015

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://fibo.waw-piotrekz.creadhoc.local/ExternalApi/Classes/GetClassesForUser/40/2/2015-12-01/2015-12-31/
```


### Example response

<%= headers 200 %>
<%= json(:userclasses_response) %>



## List classes with timestamp 

    GET Classes/GetClassesForUserWithTimestamp/{userId}/{clubId}/{timestamp}

Request returns user classes list.


### Path parameters

Name         | Type   | Description
-----|-------|--------|------------
`userId`     |`long`  | UserId identifier. Request returns classes data for user identified by `userId`.
`clubId`     |`long`  | Club identifier. Request returns classes that take place in club identified by `clubId`.
`timestamp`  |`long`  | Timestamp. Request returns classes with timestamp grater then `timestamp`


### Example request

In this example we fetch list of all user (with id = `40`) classes in club with id = `2`, with timestamp greater then `254000`

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/api/Classes/GetClassesForUserWithTimestamp/40/2/254000
```


### Example response

<%= headers 200 %>
<%= json(:userclasses_response) %>




[Classes]:  /api/classes/classes
[ClassesProperties]:  /api/classes/classes#properties
