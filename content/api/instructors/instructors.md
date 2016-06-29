---
title: Instructors
---

# Instructors

Instructor is a summary representation of a fitness class instructor.

{:toc}


## <a name="properties"></a>Instructor properties

Instructor is described by the following properties

Name            | Type                        | Description
-----|----------|------------------------------------------
`id`            |`long`                       | Unique identifier of instructor.
`timestamp`    	|`long`     				  | Timestamp. Indicates when resource was last modified.
`firstName`     |`string`                     | Instructor's name.
`lastName`      |`string`                     | Instructor's last name.
`displayName`   |`string`                     | Instructor's display name.
`email`         |`string`                     | Instructor's email.
`photoUrl`		|`string`					  | Instructor's photo URL.
`sex`           |`string`                     | Instructor's sex. <br><strong>Possible values</strong>: <br><ul><li>Male</li><li>Female</li></ul>
`rating`        |[Rating][]					  | Instructor's rating.
`isActive`      |`bool`                       | Indicates if instructor is active.
`isDeleted`     |`bool`                       | Indicates if resource is deleted.
`employeePosition`|`string`                   | Instructor's position.
`clubs`         |`Array`                      | Instructor available in clubs.




## List instructors with timestamp ![alt text][EM] ![alt text][UM]

    GET Instructors/Instructors

Returns paginated list of instructors available in your company.


### Parameters

Name         | Type   | Description
-----|-------|--------|------------
`timestamp`  |`long`  | Timestamp. Request returns instructors with timestamp grater then `timestamp`, defaults to `0`
`page`       |`int`   | Limited number of results (page size `100`)


### Example request

In this example we fetch list of all instructors with `timestamp` greater then `254000`

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Instructors/Instructors?timestamp=254000
```


### Example response

<%= headers 200 %>
<%= json(:instructors_response) %>


## Availability of instructors ![alt text][EM] 

    GET Instructors/Instructor/Available

Returns paginated list of instructors available in club at a certain time.


### Parameters

Name         | Type   	   | Description
-----|-------|-------------|------------
`page`       |`int`   	   | Limited number of results (page size `100`)
`clubId`     |`long`  	   | **Required**. Club identifier
`employeeId` |`long`   	   | **Required**. Employee identifier
`startDate`  |`datetime`   | **Required**. Start date
`endDate`    |`datetime`   | **Required**. End date


### Example request

In this example we fetch list of employee availability with id `6456` between `2016-01-01` and `2017-01-01`

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Instructors/Instructor/Available?clubId=38&employeeId=6456&startDate=2016-01-01&endDate=2017-01-01
```


### Example response

<%= headers 200 %>
<%= json(:instructors_available_response) %>


## Instructor training schedule  ![alt text][EM] 

    GET Instructors/Instructor/Sheduler

Returns list of instructor activity.


### Parameters

Name         | Type   	   | Description
-----|-------|-------------|------------
`page`       |`int`   	   | Limited number of results (page size `100`)
`clubId`     |`long`  	   | **Required**. Club identifier
`employeeId` |`long`   	   | **Required**. Employee identifier
`startDate`  |`datetime`   | **Required**. Start date
`endDate`    |`datetime`   | **Required**. End date


### Example request

In this example we fetch list of activity assigned to employee with id `6456` between `2016-01-28` and `2016-01-29`

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Instructors/Instructor/Sheduler?clubId=38&employeeId=6456&startDate=2016-01-28&endDate=2016-01-29
```


### Example response

<%= headers 200 %>
<%= json(:instructors_sheduler_response) %>





[Rating]:  /api/classes/ratings#properties

[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"