.PHONY: all clean

run: up


up:
		docker-compose -f docker-compose.yml up -d --build

test:
		cmd/test.sh

clean: down

down:
		docker-compose -f docker-compose.yml down 
