# Dev Vagrant box containing MySQL, mongoDB and redis

Sets up a database dev box running on `Ubuntu 14.04 LTS` using Chef.

## Prerequisites

- [Chef Development Kit](https://downloads.chef.io/chef-dk/)
- [Virtualbox](https://www.virtualbox.org/)
- [Vagrant](http://www.vagrantup.com/) with the following plugins installed:
    - [vagrant-omnibus](https://github.com/schisamo/vagrant-omnibus)
    - [vagrant-berkshelf](https://github.com/berkshelf/vagrant-berkshelf)
    - [vagrant-vbguest](https://github.com/dotless-de/vagrant-vbguest)
    ```bash
    vagrant plugin install vagrant-omnibus
    vagrant plugin install vagrant-berkshelf
    vagrant plugin install vagrant-vbguest
    ```

##Usage

Setup and provision the box:

```
vagrant up
```
You need to have a little patience, it will take up to 20 minutes to setup the box.

## Box settings

### IP
- `10.10.10.60.` (Can be changed in the `Vagrantfile`)

### MySQL
- Version: 5.5
- Runs on default port 3306.
- Remote user:
	- name: `super`
	- pass: `super`

User `root` is not allowed to connect from remote.

Can be changed in the `chef/cookbooks/base/recipes/mysql.rb` recipe file.

### mongoDB
- Runs on default port 27017.

No authentication is required to access or modify the database.

### redis
- Runs on default port 6379.
