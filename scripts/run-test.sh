#!/bin/bash

set -xe

RAILS_ENV=test bin/rails db:create db:migrate db:schema:load 
RAILS_ENV=test rspec
