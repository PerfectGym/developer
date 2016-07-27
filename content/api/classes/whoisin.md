---
title: Who is in
---

# Who is in

This API gives access to information about users signed up for classes.

{:toc}


## List users signed up for given classes ![alt text][EM]

    GET Classes/WhoIsIn

Returns list of users signed up for a given class. Only users that agreed to be listed are included. For details see [Update existing user][UpdateExistingUser], `showActivityInClub` property.


### Parameters 

Name        | Type       | Description
------------|------------|------------|------------
`classId`   |`long`      | **Required**. Class identifier. Request returns list of users signed up for class identified with `classId`.



### Response

Collection of [Users][User].


### Example request

In this example we fetch list of users signed up for class identified with `id` = `1677`

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Classes/WhoIsIn/
     	?classId=1677     	
```


### Example response

<%= headers 200 %>
<%= json(:whoisinusers_response) %>



[User]: /api/users/user
[UpdateExistingUser]: /api/users/addupdateuser#update_user

[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"
