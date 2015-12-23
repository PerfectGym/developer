---
title: PerfectGym API Overview
---

# Overview

This describes the resources that make up the official PerfectGym API.

{:toc}


## Introduction

The PerfectGym API lets you tap into PerfectGym and build your own PerfectGym-powered web, desktop and mobile applications.

The API provides a simple, resource-oriented, RESTful interface with JSON-formatted responses to use PerfectGym’s features.


## General

All API access is over HTTPS, and accessed from the `yourcompany.perfectgym.com/api/`.  All data is
sent and received as JSON.

``` command-line
$ curl -i https://yourcompany.perfectgym.com/api/Classes/GetClasses/1/0

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

Verb   | Description
-------|------------
`GET`  | Used for retrieving resources.
`POST` | Used for creating / updating resources or invoking actions.

