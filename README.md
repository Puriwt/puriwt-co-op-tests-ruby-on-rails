# puriwt-co-op-tests-ruby-on-rails

# to create new page run this comman
- rails g controller [controller name] [page name]
- ex. rails g controller registation index

# to set page into first page 
- /config/routes.rb
- add root "[controller name]#[page name]"

## --------- deployment ------------

## registor EC2 in AWS
- click Launch instance
- create name
- should OS (for me Mac OS)
- create new key pair (enter name)
- check Allow HTTPS traffic from the internet
- click Launch instance

## connect VM to local
- (open your instance and press connect)
- open terminal
- go to locate your private key file. (cd)
- run : chmod 400 "keyFileName.pem"
- connect with step 4 in web.

# (remark in VM we have to use sudo in almost all command) #

# setup work space in VM
- create foder work space (sudo mkdir yourFoderName)

# install docker in your VM
- go into your project (cd)
- run following command begin of Install using the apt repository (https://docs.docker.com/engine/install/ubuntu/)
- until you finish step 6

# set up file on VM
- create file docker-compose.yml (nano docker-compose.yml)
- wright docker-compose.yml following in this project
- create file .env (nano .env)

# set up file on your project
- run: bundle install
- run: rails secret in terminal then get key into SECRET_KEY_BASE on VM
- get master.key in config/master.key then get into RAILS_MASTER on VM

## --------- deployment ------------

