# DjangoApp
Project Type  -->  Advertising Site

Name Project  -->  PRIME\
Logo Project  -->  #####

BackEnd   -->  Python       (Django);\
FrontEnd  -->  JavaScript   (React);\
DataBase  -->  SQL          (PostgreSQL);

### OS Linux (Ubuntu) : 20.04
### Python version : 3.10 

# Install SQL (PostgreSQL):
    Create the file repository configuration:
    $ sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
    
    Import the repository signing key:
    $ wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

    Update the package lists:
    If you want a specific version, use 'postgresql-12' or similar instead of 'postgresql':
    $ sudo apt-get -y install postgresql
    
    Database entry:
    $ sudo -u postgres psql

    Create and setting user:
    $ CREATE USER name_user WITH PASSWORD 'your_password';
    $ ALTER ROLE name_user SET client_encoding TO 'utf8';
    $ ALTER ROLE name_user SET default_transaction_isolation TO 'read committed';
    $ ALTER ROLE name_user SET timezone TO 'UTC';
    
    Create and setting database:
    $ CREATE DATABASE name_db;
    $ GRANT ALL PRIVILEGES ON DATABASE name_db TO name_user;
    $ ALTER USER name_user CREATEDB;

    Stop and Restart Postgres DB:
    $ sudo service postgresql stop
    $ sudo service postgresql restart

# Install Docker:
 - sudo apt update
 - sudo apt install apt-transport-https ca-certificates curl software-properties-common
 - curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
 - sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
 - sudo apt update
 - apt-cache policy docker-ce

### Output:
    docker-ce:
        Installed: (none)
        Candidate: 5:19.03.9~3-0~ubuntu-focal
        Version table:
            5:19.03.9~3-0~ubuntu-focal 500
                500 https://download.docker.com/linux/ubuntu focal/stable amd64 Packages

 - sudo apt install docker-ce
 - sudo systemctl status docker

### Output:
    ● docker.service - Docker Application Container Engine
         Loaded: loaded (/lib/systemd/system/docker.service; enabled; vendor preset: enabled)
         Active: active (running) since Tue 2020-05-19 17:00:41 UTC; 17s ago
    TriggeredBy: ● docker.socket
           Docs: https://docs.docker.com
       Main PID: 24321 (dockerd)
          Tasks: 8
         Memory: 46.4M
         CGroup: /system.slice/docker.service
                 └─24321 /usr/bin/dockerd -H fd:// --containerd=/run/containerd/containerd.sock

# Install Docker-Compose:
 - sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
 - sudo chmod +x /usr/local/bin/docker-compose
 - docker-compose --version

### Output:
    docker-compose version 1.26.0, build 8a1c60f6

# Add and Tune config.py file:
 ### Create file "config.py" in main project directory and add:
    # Dev/Deploy
    MODE = 'dev'


    # PostgreSQL
    POSTGRES_NAME = 'name_db'
    POSTGRES_USER = 'name_user'
    POSTGRES_PASS = 'your_password'
    POSTGRES_HOST = 'localhost'

# Add and Tune .env file:
 ### Create file ".env" in main project directory and add: 

    # Dev/Deploy
    MODE='dev'
    PORT=8000


    # Wsqi Settings
    WSGI_PORT=8000


    # PostgreSQL DB + Backend DB
    POSTGRES_DB='name_db'
    POSTGRES_USER='name_user'
    POSTGRES_PASSWORD='your_password'
    POSTGRES_HOST='postgres'
    POSTGRES_PORT=5432


    # PostgreSQL Admin
    PGADMIN_DEFAULT_EMAIL=your_email
    PGADMIN_DEFAULT_PASSWORD='your_password'


    # ---
    DJANGO_SETTINGS_MODULE=prime.settings.${MODE}

# Run and Stop Project:
    $ sudo docker-compose up --build       --> Run Project (on Ubuntu)
    http://localhost/                      --> Nginx (Web Server)
    "CTRL + C"                             --> Stop Project
