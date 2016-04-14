---
title: Requests
---

# Requests

This describes PerfectGym API requests basics.

{:toc}



## Request parameters

You provide parameters to PerfectGym API with query string and body parameters.

The format for query string parameters is the full resource URL followed by a question mark, and the parameters. 

- For `GET` requests you provide parameters in a query string you append to your request's URL
- For `POST` requests you provide parameters in query string or as JSON in request's body (with Content-Type of 'application-json' header) 
when explicitly required.

Available query string and body parameters are described for each API endpoint.


### Example
In this example, we fetch club (with id = `16`) details. We request that returned data be in `EN` language.
For detailed request description have a look [here][ClubDetails].
	
    GET Clubs/Club
``` command-line
$ curl -i https://yourcompany.perfectgym.com/Api/Clubs/Club?clubId=16
```

Let's break down this request:
- `https://yourcompany.perfectgym.com/Api/` is a base url for PerfectGym API
- `Clubs/Club` - resource path
- `?clubId`-  `clubId` parameter that uniquly identifies resource you want to work with.

You can read it like so: from all clubs, select club with identifier of value `16`
	


## Filter and pagination parameters

We use query string parameters for filtering and pagination in the PerfectGym API. 
Available query string parameters are described for each API endpoint.


### Example
In this example, we retrive classes availeble in club identified by `id` of value `1`, that take place
between `2016-01-01` and `2016-01-31`

	GET Classes/Classes
``` command-line
$ curl -i https://yourcompany.perfectgym.com/Api/Classes/Classes
	?clubId=1
	&startDate=2016-01-01T00:00:00
	&endDate=2016-01-31T23:59:59
```

For details about pagination with `page` parameter go to [Pagination with query string parameters][Pagination]



## Timestamp parameter

Requests with timestamp parameter returns list of resources added or changed after point in time represented
by `timestamp` value. Result is ordered by `timestamp` ascending. This let's you fetch only resources that 
changed since your last api call.

### Example
In this example we fetch list of classes from the club with `id` of `1` and with `timestamp` 
value greater then `654321`.

	GET Classes/Classes
``` command-line
$ curl -i https://yourcompany.perfectgym.com/Api/Classes/Classes
	?clubId=1
	&timestamp=654321
```

For details about pagination with `timestamp` parameter go to [Pagination using timestamp][PaginationWithTimestamp]


[Pagination]:  /Api/overview/pagination#page
[PaginationWithTimestamp]:  /Api/overview/pagination#timestamp
[ClubDetails]: /Api/clubs/clubDetails#clubdetails