-- Setup the SQL database
set client_encoding='utf8';

DROP DATABASE IF EXISTS stories_development;
DROP DATABASE IF EXISTS stories_test;

CREATE DATABASE stories_development;
CREATE DATABASE stories_test;

GRANT ALL PRIVILEGES ON DATABASE stories_development TO story_user;
GRANT ALL PRIVILEGES ON DATABASE stories_test TO story_user;

ALTER DATABASE stories_development OWNER  TO story_user;
ALTER DATABASE stories_test OWNER TO story_user;