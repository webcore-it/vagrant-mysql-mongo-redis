# Configuration for a Vagrant box containing MySQL, mongoDB and redis
This is a config we use every day to create a db server in or development process. It is not fancy at all.

## IP
It runs on each machine at `10.10.10.60.`
Can be changed in the `Vagrantfile`.

## MySQL
Version: 5.5
Runs on default port 3306. 
User `root` is not allowed to connect from remote. There is another user for connection: `super` with password `super`.
Can be changed in the `chef/cookbooks/base/recipes/mysql.rb` recipe file.

## mongoDB
Runs on default port 27017.
No authentication is required to access or modify the database.

## redis
Runs on default port 6379.
