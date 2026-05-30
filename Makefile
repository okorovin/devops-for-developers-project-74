setup:
	cp -n .env.example .env

compose:
	docker compose up -d

compose-logs:
	docker compose logs -f

compose-build:
	docker compose build

compose-setup:
	docker compose run --rm app make setup

compose-test:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

compose-down:
	docker compose down

ci: compose-test
