-include /opt/basics/common/common.mk

compose-setup: compose-build

compose:
	docker-compose up

# compose-install:
# 	docker-compose run exercises bundle install

compose-bash:
	docker-compose run exercises bash

compose-build:
	docker-compose build

compose-test:
	docker-compose run exercises make test

compose-code-lint:
	docker-compose run exercises make code-lint

code-lint:
	echo "code-lint"

compose-description-lint:
	docker-compose run exercises make description-lint

compose-schema-validate:
	docker-compose run exercises make schema-validate

ci-check:
	docker-compose --file docker-compose.yml up --abort-on-container-exit
