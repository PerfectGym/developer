---
title: User classes
---

# User classes

User class represents fitness class conducted in your club.

{:toc}


## <a name="properties"></a>Class properties

User class holds the same data as [Classes][ClassesProperties] plus user specyfic properties.
Only user specyfic properties are described here.


Name            		| Type    | Description
-----|------------------|----------------------
`booked`     			|`bool`   | `true` if user is signed up for classes, `false` otherwise.
`attended`    			|`bool`   | `true` if user has attended classes, `false` otherwise.
`userClassRating`       |`int`    | User class rating. Value of `1` - `5`, represents user rating of selected class. `null` if user didn't rate class.
`userInstructorRating`  |`int`    | User instructor rating. Value of `1` - `5`, represents user rating of instructor conducting class. `null` if user didn't rate instructor.



## List user classes in a given timeframe ![alt text][EM] ![alt text][UM]

    GET Classes/UserClasses

Returns paginated user classes list.


### Employee mode parameters 

Name         | Type       | Description
-----|-------|------------|------------
`userId`     |`long`      | **Required**. User identifier. Request returns classes data for user identified by `userId`.
`clubId`     |`long`      | **Required**. Club identifier. Request returns classes that take place in club identified by `clubId`.
`startDate`  |`datetime`  | **Required**. Start date. Request returns classes that starts leter then `startDate`.
`endDate`    |`datetime`  | **Required**. End date. Request returns classes that ends earlier then `endtDate`.
`page`       |`int`       | Optional. Page number, defaults to `1`.

### User mode parameters 

Name         | Type       | Description
-----|-------|------------|------------
`clubId`     |`long`      | **Required**. Club identifier. Request returns classes for authenticated user that take place in club identified by `clubId`.
`startDate`  |`datetime`  | **Required**. Start date. Request returns classes that starts leter then `startDate`.
`endDate`    |`datetime`  | **Required**. End date. Request returns classes that ends earlier then `endtDate`.
`page`       |`int`       | Optional. Page number, defaults to `1`.



### Employee mode example request

In this example we fetch first 100 of all user (with id = `40`) classes in club with `id` = `2`, that starts in december 2015

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Classes/UserClasses
        ?userId=40
        &clubId=2
        &startDate=2015-12-01T00:00:00
        &endDate=2015-12-31T23:59:59
```


### Example response

<%= headers 200 %>
<%= json(:userclasses_response) %>



## List user classes with timestamp ![alt text][EM] ![alt text][UM]

    GET Classes/UserClasses

Returns paginated user classes list. All feature classes and all past classes user has attended are included.


### Employee mode parameters 

Name         | Type   | Description
-----|-------|--------|------------
`userId`     |`long`  | **Required**. User identifier. Request returns classes data for user identified by `userId`.
`clubId`     |`long`  | **Required**. Club identifier. Request returns classes that take place in club identified by `clubId`.
`timestamp`  |`long`  | Timestamp. Request returns classes with timestamp grater then `timestamp`, defaults to `0`.


### User mode parameters 

Name         | Type   | Description
-----|-------|--------|------------
`clubId`     |`long`  | **Required**. Club identifier. Request returns classes for authenticated user that take place in club identified by `clubId`.
`timestamp`  |`long`  | Timestamp. Request returns classes with timestamp grater then `timestamp`, defaults to `0`.


### Employee mode example request

In this example we fetch list of all user (with id = `40`) classes in club with `id` = `2`, with timestamp greater then `254000`

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Classes/UserClasses
        ?userId=40
        &clubId=2
        &timestamp=254000
```


### Example response

<%= headers 200 %>
<%= json(:userclasses_response) %>



## Retrive user class with class identifier ![alt text][EM] ![alt text][UM]

    GET Classes/UserClass

Returns individual user class.


### Employee mode parameters 

Name         | Type   | Description
-------------|--------|--------------------
`classId`    |`long`  | **Required**. Class identifier. Request returns class identified by `classId`.
`userId`     |`long`  | **Required**. User identifier. Request returns class data for user identified by `userId`.

### User mode parameters 

Name         | Type   | Description
-------------|--------|--------------------
`classId`    |`long`  | **Required**. Class identifier. Request returns class identified by `classId` for authenticated user.



### Employee mode example request

In this example we fetch data for class identified with `id` = `1677` for user identified with `id` = `40`

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Classes/UserClass
        ?classId=1677
        &userId=40        
```


### Example response

<%= headers 200 %>
<%= json(:userclasses_response) %>




[Classes]:  /api/classes/classes
[ClassesProperties]:  /api/classes/classes#properties

[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"
