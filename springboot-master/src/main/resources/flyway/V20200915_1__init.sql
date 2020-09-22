CREATE TABLE FOND(
ID INT PRIMARY KEY,
FOND_NUMBER VARCHAR,
CREATED_TIMESTAMP INT,
CREATED_BY INT,
UPDATED_TIMESTAMP INT,
UPDATED_BY INT
);
CREATE TABLE COMPANY (
ID INT PRIMARY KEY,
NAME_RU VARCHAR,
NAME_KZ VARCHAR,
NAME_EN VARCHAR,
BIN VARCHAR,
PARENT_ID INT,
CREATED_TIMESTAMP INT,
CREATED_BY INT,
UPDATED_TIMESTAMP INT,
UPDATED_BY INT
);
 CREATE TABLE COMPANY_UNIT(
ID INT PRIMARY KEY,
NAME_RU VARCHAR,
NAME_KZ VARCHAR,
NAME_EN VARCHAR,
BIN VARCHAR,
PARENT_ID INT,
YEAR INT,
COMPANY_ID INT,
CODE_INDEX VARCHAR,
CREATED_TIMESTAMP INT,
CREATED_BY INT,
UPDATED_TIMESTAMP INT,
UPDATED_BY INT
);
 CREATE TABLE USERS(
ID INT PRIMARY KEY,
AUTH_ID INT,
NAME VARCHAR,
FULL_NAME VARCHAR,
SURNAME VARCHAR,
SECONDNAME VARCHAR,
STATUS VARCHAR,
COMPANY_UNIT_ID INT,
PASSWORD VARCHAR,
LAST_LOGIN_TIMESTAMP INT,
IIN VARCHAR,
IS_ACTIVE BOOL,
IS_ACTIVATED BOOL,
CREATED_TIMESTAMP INT,
CREATED_BY INT,
UPDATED_TIMESTAMP INT,
UPDATED_BY INT
);
CREATE TABLE AUTHORIZATION(
ID INT PRIMARY KEY,
USERNAME VARCHAR,
EMAIL VARCHAR,
PASSWORD VARCHAR,
ROLE VARCHAR,
FORGOT_PASSWORD_KEY VARCHAR,
FORGOT_PASSWORD_KEY_TIMESTAMP INT,
COMPANY_UNIT_ID INT
);
CREATE TABLE  REQUEST (
ID INT PRIMARY KEY,
REQUEST_USER_ID INT	,
RESPONSE_USER_ID INT,
CASE_ID INT,
CASE_INDEX_ID INT,
CREATED_TYPE VARCHAR,
COMMENT VARCHAR,
STATUS VARCHAR,
TIMESTAMP INT,
SHARE_START INT,
SHARE_FINISH INT,
FAVORITE BOOL,
UPDATE_TIMESTAMP INT,
UPDATE_BY INT,
DECLINE_NOTE VARCHAR,
COMPANY_UNIT_ID INT,
FROM_REQUEST_ID INT
);
CREATE TABLE SHARE(
ID INT PRIMARY KEY,
REQUEST_ID INT,
NOTE VARCHAR ,
SENDER_ID INT,
RECEIVER_ID INT,
SHARE_TIMESTAMP INT
);
CREATE TABLE HISTORY_OF_REQUEST_STATUS(
ID INT PRIMARY KEY,
REQUEST_ID INT,
STATUS VARCHAR ,
CREATED_TIMESTAMP INT,
CREATED_BY INT,
UPDATED_TIMESTAMP INT,
UPDATED_BY INT
);
CREATE TABLE CASE(
ID INT PRIMARY KEY,
NUMBER_CASE VARCHAR,
VOLUME_NUMBER VARCHAR,
TITLE_RU VARCHAR,
TITLE_KZ VARCHAR,
TITLE_EN VARCHAR,
START_DATE INT,
FINAL_DATE INT,
NUMBER_OF_PAGE INT,
EDS_SIGNED_FLAG BOOL,
EDS_SIGNATURE TEXT,
SIGN_OF_SENDING_TO_NAF BOOL,
REMOVAL_SIGN BOOL,
RESTRICTED_FLAG BOOL,
HASH VARCHAR,
VERSION INT,
VERSION_ID INT,
ACTIVITY_SIGN BOOL,
NOTE VARCHAR,
LOCATION_ID INT,
INDEX_CASE_ID INT,
INVENTORY_ID INT,
DESTRUCTION_ACT_ID INT,
COMPANY_UNIT_ID  INT,
BLOCKCHAIN_CASE_ADDRESS INT,
BLOCKCHAIN_DATA_ADD INT,
CREATED_TIMESTAMP INT,
CREATED_BY INT,
UPDATED_TIMESTAMP INT,
UPDATED_BY INT
);
CREATE TABLE CATALOG_CASE(
ID INT PRIMARY KEY,
CASE ID INT,
CATALOG_ID INT,
COMPANY_UNIT_ID INT,
CREATED_TIMESTAMP INT,
CREATED_BY INT,
UPDATED_TIMESTAMP INT,
UPDATED_BY INT

);
CREATE TABLE CATALOG(
ID INT PRIMARY KEY,
NAME_RU VARCHAR,
NAME_KZ VARCHAR,
NAME_EN VARCHAR,
PARENT_ID INT,
COMPANY_UNIT_ID INT,
CREATED_TIMESTAMP INT,
CREATED_BY INT,
UPDATED_TIMESTAMP INT,
UPDATED_BY INT
);
CREATE TABLE LOCATION (
ID INT PRIMARY KEY,
ROW VARCHAR,
LINE VARCHAR,
COLUMN VARCHAR,
BOX VARCHAR,
COMPANY_UNIT_ID INT,
CREATED_TIMESTAMP INT,
CREATED_BY INT,
UPDATED_TIMESTAMP INT,
UPDATED_BY INT
);
CREATE TABLE FILE_ROUTING(
ID INT PRIMARY KEY,
FILE_ID INT,
TABLE_NAME VARCHAR,
TABLE ID INT,
TYPE VARCHAR
);
CREATE TABLE ACTIVITY_JOURNAL(
ID INT PRIMARY KEY,
EVENT_TYPE VARCHAR,
OBJECT_TYPE VARCHAR,
OBJECT_ID INT,
CREATED_TIMESTAMP INT,
CREATED_BY INT,
MESSAGE_LEVEL VARCHAR,
MESSAGE VARCHAR
);
CREATE TABLE NOTIFICATION (
ID INT PRIMARY KEY,
OBJECT_TYPE VARCHAR,
OBJECT_ID INT,
COMPANY_UNIT_ID INT,
USER_ID INT,
CREATED_TIMESTAMP INT,
VIEWED_TIMESTAMP INT,
IS_VIEWED BOOL,
TITLE VARCHAR,
TEXT VARCHAR,
COMPANY_IS INT
);
CREATE TABLE FILE(
ID INT PRIMARY KEY,
NAME VARCHAR,
TYPE VARCHAR,
SIZE INT,
PAGE_COUNT INT,
HASH VARCHAR,
IS_DELETED BOOL,
FILE_BINARY_ID INT,
CREATED_TIMESTAMP INT,
CREATED_BY INT,
UPDATED_TIMESTAMP INT
UPDATED_BY INT
);
CREATE TABLE TEMPFILES(
ID INT PRIMARY KEY,
FILE_BINARY TEXT,
FILE_BINARY_BYTE BYTEA
);
CREATE TABLE NOMENCLATURE(
ID INT PRIMARY KEY,
NOMENCLATURE_NUMBER VARCHAR,
YEAR INT,
NOMENCLATURE_SUMMARY_ID INT,
COMPANY_UNIT_ID INT,
CREATED_TIMESTAMP INT,
CREATED_BY INT,
UPDATED_TIMESTAMP INT,
UPDATED_BY INT
);
CREATE TABLE NOMENCLATURE_SUMMARY(
ID INT PRIMARY KEY,
NUMBER VARCHAR,
YEAR INT,
COMPANY_UNIT_ID INT,
CREATED_TIMESTAMP INT,
CREATED_BY INT,
UPDATED_TIMESTAMP INT,
UPDATED_BY INT

);
CREATE TABLE SEARCHKEY(
ID INT PRIMARY KEY,
NAME VARCHAR,
COMPANY_UNIT_ID INT,
CREATED_TIMESTAMP INT,
CREATED_BY INT,
UPDATED_TIMESTAMP INT,
UPDATED_BY INT
);
CREATE TABLE SEARCH_KEY_ROUTING(
ID INT PRIMARY KEY,
SEARCH_KEY_ID INT,
TABLE_NAME VARCHAR ,
TABLE_ID,
TYPE VARCHAR
);
CREATE TABLE DESTRUCTION_ACT(
ID INT PRIMARY KEY,
ACT_NUMBER VARCHAR,
BASE VARCHAR,
STRUCTURAL_UNIT_ID INT,
CREATED_TIMESTAMP INT,
CREATED_BY INT,
UPDATED_TIMESTAMP INT,
UPDATED_BY INT
);

CREATE TABLE CASE_INDEX(
ID INT PRIMARY KEY,
CASE_INDEX VARCHAR,
TITLE_RU VARCHAR,
TITLE_KZ VARCHAR,
TITLE_EN VARCHAR,
STORAGE_TYPE INT,
STORAGE_YEAR INT,
NOTE VARCHAR,
COMPANY_UNIT_ID INT,
NOMENCLATURE_ID INT ,
CREATED_TIMESTAMP INT,
CREATED_BY INT,
UPDATED_TIMESTAMP INT,
UPDATED_BY INT

);
CREATE TABLE RECORD(
ID INT PRIMARY KEY,
NUMBER VARCHAR,
TYPE VARCHAR,
CREATED_TIMESTAMP INT,
CREATED_BY INT,
UPDATED_TIMESTAMP INT,
UPDATED_BY INT
);
