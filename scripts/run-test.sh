#!/bin/bash

set -xe

RAILS_ENV=test rake db:drop db:schema:load
RAILS_ENV=test rake db:test:prepare
RAILS_ENV=test rspec
