.PHONY: up down stop

up:
	docker-compose up -d
down:
	docker-compose down
stop:
	docker-compose stop
gogenerator:
	docker run -v ${PWD}:/local openapitools/openapi-generator-cli:v3.3.4 generate -i /local/document/openapi.yaml -g go-server -o /local/out/go