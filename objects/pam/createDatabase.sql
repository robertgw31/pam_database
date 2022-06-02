
create database pam;
CREATE ROLE PAM;
ALTER user pam with password 'pam'
GRANT CONNECT ON DATABASE pam TO pam;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO pam;

create login robertw with password = 'Mel!ssa14', default_database = master;

