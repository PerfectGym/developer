---
title: Ratings
---

# Ratings

This API allow users to rate classes and instructors.


## Overview

In PerfectGym user can rate two entities:
- Class types
- Instructors

To be able to submit rating user has to attend rated class. Using class `id` user rates
class type and instructor conducting class.

If class has no assigned instructor, user can rate only class type. 
Rating is an integer value of `1` to `5`.

Each class attandence allows user to submit rating for both: class type and instructor, 
even if element (class type or instructor) has been already rated. 
Subsequent ratings adds up to element rating.


## Ranking

Ratings data can be used to create class types or instructors rankings. Problem arises though: 
should element with rating `5` based on one submision be heigher then element with rating `4.7`
based on 20 submitions?

To solve this problem PerfectGym API calculates `rankingFactor` using Bayesian estimate. Sorting
elements by `rankingFactor` ascending sets elements in the proper ranking order.


##<a name="properties"></a> Rating properties

Rating is described by the following properties

Name         		| Type       | Description
-----|--------------|------------|------------
`rating`    		|`decimal`   | Avarage rating, if element was never rated, rating is `null`.
`submitionsCount`  	|`int`       | Ratings count or `0` if element was never rated.
`rankingFactor` 	|`decimal`   | Ranking factor allows to sort elements in proper ranking order.



## Rate class

    POST Classes/RateClass/{classId}/{userId}/{rating}

Request rates class on behalf of user.


### Path parameters

Name         | Type       | Description
-----|-------|------------|------------
`classId`    |`long`      | Class identifier. Request rates fitness class identified by `classId`.
`userId`     |`long`      | User identifier.  Request rates fitness class on behalf of user identified by `userId`.
`rating`     |`int`       | Rating. Value of `1` to `5`. Rating user assigns to selected classes.


### Response details properties

Name            		| Type      | Description
-----|------------------|------------------------
`classAlreadyRated`     |`bool`   	| `true` if user has already rated selected class.
`userDidNotAttendClass`	|`bool`   	| `true` if user didn't attend selected class.


### Example request

In this example we assign rating `5` to classes with id = `1677` by user with id = `40`.

``` command-line
curl -i 
     -X POST 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/api/Classes/RateClass/1677/40/5
```


### Example response

In this example class rating is unsuccessful because it has been already rated.
<%= headers 200 %>
<%= json(:rateclass_response) %>



## Rate instructor

    POST Classes/RateInstructor/{classId}/{userId}/{rating}

Request rates instructor conducting class on behalf of user.


### Path parameters

Name         | Type       | Description
-----|-------|------------|------------
`classId`    |`long`      | Class identifier. Request rates instructor conducting class identified by `classId`.
`userId`     |`long`      | User identifier.  Request rates instructor on behalf of user identified by `userId`.
`rating`     |`int`       | Rating. Value of `1` to `5`. Rating user assigns to selected instructor.


### Response details properties

Name            					| Type      | Description
-----|------------------------------|------------------------
`instructorAlreadyRated`     		|`bool`   	| `true` if user has already rated instructor.
`classWithoutAssignedInstructor`    |`bool`   	| `true` if class has no assigned instructor.
`userDidNotAttendClass`				|`bool`   	| `true` if user didn't attend selected class.



### Example request

In this example we assign rating `4` to instructor conducting classes with id = `1677` by user with id = `40`.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/api/Classes/RateInstructor/1677/40/4
```


### Example response

In this example instructor rating is unsuccessful because instructor has been already rated.
<%= headers 200 %>
<%= json(:rateinstructor_response) %>


