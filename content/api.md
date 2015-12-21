---
title: GitHub API v3
---

# Overview

This describes the resources that make up the official PerfectGym API.

{:toc}


## General

All API access is over HTTPS, and accessed from the `yoursubdomain.perfectgym.com/api/`.  All data is
sent and received as JSON.

``` command-line
$ curl -i https://yoursubdomain.perfectgym.com/api/Classes/GetClasses/1/0

> HTTP/1.1 200 OK
> Cache-Control: no-cache
> Pragma: no-cache
> Content-Length: 61
> Content-Type: application/json; charset=utf-8
> Expires: -1
> Server: Microsoft-IIS/8.5
> WWW-Authenticate: Bearer
> X-AspNet-Version: 4.0.30319
> X-Powered-By: ASP.NET
> pg-app: externalapi
> X-Powered-By: ARR/3.0
> pg-app: Routing
> Date: Fri, 18 Dec 2015 16:47:49 GMT
```

### Blank fields

Blank fields are included as `null` instead of being omitted.


### Identifiers & timestamps

All resources are identified with  long `id` and `timestamp` attributes.


### Date format

All dates and times follow the ISO 8601 format and are provided in local time zone:

    YYYY-MM-DDTHH:MM:SS



## HTTP Verbs

Verb | Description
-----|-----------
`GET` | Used for retrieving resources.
`POST` | Used for creating / updating resources or invoking actions.



## Requests
### Parameters

GET requests parameters are specified as path segment.    

**Example**: In this example, the `1` and `0` values are provided for the `clubId`
and `timestamp` parameters in the path.

    GET Classes/GetClasses/{clubId}/{timestamp}
``` command-line
$ curl -i https://yoursubdomain.perfectgym.com/api/Classes/GetClasses/1/0
```

POST requests parameters are specified as path segment (or JSON body with Content-Type of 'application-json'
when explicitly required).


### Timestamp parameter

Requests with timestamp parameter returns list of resources added or changed after point in time represented
by `timestamp` value. Result is ordered by `timestamp` ascending.

**Example**: In this example we fetch list of classes from the club with `id` of `1` and with `timestamp` 
value greater then `654321`.

``` command-line
$ curl -i https://yoursubdomain.perfectgym.com/api/Classes/GetClasses/1/0
```



## Responses
### GET Response schema

Attribute Name | Description
-----------|-----------|
`elements` | This means a required field on a resource has not been set.


### POST Response schema

Attribute Name | Description
-----------|-----------|
`success` | `true` if request completed successfuly, `false` otherwise.
`details` | Information containing request result details.


### Summary Representations

When you fetch a list of resources, the response includes a _subset_ of the
attributes for that resource. This is the "summary" representation of the
resource. (Some attributes are computationally expensive for the API to provide.
For performance reasons, the summary representation excludes those attributes.
To obtain those attributes, fetch the "detailed" representation.)

**Example**: When you get a list of classes, you get the summary
representation of each class type. Here, we fetch the list of classes
in a given club:

    GET Classes/GetClasses/{clubId}/{timestamp}


### Detailed Representations

When you fetch an individual resource, the response typically includes _all_
attributes for that resource. This is the "detailed" representation of the
resource.

**Example**: When you get an individual class, you get the detailed
representation of the class:

    GET Classes/GetClass/{classId}

The documentation provides an example response for each API method. The example
response illustrates all attributes that are returned by that method.



<!--## Hypermedia

All resources may have one or more `*_url` properties linking to other
resources.  These are meant to provide explicit URLs so that proper API clients
don't need to construct URLs on their own.  It is highly recommended that API
clients use these.  Doing so will make future upgrades of the API easier for
developers.  All URLs are expected to be proper [RFC 6570][rfc] URI templates.

You can then expand these templates using something like the [uri_template][uri]
gem:

    >> tmpl = URITemplate.new('/notifications{?since,all,participating}')
    >> tmpl.expand
    => "/notifications"

    >> tmpl.expand :all => 1
    => "/notifications?all=1"

    >> tmpl.expand :all => 1, :participating => 1
    => "/notifications?all=1&participating=1"

[rfc]: http://tools.ietf.org/html/rfc6570
[uri]: https://github.com/hannesg/uri_template -->



<!-- ## Pagination

Requests that return multiple items will be paginated to 100 items. 
You can specify further pages with the `?page` parameter. 

``` command-line
$ curl 'https://yoursubdomain.perfectgym.com/api/Classes/GetClasses/1/0?page=2'
```

Note that page numbering is 1-based and that omitting the `?page`
parameter will return the first page. -->

<!-- For more information on pagination, check out our guide on [Traversing with Pagination][pagination-guide]. -->

