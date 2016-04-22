---
title: Memberships
---

# Memberships

Each user to complete club joining process must select membership type. Membership type states 
which clubs user can access in which hours and club zones that can be used by the user.
Membership is a summary representation of single membership type in your company.

{:toc}


## <a name="properties"></a>Membership properties

Membership is described by the following properties

Name            | Type      | Description
-----|----------|----------------------
`id`            |`long`     | Unique identifier of membership.
`timestamp`    	|`long`     | Timestamp. Indicates when resource was last modified.
`name`    		|`string`   | Membership's name.
`isActive`     	|`bool`     | Indicates if membership is marked as active.
`isDeleted`     |`bool`     | Indicates if resource is deleted.



## List memberships with timestamp ![alt text][EM]

    GET Memberships/Memberships

Returns paginated membership list.


### Parameters

Name         | Type   | Description
-----|-------|--------|------------
`timestamp`  |`long`  | Timestamp. Request returns memberships with timestamp grater then `timestamp`, defaults to `0`.


### Example request

In this example we fetch list of all memberships (`timestamp` parameter defaults to `0`) 
available in a company.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Memberships/Memberships?timestamp=0
```


### Example response

<%= headers 200 %>
<%= json(:memberships_response) %>



## List memberships available in a given club ![alt text][EM]

    GET Memberships/Memberships

Returns paginated memberships list available in given club.


### Parameters

Name      | Type   | Description
----------|--------|------------
`clubId`  |`long`  | **Required**. Club identifier.
`page`    |`int`   | Page number, defaults to `1`.


### Example request

In this example we fetch list of all memberships available in club identified with `clubId` = `16`.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Memberships/Memberships?clubId=16
```


### Example response

<%= headers 200 %>
<%= json(:membershipsinclub_response) %>

[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"

