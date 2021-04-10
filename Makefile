build:
	docker build -t barrywalker/cc65:latest .

dist: build
	docker push barrywalker/cc65:latest
