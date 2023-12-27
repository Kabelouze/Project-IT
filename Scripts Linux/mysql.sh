#!/bin/bash

mysql -u root --password=password -e "CREATE USER guacadmin@'%' identified by 'password';"
mysql -u root --password=password -e "GRANT SELECT,UPDATE,INSERT,DELETE on guacdb.* to guacadmin@'%';"
mysql -u root --password=password -e "FLUSH PRIVILEGES;"
