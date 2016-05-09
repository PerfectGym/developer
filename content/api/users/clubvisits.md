---
title: Club visits
---

# Club visits

Club visit is a summary representation of a single club member visit to your club.

{:toc}


## <a name="properties"></a>Club visit properties

Club visit is described by the following properties

Name            | Type            | Description
----------------|-----------------|-----------------------------------------
`id`            |`long`           | Unique identifier of club visit.
`timestamp`    	|`long`     	  | Timestamp. Indicates when resource was last modified.
`enterDate`     |`datetime`       | Club entrance date.
`exitDate`      |`datetime`       | Club exit date.
`club` 			|[Club][Club]     | Club user has visited.
`isDeleted`     |`bool`           | Indicates if resource is deleted.



## List user club visits with timestamp ![alt text][EM] ![alt text][UM] 

    GET Users/ClubVisits

Returns paginated list of user's club visits.


### Employee mode parameters

Name         | Type   | Description
-------------|--------|--------------------
`userId`  	 |`long`  | **Required**. User identifier. Request returns club visits for user identified with `userId`.
`timestamp`  |`long`  | **Required**. Timestamp. Request returns club visits with timestamp grater then `timestamp`, defaults to `0`


### User mode parameters

Name         | Type   | Description
-----|-------|--------|------------
`timestamp`  |`long`  | Timestamp. Request returns club visits with timestamp grater then `timestamp`, defaults to `0`


### Example request

In this example we fetch list of all user (identified with `userId` = `123`) club visits with `timestamp` greater then `254000`

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Users/ClubVisits?userId=123&timestamp=254000
```


### Example response

<%= headers 200 %>
<%= json(:userclubvisits_response) %>






[Club]: /api/clubs/clubs

[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"