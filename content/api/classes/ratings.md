---
title: Ratings
---

# Ratings

This API allow users to rate classes and instructors.

{:toc}


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



## Execute class rating

    POST Classes/RateClass

Request rates class on behalf of user.


### Parameters

Name         | Type       | Description
-------------|------------|-----------------------
`classId`    |`long`      | **Required**. Class identifier. Request rates fitness class identified by `classId`.
`userId`     |`long`      | **Required**. User identifier.  Request rates fitness class on behalf of user identified by `userId`.
`rating`     |`int`       | **Required**. Rating. Value of `1` to `5`. Rating user assigns to selected classes.


### Response

[Class details][UserClassProperties] if class rating is successful, or collection of [errors][Error] 
with [class rating error codes][ClassRatingErrorCode] otherwise.


### Example request

In this example we assign rating `5` to classes with `id` = `1677` by user with `id` = `40`.

``` command-line
curl -i 
     -X POST 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/api/Classes/RateClass
        ?classId=1677
     	&userId=40
        &classRating=5
```


### Example response

<%= headers 200 %>
<%= json(:rateclass_response) %>


### Example error response

Subsequent rating for class with `id` = `1677` and for user with `id` = `40` generates following error:

<%= headers 400 %>
<%= json(:rateclass_error_response) %>



## Execute instructor rating

    POST Classes/RateInstructor

Request rates instructor conducting class on behalf of user.


### Parameters

Name         | Type       | Description
-------------|------------|------------------------
`classId`    |`long`      | **Required**. Class identifier. Request rates instructor conducting class identified by `classId`.
`userId`     |`long`      | **Required**. User identifier.  Request rates instructor on behalf of user identified by `userId`.
`rating`     |`int`       | **Required**. Rating. Value of `1` to `5`. Rating user assigns to selected instructor.


### Response

[Class details][UserClassProperties] if instructor rating is successful, or collection of [errors][Error] 
with [instructor rating error codes][InstructorRatingErrorCode] otherwise.


### Example request

In this example we assign rating `4` to instructor conducting classes with `id` = `1677` by user with `id` = `40`.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/api/Classes/RateInstructor
        ?classId=1677
        &userId=40
        &isntructorRating=4
```


### Example response

<%= headers 200 %>
<%= json(:rateinstructor_response) %>


### Example error response

Subsequent instructor rating for class with `id` = `1677` and for user with `id` = `40` generates following error:

<%= headers 400 %>
<%= json(:rateinstructor_error_response) %>


[Error]: /appendix/datatypes/error
[UserClassProperties]: /api/classes/userclasses#properties
[ClassRatingErrorCode]: /appendix/errorcodes/classratingerrorcode
[InstructorRatingErrorCode]: /appendix/errorcodes/instructorratingerrorcode


