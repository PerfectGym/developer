---
title: Freeze reasons
---

# Freeze reasons

Freeze reason represent a reason user wants to suspend membership contract.


{:toc}



## <a name="properties"></a>Freeze reason properties

Freeze reason is described by the following properties

Name       	| Type      | Description
------------|-----------|-----------
`id`      	|`long`   	| Freeze reason identifier.
`name`      |`string`   | Freeze reason name.



## List available freeze reasons ![alt text][EM]

    GET Contracts/FreezeReasons

Returns list of available freeze reasons.



### Example request

In this example we fetch all available freeze reasons.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/Api/Contracts/FreezeReasons
```


### Example response

<%= headers 200 %>
<%= json(:freezereasons_response) %>

[EM]: /assets/images/employee.png "Employee mode"
[UM]: /assets/images/user.png "User mode"

