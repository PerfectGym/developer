---
title: Requests
---

# Requests

This describes PerfectGym API requests basics.



## Request parameters

You provide parameters to PerfectGym API with path, query string and body parameters.

The format for query string parameters is the full resource URL followed by a question mark, and the parameters. 

- Path parameters are used to traverse resources hierarhy and uniquly select resource you want to interact with.
- For `GET` requests you provide parameters in a query string you append to your request's URL
- For `POST` requests you provide parameters query string parameters or as JSON in request's body (with Content-Type of 'application-json' header) 
when explicitly required.

Available path, query string and body parameters are described for each API endpoint.


### Example
In this example, we fetch club (with id = `16`) details. We request that returned data be in `EN` language.
For detailed request description have a look [here][ClubDetails].
	
    GET Clubs/Club/{clubId}
``` command-line
$ curl -i https://yourcompany.perfectgym.com/api/Clubs/Club/16?languageCode=EN
```

Let's break down this request:
- `https://yourcompany.perfectgym.com/api/` is a base url for PerfectGym API
- `Clubs/Club/16` - request path with `{clubId}` path parameter that uniquly identifies resource you want to work with.
You can read it like so: from all clubs, select club with identifier of value `16`
- `?languageCode=EN` - query string parameter specific to a given request. Indicates that we want API to return club details in english if possible.
	


## Filter and pagination parameters

We use query string parameters for filtering and pagination in the PerfectGym API. 
Available query string parameters are described for each API endpoint.


### Example
In this example, we retrive classes availeble in club identified by `id` of value `1`, that take place
between `2016-01-01` and `2016-01-31`

	GET Classes/Classes/{clubId}
``` command-line
$ curl -i https://yourcompany.perfectgym.com/api/Classes/Classes/1?
	startDate=2016-01-01T00:00:00&
	endDate=2016-01-31T23:59:59
```

For details about pagination with `page` parameter go to [Pagination with query string parameters][Pagination]



## Timestamp query string parameter

Requests with timestamp parameter returns list of resources added or changed after point in time represented
by `timestamp` value. Result is ordered by `timestamp` ascending. This let's you fetch only resources that 
changed since your last api call.

### Example
In this example we fetch list of classes from the club with `id` of `1` and with `timestamp` 
value greater then `654321`.

	GET Classes/Classes/{clubId}
``` command-line
$ curl -i https://yourcompany.perfectgym.com/api/Classes/Classes/1?timestamp=654321
```

For details about pagination with `timestamp` parameter go to [Pagination using timestamp][PaginationWithTimestamp]


[Pagination]:  /api/overview/pagination#page
[PaginationWithTimestamp]:  /api/overview/pagination#timestamp
[ClubDetails]: /api/clubs/clubDetails#clubdetails