# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* System dependencies
ruby, rubygems, rails, git, bundle, postgresql

STEPS:

1) install postgresql + start it and enable it
2) psql -> CREATE USER your_pg_db_username WITH PASSWORD your_pg_db_password;
3) psql -> ALTER USER you_pg_db_username WITH SUPERUSER;

4) edit /MarketCarAPI/config/database.yml
	development:
	     <<: *default
  	    database: MarketCarAPI_development
            username: your_pg_db_username
            password: your_pg_db_password
	test:
             <<: *default
            database: MarketCarAPI_development
            username: your_pg_db_username
            password: your_pg_db_password
	production:
             <<: *default
            database: MarketCarAPI_development
            username: your_pg_db_username
            password: your_pg_db_password

-----------------
rails db:drop
rails db:create
rails db:migrate
-----------------

5) into /MarketCarAPI run 'rails s'
6) if yout want fake data generator use faker the seed file is already setup.

