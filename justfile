start:
    docker compose -f dmc/compose/docker-compose.yml up -d

up: 
    just start

stop:
    docker compose -f dmc/compose/docker-compose.yml down

down: 
    just stop

restart:
    just stop
    just start

logs:
    docker compose -f dmc/compose/docker-compose.yml logs -f --tail=100