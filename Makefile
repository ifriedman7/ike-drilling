
test: 
	@echo "Testing message"
	docker inspect ike-drilling_reader_1 | grep IPAddress | tail -1 | awk '{ print $2 }'| sed 's/[,"]//g'
	echo test message | nc -N 172.18.0.3 3000
	tail /var/bucket/drilling.log

deploy:
	@echo "Building VPC"
	ansible-playbook -i hosts --ask-vault-pass build.yml

clean:
	@echo "Cleaning VPC"
	ansible-playbook -i hosts --ask-vault-pass clean.yml