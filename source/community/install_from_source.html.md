## Installing ManageIQ from source

To get started developing ManageIQ, or to deploy on an OS other than CentOS
or Red Hat Enterprise Linux (RHEL), here are the steps to get started.

1. For RHEL, make sure you have the following channel enabled:
````
rhel-6-server-rpms
````

2. As root, add the miqbuilder user
```` bash
useradd miqbuilder
passwd miqbuilder
````

3. For both RHEL and CentOS, download and install the epel (Extra Packages
   for Enterprise Linux) package
````
wget http://mirror.nexcess.net/epel/6/i386/epel-release-6-8.noarch.rpm
yum -y install epel-release-6-8.noarch.rpm
````

4. `miqbuilder` should be set to use `sudo`. Add the following line to
   /etc/sudoers with the command `visudo`:
````
miqbuilder ALL=(ALL) ALL
````


5. ManageIQ prerequisites are git, libxml2 and libxslt (including headers),
   postgresql, and memcached. On RHEL and CentOS, install these packages:
````
yum -y install git libxml2-devel libxslt libxslt-devel
yum -y install postgresql-server postgresql-devel memcached
````

6. Start memcached
````
service memcached start
chkconfig memcached on
````

7. To configure Postgres:
   1. Edit `/var/lib/pgsql/data/pg_hba.conf`, comment out everything and add
      the following line: 
````
local all all trust
````
   2. Edit `/var/lib/pgsql/data/postgresql.conf` and add
      `listening_address '*'`
   3. Initialize and start the database:
````
service postgresql initdb
service postgresql start
````
   4. Log in as postgres, and generate test, production and development
      databases and the evm user.  Then assign the development database
      `vmdb_development` to `evm`
````
su - postgres
for i in test production development;do createdb vmdb_$i;done
psql -c "create role evm login password 'smartvm'"
psql -c "alter database vmdb_development owner to evm"
````

8. As user miqbuilder, set up the ManageIQ Ruby development environment. We rely
   on bundler 1.3.5, if your distribution has a newer version of Bundler,
   remove it:
````
su - miqbuilder
curl -sSL https://get.rvm.io | bash -s stable
rvm install 1.9.3
gem install bundler -v '1.3.5'
gem uninstall -i /home/cfmebuilder/.rvm/gems/ruby-1.9.3-p547@global bundler -v '1.6.2'
````

9. Clone the ManageIQ repo and install dependencies:
````
git clone https://github.com/ManageIQ/manageiq
cd manageiq/vmdb
bundle install --without qpid
cd ..
vmdb/bin/rake build:shared_objects
cd vmdb
bundle install --without qpid
````

10. Ensure that ManageIQ is connecting to the right database. Edit the
    `config/database.yml` file.  Add the `evm` user for the 
    `vmdb_develeopment` database.
````
bin/rake db:migrate
bin/rake evm:start
````

You should now be able to access the ManageIQ console at `<IP_ADDRESS>:3000`,
if you set the listening_addresses '*' in `/var/lib/pgsql/data/postgres.conf`


