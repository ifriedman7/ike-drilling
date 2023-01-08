
test: 
	@echo "Testing message"
	docker inspect ike-drilling_reader_1 | grep IPAddress
	echo test message | nc -N 172.18.0.2 3000
	tail /var/bucket/drilling.log

deploy:
	@echo "Building VPC"
	ansible-playbook -i hosts --ask-vault-pass build.yml

clean:
	@echo "Cleaning VPC"
	ansible-playbook -i hosts --ask-vault-pass clean.yml