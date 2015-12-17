---
title: Forks
---

# Forks

{:toc}

## List forks

    GET /repos/:owner/:repo/forks

### Parameters

Name | Type | Description
-----|------|-------------
`sort`|`string` | The sort order. Can be either `newest`, `oldest`, or `stargazers`. Default: `newest`


### Response

<%= headers 200, :pagination => default_pagination_rels %>
<%= json(:repo) { |h| h['fork'] = true; [h] } %>

## Create a fork

Create a fork for the authenticated user.

    POST /repos/:owner/:repo/forks

### Parameters

Name | Type | Description
-----|------|-------------
`organization`|`string` | Optional parameter to specify the organization name if forking into an organization.


### Response

Forking a Repository happens asynchronously.  Therefore, you may have to wait
a short period before accessing the git objects.  If this takes longer than
5 minutes, be sure to [contact Support](https://github.com/contact?form[subject]=APIv3).

<%= headers 202 %>
<%= json(:repo) { |h| h['fork'] = true; h } %>
