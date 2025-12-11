DOCKER_USERNAME ?= winnerboy7
APPLICATION_NAME ?= MySQL Server

up:
	@echo "Running container from ${APPLICATION_NAME}..."
	docker-compose up -d
	@echo "phpmyadmin running on port 8080."
	@echo "Container running on port 3306."

down:
	@echo "Stopping all container..."
	docker-compose down

build:
	@echo "Building Docker image..."
	docker build -t mysql-server .
	@echo "Docker image 'mysql-server' built successfully!"

run:
	@echo "Running container from '${APPLICATION_NAME}'..."
	docker run -p 3306:3306 -d --name mysql-server mysql:8.0
	@echo "Container 'mysql-server' running successfully!"
	@echo "Container running on port 3306."

test:
	@echo "Testing container..."
	docker network create --driver bridge app-network
	docker run --name mysql-server --network=app-network -e MYSQL_ROOT_PASSWORD=superAdmin -p 3306:3306 -d mysql:8.0

stop:
	@echo "Stopping all container..."
	docker stop mysql-server
	docker rm mysql-server
	docker network rm app-network
	@echo "Container 'mysql-server' stopped successfully!"

clean:
	@echo "Removing all Docker image..."
	docker rm -f mysql-server || true
	docker rm -f mysql-admin || true
	docker rmi mysql:8.0 || true
	docker rmi phpmyadmin:latest || true

