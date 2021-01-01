status:
	@docker-compose ps

up:
	@rm -rf ./.jekyll-cache/
	@docker-compose up -d --build --remove-orphans

down:
	@docker-compose down

logs:
	@docker-compose logs -f

bash:
	@docker-compose exec blog bash
