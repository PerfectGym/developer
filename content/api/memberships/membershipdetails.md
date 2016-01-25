---
title: Membership details
---

# Membership details

Membership details is detaild representation of single membership type in your company. 

{:toc}


## Membership details properties

Club details holds the same data as [Membership][MembershipProperties] plus some detailed attributes of a membership.
Only membership details specyfic properties are described here.


Name            	 | Type      | Description
---------------------|-----------|---------------
`startDate`          |`string`   | Club display name.
`endDate`     		 |`string`   | Club detailed description.
`accessRules`        |`array`    | An array of [Access rules][AccessRule] objects, each representing club access rules for membership holder.
`allowedZoneTypes`   |`array`    | An array of [Club Zone Types][ClubZoneType] objects, each representing club zone type membership holder has access to.
`paymentPlans`       |`array`    | An array of [Payment Plans][PaymentPlanProperties] objects, each representing payment plan available with given membership type.
          


## Retrive detailed information about specyfic membership type.

    GET Memberships/Membership/{membershipId}

Returns detailed membership type informations.


### Path parameters

Name            | Type       | Description
----------------|------------|------------
`membershipId`  |`long`      | Membership type identifier.



### Example request

In this example we fetch membership type with id = `20` detailed information.

``` command-line
curl -i 
     -X GET 
     -H "Authorization: Bearer  $ACCESS_TOKEN"  
     http://yoursubdomain.perfectgym.com/api/Memberships/Membership/20     	
```


### Example response

<%= headers 200 %>
<%= json(:membershipdetails_response) %>



[MembershipProperties]: /api/memberships/memberships#properties 
[AccessRule]: /appendix/datatypes/clubaccessrule
[ClubZoneType]: /appendix/datatypes/clubzonetype
[PaymentPlanProperties]: /api/memberships/paymentplans#properties

