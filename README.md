## Getting Started
To get up and running you will need docker and docker-compose

- build the docker compose environment `docker-compose build`
- to set up the databases use `docker-compose run --rm web bin/setup`
- to run tests use `docker-compose run --rm web rspec`
- to run the dev environment use `docker-compose up`
- changes to the `Gemfile`, `Gemfile.lock`, `Dockerfile` or `docker-compose.yml` will need recreating via `docker-compose build` or by specifying the `--build` flag when running
