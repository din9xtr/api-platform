.PHONY: test test-db test-run test-reset

## Run full
test: test-db test-run

## Create test database and schema
test-db:
	docker compose exec php php bin/console --env=test doctrine:database:drop --force --if-exists
	docker compose exec php php bin/console --env=test doctrine:database:create
	docker compose exec php php bin/console --env=test doctrine:schema:create

## Run PHPUnit
test-run:
	docker compose exec php php bin/phpunit

## Reset test database
test-reset:
	docker compose exec php php bin/console --env=test doctrine:schema:drop --force
	docker compose exec php php bin/console --env=test doctrine:schema:create
