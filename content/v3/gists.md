---
title: Gists
---

# Gists

{:toc}

## Authentication

You can read public gists and create them for anonymous users without a token; however, to read or write gists on a user's behalf the **gist** [OAuth scope][1] is required.

<!-- When an OAuth client does not have the gists scope, the API will return a 404 "Not Found" response regardless of the validity of the credentials.

The API will return a 401 "Bad credentials" response if the gists scope was given to the application but the credentials are invalid. -->

## Truncation

The Gist API provides up to one megabyte of content for each file in the gist. Each file returned for a gist through the API has a key called `truncated`. If `truncated` is `true`, the file is too large and only a portion of the contents were returned in `content`.

If you need the full contents of the file, you can make a `GET` request to the URL specified by `raw_url`. Be aware that for files larger than ten megabytes, you'll need to clone the gist via the URL provided by `git_pull_url`.

In addition to a specific file's contents being truncated, the entire files list may be trucated if the total number exceeds 300 files. If the top level `truncated` key is `true`, only the first 300 files have been returned in the files list. If you need to fetch all of the gist's files, you'll need to clone the gist via the URL provided by `git_pull_url`.

## List gists

List a user's gists:

    GET /users/:username/gists

List the authenticated user's gists or if called anonymously, this will
return all public gists:

    GET /gists

List all public gists:

    GET /gists/public

List the authenticated user's starred gists:

    GET /gists/starred

### Parameters

Name | Type | Description
-----|------|--------------
`since`|`string` | A timestamp in ISO 8601 format: `YYYY-MM-DDTHH:MM:SSZ`. Only gists updated at or after this time are returned.

### Response

<%= headers 200, :pagination => default_pagination_rels %>
<%= json(:gist) { |h| [h] } %>

## Get a single gist

    GET /gists/:id

<a id="detailed-gist-representation">

### Response

<%= headers 200 %>
<%= json :full_gist %>

## Get a specific revision of a gist

    GET /gists/:id/:sha

### Response

<%= headers 200 %>
<%= json :full_gist_version %>

## Create a gist

    POST /gists

### Input

Name | Type | Description
-----|------|--------------
`files`|`object` | **Required**. Files that make up this gist.
`description`|`string` | A description of the gist.
`public`|`boolean` | Indicates whether the gist is public. Default: `false`

The keys in the `files` object are the `string` filename, and the value is another `object` with a key of `content`, and a value of the file contents. For example:

<%= json \
  :description => "the description for this gist",
  :public      => true,
  :files       => {
    "file1.txt" => {"content" => "String file contents"}
  }
%>

{{#tip}}

**Note:** Don't name your files "gistfile" with a numerical suffix.  This is the format of the automatic naming scheme that Gist uses internally.

{{/tip}}

### Response

<%= headers 201, :Location => get_resource(:full_gist)['url'] %>
<%= json :full_gist %>

## Edit a gist

    PATCH /gists/:id

### Input

Name | Type | Description
-----|------|--------------
`description`|`string` | A description of the gist.
`files`|`object` | Files that make up this gist.
`content`|`string` | Updated file contents.
`filename`|`string` | New name for this file.

The keys in the `files` object are the `string` filename. The value is another `object` with a key of `content` (indicating the new contents), or `filename` (indicating the new filename). For example:

<%= json \
  :description => "the description for this gist",
  :files => {
    "file1.txt"    => {"content"  => "updated file contents"},
    "old_name.txt" => {"filename" => "new_name.txt", "content" => "modified contents"},
    "new_file.txt" => {"content"  => "a new file"},
    "delete_this_file.txt" => nil,
  } %>

{{#tip}}

<strong>Note</strong>: All files from the previous version of the gist are carried over by default if not included in the object. Deletes can be performed by including the filename with a <code>null</code> object.

{{/tip}}


### Response

<%= headers 200 %>
<%= json :full_gist %>


## List gist commits

    GET /gists/:id/commits

### Response

<%= headers 200, :pagination => { :next => 'https://api.github.com/resource?page=2' } %>
<%= json(:gist_history) %>

## Star a gist

    PUT /gists/:id/star

<%= fetch_content(:put_content_length) %>

### Response

<%= headers 204 %>

## Unstar a gist

    DELETE /gists/:id/star

### Response

<%= headers 204 %>

## Check if a gist is starred

    GET /gists/:id/star

### Response if gist is starred

<%= headers 204 %>

### Response if gist is not starred

<%= headers 404 %>

## Fork a gist

    POST /gists/:id/forks

{{#tip}}

**Note**: This was previously `/gists/:id/fork`.

{{/tip}}

### Response

<%= headers 201, :Location => get_resource(:gist)['url'] %>
<%= json(:gist) %>

## List gist forks

    GET /gists/:id/forks

### Response

<%= headers 200, :pagination => default_pagination_rels %>
<%= json(:gist_forks) %>

## Delete a gist

    DELETE /gists/:id

### Response

<%= headers 204 %>

[1]: /v3/oauth/#scopes

## Custom media types

The following media types are supported when fetching gist contents. You can read more about the
use of media types in the API [here](/v3/media/).

    application/vnd.github.VERSION.raw
    application/vnd.github.VERSION.base64
