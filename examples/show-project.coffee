#!/usr/bin/env coffee

# clear terminal
process.stdout.write '\u001B[2J\u001B[0;0f'


Gitlab = require('..').ApiV2

credentials = require './credentials'

gitlab = new Gitlab
    url:     credentials.url
    token:   credentials.token
    verbose: true

projectId = parseInt process.argv[2]

gitlab.projects.show projectId, (project) ->
    console.log
    console.log "=== Project ==="
    console.log project

gitlab.projects.members.list projectId, (members) ->
    console.log ""
    console.log "=== Members ==="
    console.log members
