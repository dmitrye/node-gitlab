#!/usr/bin/env coffee

# clear terminal
process.stdout.write '\u001B[2J\u001B[0;0f'


Gitlab = require('..').ApiV2

credentials = require './credentials'

gitlab = new Gitlab
    url:     credentials.url
    token:   credentials.token
    verbose: true

userId = parseInt process.argv[2]

gitlab.users.show userId, (user) ->
    console.log user
