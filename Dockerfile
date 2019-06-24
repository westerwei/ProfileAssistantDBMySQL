# Derived from official mysql image (our base image)
FROM mysql

LABEL description="MySQL DB for Profile Assistant AP"

MAINTAINER Wester Wei<wester.wei@gmail.com>

# Create a database
# Create MySQL admin user 
# Setup pass for admin user
#
ENV MYSQL_DATABASE="ProfileAssistant" \ 
    MYSQL_USER="mysqladmin" \
    MYSQL_PASSWORD="anock0511" \ 
    MYSQL_ROOT_PASSWORD="S3CR3T"

COPY ./init_scripts/test/CreateEmployeesTable.sql ./init_scripts/test/InsertEmployees.sql /docker-entrypoint-initdb.d/
