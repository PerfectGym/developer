---
title: Who is in
---

# Who is in

This API gives access to information about users currently present in your club.

{:toc}


## List users present in your club ![alt text][UM]

    GET Clubs/WhoIsIn

Returns list of users present in club. Only users that agreed to be listed are included. For details see [Update existing user][UpdateExistingUser], `showActivityInClub` property.


### Parameters 

Name        | Type       | Description
------------|------------|------------|------------
`clubId`    |`long`      | **Required**. Club identifier. Request returns list of users present in club identified with `clubId`.



### Response

Collection of [Users][User].


### Example request

In this example we fetch list of users present in club identified with `id` = `16`

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Clubs/WhoIsIn/
     	?clubId=16     	
```


### Example response

<%= headers 200 %>
<%= json(:whoisinusers_response) %>



[User]: /api/users/user
[UpdateExistingUser]: /api/users/addupdateuser#update_user

[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"
