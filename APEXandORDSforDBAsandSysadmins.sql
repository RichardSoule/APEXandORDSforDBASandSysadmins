-- APEX and ORDS for DBAs and Sysadmins
-- by Rich Soule, Director of Consulting Services, Insum (rsoule@insum.ca)
-- Below are the SQL, PL/SQL and OS commands that are used within my
-- presentation. You can search for the slide title and you'll find the content
-- from that slide. For OS commands, I've included the directory that the 
-- command should be run in, but I've eliminated the prompt from the command to 
-- make it easier to copy. So, instead of "$ ls" for the oracle user, or "# ls" 
-- for the root user, I'll just have "ls". For SQL commands other than queries
-- that need to be run from a specific directory, again I'll eliminate the
-- prompt characters so you can just copy the command. sql is my alias for sqlcl,
-- the newer, better implementation of sqlplus. If you don't have sqlcl, you can
-- still use sqlplus.
-- July 12th, 2024 Update:
-- For Kscope24 in Nashville I've updated the entire presentation.
-- I'm using Oracle 23ai on Oracle Cloud Oracle Base Database, Oracle APEX 24.1.2,
-- and ORDS 24.2.

-- If the same statement appears on multiple slides, each slide title will be 
-- posted above the content instead of repeating the content multiple times.

-- Obviously, you should understand what each command does and not just paste 
-- and run it blindly. Use at your own risk. Rich & Insum assume no liability
-- for any of the below code.

-- What schemas do you have before APEX is installed?
-- What schemas do you have after APEX is installed?
  select username
       , account_status
       , expiry_date
       , default_tablespace
       , profile
       , initial_rsrc_consumer_group
       , authentication_type
       , proxy_only_connect
       , oracle_maintained
    from dba_users
order by username;

-- What components do you have before APEX is installed?
-- What components do you have after APEX is installed?
-- What components do you have before APEX & ORDS are installed?
-- What components do you have after APEX & ORDS are installed?
  select comp_name
       , version_full
       , status
       , schema
    from dba_registry
order by comp_name;

-- How many public synonyms do you have before APEX is installed?
-- How many public synonyms do you have after APEX is installed?
-- How many public synonyms do you have before APEX & ORDS are installed?
-- How many public synonyms do you have after APEX & ORDS  are installed?
    select to_char(count(*),'99,999') as "Total Public Synonyms"
    from dba_synonyms;

-- What do your tablespaces look like before APEX is installed?
-- What do your tablespaces look like after APEX is installed?
-- What do your tablespaces look like before APEX & ORDS are installed?
-- What do your tablespaces look like after APEX & ORDS are installed?
  with tablespace_bytes_free as
        (select tablespace_name
              , sum(bytes) as bytes_free
           from dba_free_space
       group by tablespace_name)
     , tablespace_allocated_and_max as
        (select tablespace_name
              , sum(bytes) as bytes_alloc
              , sum(decode(autoextensible, 'YES', maxbytes
                                         , 'NO' , bytes)) as maxbytes
           from dba_data_files
       group by tablespace_name)
select tablespace_name                                         as "Tablespace Name"
     , round(bytes_alloc / 1024 / 1024)                        as "Allocated (MB)"
     , round(nvl(bytes_free, 0) / 1024 / 1024)                 as "Free (MB)"
     , round((bytes_alloc - nvl(bytes_free, 0)) / 1024 / 1024) as "Used (MB)"
     , round((nvl(bytes_free, 0) / bytes_alloc) * 100)         as "% Free"
     , 100 - round((nvl(bytes_free, 0) / bytes_alloc) * 100)   as "% Used"
     , to_char(round(maxbytes/1024/1024),'99,999')             as "Max Size (MB)"
  from tablespace_allocated_and_max
  join tablespace_bytes_free
 using (tablespace_name);

-- Download and extract APEX
[oracle@databaseserver DB:orclcon /usr/local/src/oracle/apex/24.1]
wget https://download.oracle.com/otn_software/apex/apex_24.1.zip

[oracle@databaseserver DB:orclcon /usr/local/src/oracle/apex/24.1]
unzip -q apex_24.1.zip

-- Install APEX component in a pluggable database
[oracle@databaseserver DB:orclcon /usr/local/src/oracle/apex/24.1/apex]
sql sys@orcl as sysdba
@apexins sysaux sysaux temp /i/
exit

-- What does the database now tell us about APEX?
-- There are two different versions of this slide, all statements are below
select *
  from apex_release;

info apex_release

select * 
  from apex_patches;

select comp_name
     , version
     , version_full
  from dba_registry
 where comp_ID='APEX';


-- Get the latest APEX Patch
[oracle@databaseserver DB:orclcon /usr/local/src/oracle/apex/24.1]
vim wget.sh
[oracle@databaseserver DB:orclcon /usr/local/src/oracle/apex/24.1]
chmod u+x wget.sh
[oracle@databaseserver DB:orclcon /usr/local/src/oracle/apex/24.1]
./wget.sh
rsoule@insum.ca
Password -- NOTE: There often isn't a password prompt!!!

-- Install the latest APEX Patch in the database
[oracle@databaseserver DB:orclcon /usr/local/src/oracle/apex/24.1]
unzip -q p36695709_2410_Generic.zip
[oracle@databaseserver DB:orclcon /usr/local/src/oracle/apex/24.1]
cd 36695709
[oracle@databaseserver DB:orclcon /usr/local/src/oracle/apex/24.1/36695709]
sqlplus sys@orcl as sysdba
@catpatch

-- What did you just deliver to your database developers?
https://apex.oracle.com/api

-- Those extra added value packages don’t work… yet.
-- Those extra added value packages now work…
select apex_web_service.make_rest_request('http://www.google.com'
                                         ,'GET' as "Google"
  from dual;

-- The easy button
-- Let’s revisit that easy button from earlier…
begin
   dbms_network_acl_admin.append_host_ace(
      host => '*',
      ace => xs$ace_type(privilege_list => xs$name_list('connect'),
                         principal_name => apex_application.g_flow_schema_owner,
                         principal_type => xs_acl.ptype_db));
end;
/

-- ...including for URLs secured by signed TLS certificates!
-- …but not for TLS protected URLs -- From the appendix for pre-23ai releases
-- TLS URLs signed by the wallet certificates are now accessible -- From the appendix for pre-23ai releases
select apex_web_service.make_rest_request('https://www.google.com'
                                         ,'GET') as "Secure Google"
  from dual;

-- What about URLs with self-signed certificates?
[root@databaseserver DB: ~]
cp self_signed_certificate.crt /etc/pki/ca-trust/source/anchors/
[root@databaseserver DB: ~]
update-ca-trust

-- I'd like to manage this access with greater granularity!
begin
    dbms_network_acl_admin.append_host_ace(
        host => 'www.google.com',
        lower_port => 443,
        upper_port => 443,
        ace => xs$ace_type(privilege_list => xs$name_list('http'),
                           principal_name => apex_application.g_flow_schema_owner,
                           principal_type => xs_acl.ptype_db));
end;
/

-- Unlocking and creating new accounts?
select profile
     , limit
 from dba_profiles
where profile = 'DEFAULT'
  and resource_name = 'PASSWORD_LIFE_TIME';

[oracle@databaseserver DB:orclcon ~]
sql sys@orcl as sysdba
alter profile default limit password_life_time unlimited;

-- Unlock apex_public_user
alter user apex_public_user identified by oracle_4U account unlock;

-- Download ORDS
[root@applicationserver /usr/local/src/oracle/ords]
wget https://download.oracle.com/otn_software/java/ords/ords-24.2.2.187.1943.zip

-- ORDS Directories
[root@applicationserver ~]
mkdir -p /opt/ords/24.2

[root@applicationserver ~]
mkdir -p /etc/ords/24.2

[root@applicationserver ~]
mkdir -p /var/www/html/i   

[root@applicationserver ~]
mkdir -p /var/log/ords/24.2 

-- 1. Use Oracle's Content Delivery Network (preferred)
[oracle@databaseserver DB:orclcon /usr/local/src/oracle/apex/24.2/apex/utilities]
sql sys@orcl as sysdba
@reset_image_prefix
https://static.oracle.com/cdn/apex/24.1.2/

-- 2. Or deploy and patch APEX static images manually
[root@applicationserver /var/www/html/i]
cp -R /usr/local/src/oracle/apex/24.1/apex/images/* .
                                                            */ -- Ignore this comment, it's to make stuff pretty in VSCode
[root@applicationserver /var/www/html/i]
\cp -R /usr/local/src/oracle/apex/35283657/images/* . 
                                                            */ -- Ignore this comment, it's to make stuff pretty in VSCode
-- Create ORDS Runtime
[root@applicationserver /opt/ords/24.1]
unzip -q /usr/local/src/oracle/ords/ords-24.2.2.187.1943.zip

[root@applicationserver /opt/ords/24.2]
ll

-- ORDS runtime details
[root@applicationserver /opt/ords/24.2]
tree bin

[root@applicationserver /opt/ords/24.2]
tree scripts

-- Configure ORDS & Configure ORDS (continued)
[root@applicationserver /opt/ords/24.2/bin]
./ords --config /etc/ords/24.2 install
1
databaseserver.insum.ca
1521
orcl.insum.ca
sys
3 -- Then specify password
7 -- Then choose https, 443, and self signed certs (or signed and then provide the cert locations) and applicationserver.insum.ca
11 -- Then /var/www/html/i
A

-- What happened in our configuration directory?
[root@applicationserver ~]
tree /etc/ords/24.2

-- What is in settings.xml?
[root@applicationserver /etc/ords/24.2/global]
cat settings.xml

-- What is in pool.xml?
[root@applicationserver /etc/ords/24.2/databases/default]
cat pool.xml 

-- Create an APEX admin user and password
[oracle@oracleserver DB:orclcon /usr/local/src/oracle/apex/24.1/apex]
sql sys@orcl as sysdba 
@paxchpwd
ADMIN
rsoule@insum.ca
Oracle_4U -- Choose a password
exit

-- Stop ORDS
^c

-- Reconfigure ORDS Settings
[root@applicationserver /opt/ords/24.2/bin]
./ords --config /etc/ords/24.2 config set standalone.doc.root /var/www/html

[root@applicationserver /opt/ords/24.2/bin]
./ords --config /etc/ords/24.2 config set standalone.context.path /app

[root@applicationserver /opt/ords/24.2/bin]
./ords --config /etc/ords/24.2 config set jdbc.InitialLimit 21

[root@applicationserver /opt/ords/24.2/bin]
./ords --config /etc/ords/24.2 config set jdbc.MinLimit 21

[root@applicationserver /opt/ords/24.2/bin]
./ords --config /etc/ords/24.2 config set jdbc.MaxLimit 21

[root@applicationserver /opt/ords/24.2/bin]
./ords --config /etc/ords/24.2 config set standalone.access.log /var/log/ords/24.2

[root@applicationserver /opt/ords/24.2/bin]
./ords --config /etc/ords/24.2 config set standalone.access.log.retainDays 5

-- Configure ORDS directories to be more maintainable
   -- Today
[root@applicationserver /etc/ords]
ln -s 24.2 latest

[root@applicationserver /etc/ords]
cd /opt/ords

[root@applicationserver /opt/ords]
ln -s 24.2 latest
   -- At some point in the future
[root@applicationserver /etc/ords]
unlink latest

[root@applicationserver /etc/ords]
ln -s 25.1 latest

[root@applicationserver /etc/ords]
cd /opt/ords

[root@applicationserver /opt/ords]
unlink latest

[root@applicationserver /opt/ords]
ln -s 25.1 latest

-- Restart & monitor ORDS (easy? mode)
[root@applicationserver ~]
nohup /opt/ords/latest/bin/ords --config /etc/ords/latest/ serve >> /var/log/ords/24.2/ords-serve.log 2>&1 &

[root@applicationserver ~]
tail -f /var/log/ords/24.2/ords-serve.log

-- What new schemas do you have after APEX & ORDS are installed?
-- What happened to our APEX & ORDS schemas?
  select username
       , account_status
       , expiry_date
       , default_tablespace
       , profile
       , initial_rsrc_consumer_group
       , authentication_type
       , oracle_maintained
    from dba_users
   where username like 'APEX%'
      or username like 'ORDS\_%' escape '\'
      or username like 'FLOWS%'
order by username;

-- First REST enable schemas
sql sys as sysdba
create user rich identified by rich;
create user bob identified by bob;
grant dba to rich;
grant create session to bob;
exec ords_admin.enable_schema(p_schema => 'rich');
commit;
exec ords_admin.enable_schema(p_schema => 'bob', p_url_mapping_pattern => 'coolguy');
commit; 

-- What does the database tell us about REST schemas?
select parsing_schema
     , status
     , auto_rest_auth
     , pattern
     , type
  from dba_ords_schemas s
  join dba_ords_url_mappings u 
    on s.url_mapping_id = u.id;

-- Bonus Extras!

-- Pluggable default resource plan during the day
-- Pluggable default maintenance resource plan nights & weekends
sql sys@orcl as sysdba
show parameter resource_manager_plan

-- Let's make a new plan!
   -- Create Consumer Groups
begin
   dbms_resource_manager.clear_pending_area;
   dbms_resource_manager.create_pending_area;
   dbms_resource_manager.create_consumer_group( consumer_group => 'APEX_HIGH'
                                              , comment        => 'APEX sessions start in this group.');
   dbms_resource_manager.create_consumer_group( consumer_group => 'APEX_MEDIUM'
                                              , comment        => 'APEX sessions switched to this group after 10 seconds.' );      
   dbms_resource_manager.create_consumer_group( consumer_group => 'APEX_LOW'
                                              , comment        => 'APEX sessions switched to this group after 2 minutes' );    
   dbms_resource_manager.submit_pending_area; 
end;
/
 
   -- Allow Consumer Groups Switching
begin
    dbms_resource_manager_privs.grant_switch_consumer_group( grantee_name   => 'APEX_PUBLIC_USER'
                                                           , consumer_group => 'APEX_HIGH'
                                                           , grant_option   => FALSE );
    dbms_resource_manager_privs.grant_switch_consumer_group( grantee_name   => 'APEX_PUBLIC_USER'
                                                           , consumer_group => 'APEX_MEDIUM'
                                                           , grant_option   => FALSE );
    dbms_resource_manager_privs.grant_switch_consumer_group( grantee_name   => 'APEX_PUBLIC_USER'
                                                           , consumer_group => 'APEX_LOW'
                                                           , grant_option   => FALSE );
end;
/

   -- Build a Ratio Based Plan
begin
   dbms_resource_manager.clear_pending_area;
   dbms_resource_manager.create_pending_area;
   dbms_resource_manager.create_plan( plan     => 'APEX_RATIO_PLAN'
                                    , comment  => 'APEX Plan using ratios'
                                    , mgmt_mth => 'RATIO');     
   -- Add APEX Plan Directives to the Plan      
   dbms_resource_manager.create_plan_directive( plan                  => 'APEX_RATIO_PLAN'
                                              , group_or_subplan      => 'APEX_HIGH'
                                              , comment               => 'Sessions start in this group.'
                                              , mgmt_p1               => 40 -- ALL sessions start with 40x of APEX_LOW
                                              , switch_group          => 'APEX_MEDIUM'
                                              , switch_time           => 10 -- After 10 seconds, move to APEX_MEDIUM
                                              , switch_for_call       => TRUE
                                              , switch_estimate       => FALSE );
   dbms_resource_manager.create_plan_directive( plan                  => 'APEX_RATIO_PLAN'
                                              , group_or_subplan      => 'APEX_MEDIUM'
                                              , comment               => 'Sessions are switched to this group after 10 seconds.'
                                              , mgmt_p1               => 5 -- Sessions use a medium ratio, 5x of APEX_LOW
                                              , switch_group          => 'APEX_LOW'
                                              , switch_time           => 120 -- After 2 minutes, move to APEX_LOW
                                              , switch_for_call       => TRUE
                                              , switch_estimate       => FALSE );      
   dbms_resource_manager.create_plan_directive( plan                  => 'APEX_RATIO_PLAN'
                                              , group_or_subplan      => 'APEX_LOW'
                                              , comment               => 'Sessions have been executing for more than 2 minutes'
                                              , mgmt_p1               => 1 -- Sessions use the lowest ratio
                                              , max_utilization_limit => 75 -- Only use a max of 75% of server resources
                                              , switch_group          => 'CANCEL_SQL'
                                              , switch_time           => 1800  -- Sessions are canceled after 30 minutes
                                              , switch_for_call       => TRUE
                                              , switch_estimate       => FALSE );
   -- Add Regular Database Plan Directives to the Plan
   dbms_resource_manager.create_plan_directive( plan                  => 'APEX_RATIO_PLAN'
                                              , group_or_subplan      => 'OTHER_GROUPS'
                                              , comment               => 'The mandatory group'
                                              , mgmt_p1               => 5 );       
   dbms_resource_manager.create_plan_directive( plan                  => 'APEX_RATIO_PLAN'
                                              , group_or_subplan      => 'ORA$AUTOTASK'
                                              , comment               => 'Sub plan for maintenance activity'
                                              , mgmt_p1               => 5 
                                              , max_utilization_limit => 90 ); -- Only use a max of 90% of server resources
   dbms_resource_manager.create_plan_directive( plan                  => 'APEX_RATIO_PLAN'
                                              , group_or_subplan      => 'SYS_GROUP'
                                              , comment               => 'SYS and SYSTEM users'
                                              , mgmt_p1               => 44 );                                               
   -- Configure Initial APEX_PUBLIC_USER Consumer Group
   dbms_resource_manager.set_initial_consumer_group( user           => 'APEX_PUBLIC_USER'
                                                   , consumer_group => 'APEX_HIGH' );  
   dbms_resource_manager.submit_pending_area;  
end;
/

-- Update the maintenance scheduler windows to also run the new plan
begin
  dbms_scheduler.set_attribute( name => 'MONDAY_WINDOW',    attribute => 'RESOURCE_PLAN', value => 'APEX_RATIO_PLAN' );
  dbms_scheduler.set_attribute( name => 'TUESDAY_WINDOW',   attribute => 'RESOURCE_PLAN', value => 'APEX_RATIO_PLAN' );
  dbms_scheduler.set_attribute( name => 'WEDNESDAY_WINDOW', attribute => 'RESOURCE_PLAN', value => 'APEX_RATIO_PLAN' );
  dbms_scheduler.set_attribute( name => 'THURSDAY_WINDOW',  attribute => 'RESOURCE_PLAN', value => 'APEX_RATIO_PLAN' );
  dbms_scheduler.set_attribute( name => 'FRIDAY_WINDOW',    attribute => 'RESOURCE_PLAN', value => 'APEX_RATIO_PLAN' );
  dbms_scheduler.set_attribute( name => 'SATURDAY_WINDOW',  attribute => 'RESOURCE_PLAN', value => 'APEX_RATIO_PLAN' );
  dbms_scheduler.set_attribute( name => 'SUNDAY_WINDOW',    attribute => 'RESOURCE_PLAN', value => 'APEX_RATIO_PLAN' );
end;
/
  
-- Set the new plan as the active plan
alter system set resource_manager_plan = 'APEX_RATIO_PLAN' comment= '2022-03-15 Rich Soule 512.xxx.xxxx) Created and implemented a new plan' scope=both;
 
-- Stop old ORDS run with nohup
[root@applicationserver ~]
ps -ef | grep ords | grep -v grep

[root@applicationserver ~]
kill 3481618

-- Create ORDS service
[root@applicationserver /etc/systemd/system]
vim ords.service

[Unit]
Description=Oracle REST Data Services
Requires=network.target
[Service]
Environment="JAVA_HOME=/opt/java/latest"
Environment="JAVA_OPTS=-Dorg.eclipse.jetty.server.Request.maxFormContentSize=3000000 -Xms1024M -Xmx1024M"
User=root
ExecStart=/opt/ords/latest/bin/ords --config /etc/ords/latest serve
ExecStop=/usr/bin/kill -HUP ${MAINPID}
SyslogIdentifier=ords
Restart=always
RestartSec=30
TimeoutStartSec=30
TimeoutStopSec=30
[Install]
WantedBy=multi-user.target

[root@applicationserver ~]
systemctl daemon-reload 

-- Manage ORDS service - enable and start
[root@applicationserver ~]
systemctl enable ords 

[root@applicationserver ~]
systemctl start ords

-- Manage ORDS service - status
[root@applicationserver ~]
systemctl status ords

-- Manage ORDS service - read logs & stop
[root@applicationserver ~]
journalctl -u ords.service

[root@applicationserver ~]
systemctl stop ords
                                          
-- Create ords OS user and change file ownership
[root@applicationserver ~]
systemctl stop ords
[root@applicationserver ~]
useradd ords
[root@applicationserver ~]
chown -R ords:ords /etc/ords
[root@applicationserver ~]
chown -R ords:ords /opt/ords

-- Modify ORDS systemd service to use ords OS user
[root@applicationserver /etc/systemd/system]
vim ords.service
                                          
[root@applicationserver /etc/systemd/system]
cat ords.service
   --Note: Only the below line was changed
User=ords


-- Create firewalld ORDS service
[root@applicationserver /etc/firewalld/services]
vim ords.xml

[root@applicationserver /etc/firewalld/services]
cat ords.xml

<?xml version="1.0" encoding="utf-8"?>
<service>
  <short>ORDS</short>
  <description>Oracle REST Databse Service</description>
  <port protocol="tcp" port="443"/>
  <port protocol="tcp" port="8080"/>
</service>

   -- Note: Not on slides, but if you are running this on your DB server,
   -- then you'll also need at least the database service, and maybe the
   -- OEM agent service ports to be open too, see below for examples.

[root@applicationserver /etc/firewalld/services]
cat oracle-database.xml
<?xml version="1.0" encoding="utf-8"?>
<service>
  <short>Oracle DB</short>
  <description>Oracle Database service</description>
  <port protocol="tcp" port="1521"/>
</service>

[root@applicationserver /etc/firewalld/services]
cat oracle-agent.xml
<?xml version="1.0" encoding="utf-8"?>
<service>
  <short>Oracle Agent</short>
  <description>Oracle Agent service</description>
  <port protocol="tcp" port="3872"/>
</service>

[root@applicationserver /etc/firewalld/services]
systemctl start firewalld

[root@applicationserver /etc/firewalld/services]
firewall-cmd --permanent --add-service ords

-- Create firewalld Forward from 443 to 8080
[root@applicationserver ~]
firewall-cmd --add-forward-port=port=443:proto=tcp:toport=8080

[root@applicationserver ~]
firewall-cmd --runtime-to-permanent

[root@applicationserver ~]
firewall-cmd --add-masquerade 

-- Update the port that ORDS uses
[root@applicationserver /opt/ords/24.2/bin]
./ords --config /etc/ords/24.2 config set standalone.https.port 8080

-- Secure the ords account & start ORDS
[root@applicationserver ~]
usermod -s /usr/sbin/nologin ords
 
[root@applicationserver ~]
su - ords

[root@applicationserver /etc/ords/latest/global]
systemctl daemon-reload

[root@applicationserver ~]
systemctl start ords

-- Appendix Content for pre-23ai Databases
-- All of this goes away when you start using Oracle 23ai!

-- Let's make that TLS wallet
[oracle@databaseserver DB:orclcon ~]
locate /xdb_wallet/

[oracle@databaseserver DB:orclcon ~]
mkdir /u01/app/oracle/admin/orclcon/tls_wallet
[oracle@databaseserver DB:orclcon ~]
cd !$

[oracle@databaseserver DB:orclcon /u01/app/oracle/admin/orclcon/tls_wallet]
orapki wallet create -wallet . -auto_login

[oracle@databaseserver DB:orclcon /u01/app/oracle/admin/orclcon/tls_wallet]
ls

-- What's in the TLS wallet?
[oracle@databaseserver DB:orclcon /u01/app/oracle/admin/orclcon/tls_wallet]
orapki wallet display -wallet .

-- Configure APEX component TLS wallet location
sql sys@orcl as sysdba
exec apex_instance_admin.set_parameter('WALLET_PATH','file:/u01/app/oracle/admin/orclcon/tls_wallet');
commit; 

-- Add a root certificate into the wallet
-----BEGIN CERTIFICATE-----
MIIFVzCCAz+gAwIBAgINAgPlk28xsBNJiGuiFzANBgkqhkiG9w0BAQwFADBHMQsw
CQYDVQQGEwJVUzEiMCAGA1UEChMZR29vZ2xlIFRydXN0IFNlcnZpY2VzIExMQzEU
MBIGA1UEAxMLR1RTIFJvb3QgUjEwHhcNMTYwNjIyMDAwMDAwWhcNMzYwNjIyMDAw
MDAwWjBHMQswCQYDVQQGEwJVUzEiMCAGA1UEChMZR29vZ2xlIFRydXN0IFNlcnZp
Y2VzIExMQzEUMBIGA1UEAxMLR1RTIFJvb3QgUjEwggIiMA0GCSqGSIb3DQEBAQUA
A4ICDwAwggIKAoICAQC2EQKLHuOhd5s73L+UPreVp0A8of2C+X0yBoJx9vaMf/vo
27xqLpeXo4xL+Sv2sfnOhB2x+cWX3u+58qPpvBKJXqeqUqv4IyfLpLGcY9vXmX7w
Cl7raKb0xlpHDU0QM+NOsROjyBhsS+z8CZDfnWQpJSMHobTSPS5g4M/SCYe7zUjw
TcLCeoiKu7rPWRnWr4+wB7CeMfGCwcDfLqZtbBkOtdh+JhpFAz2weaSUKK0Pfybl
qAj+lug8aJRT7oM6iCsVlgmy4HqMLnXWnOunVmSPlk9orj2XwoSPwLxAwAtcvfaH
szVsrBhQf4TgTM2S0yDpM7xSma8ytSmzJSq0SPly4cpk9+aCEI3oncKKiPo4Zor8
Y/kB+Xj9e1x3+naH+uzfsQ55lVe0vSbv1gHR6xYKu44LtcXFilWr06zqkUspzBmk
MiVOKvFlRNACzqrOSbTqn3yDsEB750Orp2yjj32JgfpMpf/VjsPOS+C12LOORc92
wO1AK/1TD7Cn1TsNsYqiA94xrcx36m97PtbfkSIS5r762DL8EGMUUXLeXdYWk70p
aDPvOmbsB4om3xPXV2V4J95eSRQAogB/mqghtqmxlbCluQ0WEdrHbEg8QOB+DVrN
VjzRlwW5y0vtOUucxD/SVRNuJLDWcfr0wbrM7Rv1/oFB2ACYPTrIrnqYNxgFlQID
AQABo0IwQDAOBgNVHQ8BAf8EBAMCAYYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4E
FgQU5K8rJnEaK0gnhS9SZizv8IkTcT4wDQYJKoZIhvcNAQEMBQADggIBAJ+qQibb
C5u+/x6Wki4+omVKapi6Ist9wTrYggoGxval3sBOh2Z5ofmmWJyq+bXmYOfg6LEe
QkEzCzc9zolwFcq1JKjPa7XSQCGYzyI0zzvFIoTgxQ6KfF2I5DUkzps+GlQebtuy
h6f88/qBVRRiClmpIgUxPoLW7ttXNLwzldMXG+gnoot7TiYaelpkttGsN/H9oPM4
7HLwEXWdyzRSjeZ2axfG34arJ45JK3VmgRAhpuo+9K4l/3wV3s6MJT/KYnAK9y8J
ZgfIPxz88NtFMN9iiMG1D53Dn0reWVlHxYciNuaCp+0KueIHoI17eko8cdLiA6Ef
MgfdG+RCzgwARWGAtQsgWSl4vflVy2PFPEz0tv/bal8xa5meLMFrUKTX5hgUvYU/
Z6tGn6D/Qqc6f1zLXbBwHSs09dR2CQzreExZBfMzQsNhFRAbd03OIozUhfJFfbdT
6u9AWpQKXCBfTkBdYiJ23//OYb2MI3jSNwLgjt7RETeJ9r/tSQdirpLsQBqvFAnZ
0E6yove+7u7Y/9waLd64NnHi/Hm3lCXRSHNboTXns5lndcEZOitHTtNCjv0xyBZm
2tIMPNuzjsmhDYAPexZ3FL//2wmUspO8IFgV6dtxQ/PeEMMA3KgqlbbC1j+Qa3bb
bP6MvPJwNQzcmRk13NfIRmPVNnGuV/u3gm3c
-----END CERTIFICATE-----

[oracle@databaseserver DB:orclcon /u01/app/oracle/admin/orclcon/tls_wallet]
vim GTSRootR1.crt

[oracle@oracleserver DB:orclcon /u01/app/oracle/admin/orclcon/tls_wallet]
orapki wallet add -wallet . -trusted_cert -cert GTSRootR1.crt

[oracle@databaseserver DB:orclcon /u01/app/oracle/admin/orclcon/tls_wallet]
orapki wallet display -wallet .

-- This certificate thing is a pain...
https://github.com/Dani3lSun/oracle-ca-wallet-creator
https://gist.github.com/fuzziebrain/202f902d8fc6d8de586da5097a501047 
