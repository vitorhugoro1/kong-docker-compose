kong-postgres:
	COMPOSE_PROFILES=database KONG_DATABASE=postgres docker compose up -d

kong-dbless:
	docker compose up -d

kong-bash:
	docker compose exec --user=root kong sh

clean:
	docker compose kill
	docker compose rm -f

