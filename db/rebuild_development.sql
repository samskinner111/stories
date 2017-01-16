-- Setup the SQL database
set client_encoding='utf8';

DROP DATABASE IF EXISTS story_development;
DROP DATABASE IF EXISTS story_test;

CREATE DATABASE story_development;
CREATE DATABASE story_test;

GRANT ALL PRIVILEGES ON DATABASE story_development TO story_user;
GRANT ALL PRIVILEGES ON DATABASE story_test TO story_user;

ALTER DATABASE story_development OWNER  TO story_user;
ALTER DATABASE story_test OWNER TO story_user;