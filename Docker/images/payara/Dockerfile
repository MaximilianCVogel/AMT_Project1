FROM payara/server-full:5.183

MAINTAINER Olivier Liechti <olivier.liechti@heig-vd.ch>


ADD drivers/mysql-connector-java-5.1.48-bin.jar ./glassfish/lib/


RUN echo "AS_ADMIN_PASSWORD=admin" > /tmp/gfpw.txt && \
    ./glassfish/bin/asadmin start-domain domain1 && \
    ./glassfish/bin/asadmin --interactive=false --user admin --passwordfile=/tmp/gfpw.txt create-jdbc-connection-pool --restype javax.sql.DataSource --datasourceclassname com.mysql.jdbc.jdbc2.optional.MysqlDataSource --property user=root:password=admin:DatabaseName=people:ServerName=db:port=3306:useSSL=false pool_people && \
    ./glassfish/bin/asadmin --interactive=false --user admin --passwordfile=/tmp/gfpw.txt create-jdbc-resource --connectionpoolid pool_people jdbc/people

COPY autodeploy/amt-project1.war ./glassfish/domains/domain1/autodeploy/
