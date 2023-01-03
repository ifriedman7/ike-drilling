
test_container: 
	@echo "Testing container"
	@cd python && docker-compose up -d --build
	@sleep 5
	curl localhost:37529 -so /dev/null -w "%{http_code}"
	@cd python && docker-compose down

deploy:
	@echo "Building VPC"
	ansible-playbook -i hosts --ask-vault-pass build.yml

clean:
	@echo "Cleaning VPC"
	ansible-playbook -i hosts --ask-vault-pass clean.yml