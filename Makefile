.PHONY: build 
build: 
	docker build -t shdennlin/web-dvwa:latest .

.PHONY: run
run:
	docker run -d -it --name dvwa -p 80:80 shdennlin/web-dvwa

.PHONY: stop
stop:
	docker stop dvwa; docker rm dvwa