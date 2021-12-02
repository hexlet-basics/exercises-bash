-include /opt/basics/common/common.mk

# export RUBYLIB=$(realpath lib)
# export PATH:=$(realpath bin):$(PATH)

compose-setup: compose-build compose-install

compose:
	docker-compose up

compose-install:
	docker-compose run exercises bundle install

compose-bash:
	docker-compose run exercises bash

compose-build:
	docker-compose build

compose-test:
	docker-compose run exercises make test

compose-lint:
	docker-compose run exercises make code-lint

code-lint:
	bundle exec rubocop modules

