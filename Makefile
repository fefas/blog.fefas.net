up:
	@rm -rf ./.jekyll-cache/
	@docker-compose up --build --remove-orphans

bash:
	@docker-compose exec blog bash
