#
# Cookbook Name:: base
# Recipe:: mysql
#

# Install and configure MySQL service
mysql_service "default" do
	port "3306"
	version "5.5"
	bind_address "0.0.0.0"
	initial_root_password "root"
	# allow_remote_root true
	action [:create, :start]
end


# Create user super
bash 'create super user' do
	code <<-EOF
	/usr/bin/mysql -uroot -h127.0.0.1 -P3306 -proot -Dmysql -e"CREATE USER 'super'@'%' IDENTIFIED BY 'super';"
	/usr/bin/mysql -uroot -h127.0.0.1 -P3306 -proot -Dmysql -e"GRANT ALL ON *.* TO 'super'@'%' WITH GRANT OPTION;"
	/usr/bin/mysql -uroot -h127.0.0.1 -P3306 -proot -Dmysql -e"FLUSH PRIVILEGES;"
	EOF
	not_if "/usr/bin/mysql -uroot -h127.0.0.1 -P3306 -proot -e'select User,Host from mysql.user' | grep super"
	action :run
end