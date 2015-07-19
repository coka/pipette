#pipette

[![Build Status](https://semaphoreci.com/api/v1/projects/124dbfa5-9f15-40e2-8b75-52c34fbb3613/476263/shields_badge.svg)](https://semaphoreci.com/metropolislights/pipette)
[![Code Climate](https://codeclimate.com/github/metropolislights/pipette/badges/gpa.svg)](https://codeclimate.com/github/metropolislights/pipette)
[![Test Coverage](https://codeclimate.com/github/metropolislights/pipette/badges/coverage.svg)](https://codeclimate.com/github/metropolislights/pipette/coverage)

## Summary

**Pipette** is a small [Rails](http://rubyonrails.org/) app which lets registered users create, execute, and post comments on snippets containing [Bourne shell](https://en.wikipedia.org/wiki/Bourne_shell) commands.

## Features

Each signed in user can create and edit her snippets.

Snippets have:

- a title
- content
- execution output (only the latest execution result is persistent)

A snippet might look like something along the lines of:

```sh
ls -lah ~
cat file.txt
echo "Hello world"
```

**Note:** Currently, **Pipette** only supports single-line commands, and execution output is not persistent at all.

The commands are executed by [Tourette](https://github.com/metropolislights/tourette), a [Sinatra](http://www.sinatrarb.com)-powered JSON API endpoint.

## Reasoning

**Pipette** is the result of an internship application process, and is a toy project which attempts to serve as a reference implementation for some common web application functionalities, while also covering those functionalities with [RSpec](http://rspec.info/) and [Cucumber](https://cucumber.io/) tests.
