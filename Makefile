SHELL = /bin/bash

generate:
	@echo "Copying Files..."
	@cp ../IndoorClimatePi/ /opt/ -r
	@cp IndoorClimatePid.service /etc/systemd/system/
	@./cronfile.sh
	@crontab cronfile
	@cd /opt/IndoorClimatePi/code && ./make.sh
	@systemctl enable IndoorClimatePid.service
	@systemctl start IndoorClimatePid.service

update:
	@echo "Updating..."

clean:
	@echo "Cleaning up..."
	@rm /opt/IndoorClimatePi -rf
	@systemctl disable IndoorClimatePid.service
	@systemctl stop IndoorClimatePid.service
	@yes | rm /etc/systemd/system/IndoorClimatePid.service
	@crontab -r

