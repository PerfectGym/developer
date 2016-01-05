---
title: Requests
---

# Requests

This describes PerfectGym API requests basics.

{:toc}



## Request parameters

GET requests parameters are specified as path segments.    

POST requests parameters are specified as path segment (or JSON body with Content-Type of 'application-json'
when explicitly required).


### Example
In this example, the `1` and `0` values are provided for the `clubId`
and `timestamp` parameters in the path.

    GET Classes/GetClasses/{clubId}/{timestamp}
``` command-line
$ curl -i https://yourcompany.perfectgym.com/api/Classes/GetClasses/1/0
```


## Filter and pagination parameters

We use query string parameters for filtering and pagination in the PerfectGym API. 
The format for query string parameters is the full resource URL followed by a question mark, and the parameters.
Available query string parameters are described for each API endpoint.


### Example
In this example, we retrive classes availeble in club identified by `id` of value `1`, that take place
between `2016-01-01` and `2016-01-31`

	GET Classes/GetClasses/{clubId}
``` command-line
$ curl -i https://yourcompany.perfectgym.com/api/Classes/GetClasses/1?
	startDate=2016-01-01T00:00:00&
	endDate=2016-01-31T23:59:59
```

For details about pagination with `page` parameter go to [Pagination with query string parameters][Pagination]



## Timestamp parameter

Requests with timestamp parameter returns list of resources added or changed after point in time represented
by `timestamp` value. Result is ordered by `timestamp` ascending.

### Example
In this example we fetch list of classes from the club with `id` of `1` and with `timestamp` 
value greater then `654321`.

	GET Classes/GetClasses/{clubId}/{timestamp}
``` command-line
$ curl -i https://yourcompany.perfectgym.com/api/Classes/GetClasses/1/654321
```

For details about pagination with `timestamp` parameter go to [Pagination using timestamp][PaginationWithTimestamp]


[Pagination]:  /api/overview/pagination#page
[PaginationWithTimestamp]:  /api/overview/pagination#timestamp