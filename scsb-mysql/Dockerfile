FROM mysql:5.7.14
MAINTAINER Peri Subrahmanya "peri.subrahmanya@htcinc.com"

#Set Terminal
ENV TERM=xterm

#Add my.cnf

COPY startup.sh /opt/startup.sh
RUN chmod 777 /opt/startup.sh

COPY my.cnf /usr/share/mysql/my-default.cnf
COPY my.cnf /etc/mysql/my.cnf

COPY 1_SONAR_SCHEMA_CREATION.sql /opt/git/mysql/1_SONAR_SCHEMA_CREATION.sql
COPY 2_RECAP_SCHEMA_TABLES_CREATION.sql /opt/git/mysql/2_RECAP_SCHEMA_TABLES_CREATION.sql
COPY 3_COLLECTION_GROUP_T.sql /opt/git/mysql/3_COLLECTION_GROUP_T.sql
COPY 4_INSTITUTION_T.sql /opt/git/mysql/4_INSTITUTION_T.sql
COPY 5_ITEM_STATUS_T.sql /opt/git/mysql/5_ITEM_STATUS_T.sql
COPY 6_REQUEST_TYPE_T.sql /opt/git/mysql/6_REQUEST_TYPE_T.sql
COPY 7_ALLOW_CONTAINER_LINKING.sql /opt/git/mysql/7_ALLOW_CONTAINER_LINKING.sql
COPY 9_CUSTOMER_CODE_T.sql /opt/git/mysql/9_CUSTOMER_CODE_T.sql
COPY 10_RECAP_ALTER_SCRIPTS.sql /opt/git/mysql/10_RECAP_ALTER_SCRIPTS.sql
COPY 11_ONGOING_TABLES_CREATION.sql /opt/git/mysql/11_ONGOING_TABLES_CREATION.sql
COPY 12_PERMISSIONS_T.sql /opt/git/mysql/12_PERMISSIONS_T.sql
COPY 13_ROLES_T.sql /opt/git/mysql/13_ROLES_T.sql
COPY 14_ROLES_PERMISSIONS_T.sql /opt/git/mysql/14_ROLES_PERMISSIONS_T.sql
COPY 15_USER_T.sql /opt/git/mysql/15_USER_T.sql
COPY 16_USER_ROLE_T.sql /opt/git/mysql/16_USER_ROLE_T.sql
COPY 17_REQUEST_ITEM_STATUS_T.sql /opt/git/mysql/17_REQUEST_ITEM_STATUS_T.sql
COPY 18_RECAP_VIEW_CREATION.sql /opt/git/mysql/18_RECAP_VIEW_CREATION.sql

ENTRYPOINT ["/opt/startup.sh"]


