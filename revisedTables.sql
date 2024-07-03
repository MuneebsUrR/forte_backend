-- REVISED

CREATE DATABASE IF NOT EXISTS forte;
USE forte; 

--
-- Table structure for table `action_logs`
--

DROP TABLE IF EXISTS `action_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `action_logs` (
  `ARN` int DEFAULT NULL,
  `CANDIDATE_ID` int DEFAULT NULL,
  `ACTION_ID` varchar(64) DEFAULT NULL,
  `ACTION_ON` datetime DEFAULT NULL,
  `USER_ID` varchar(16) DEFAULT NULL,
  `UHA` varchar(16) DEFAULT NULL
) 
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `answer_choice`
--

DROP TABLE IF EXISTS `answer_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer_choice` (
  `ANS_CHOICE_ID` tinyint NOT NULL,
  `QUESTION_ID` int NOT NULL,
  `ANS_CHOICE_TEXT` varchar(2000) DEFAULT NULL,
  `IS_TEXT` tinyint DEFAULT NULL,
  `OLE_TEXT` int DEFAULT NULL,
  `OLE_IMAGE` int DEFAULT NULL,
  `ENTER_BY` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`ANS_CHOICE_ID`,`QUESTION_ID`)
) 
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate` (
  `CANDIDATE_ID` int NOT NULL,
  `FIRST_NAME` varchar(65) DEFAULT NULL,
  `DOB` datetime DEFAULT NULL,
  `SEX` tinyint DEFAULT NULL,
  `NIC` varchar(20) DEFAULT NULL,
  `ADDRESS` varchar(128) DEFAULT NULL,
  `CITY` varchar(32) DEFAULT NULL,
  `AREA` varchar(32) DEFAULT NULL,
  `NATIONAL` int DEFAULT NULL,
  `PHONE` varchar(20) DEFAULT NULL,
  `PHONE_AREA` varchar(8) DEFAULT NULL,
  `EMAIL` varchar(64) DEFAULT NULL,
  `INCOME` int DEFAULT NULL,
  `SS_YEAR` datetime DEFAULT NULL,
  `SS_BOARD` int DEFAULT NULL,
  `SS_REG` varchar(32) DEFAULT NULL,
  `FATHER_NAME` varchar(32) DEFAULT NULL,
  `MOBILE` varchar(16) DEFAULT NULL,
  `CITY_ID` int DEFAULT NULL,
  `COUNTRY_ID` int DEFAULT NULL,
  `SITE_REF` int DEFAULT NULL,
  `BATCH` int NOT NULL DEFAULT '1',
  `CAMPUS` int DEFAULT NULL,
  `PROGRAMME` int DEFAULT NULL,
  `CENTER` int DEFAULT NULL,
  `SESSION_ID` int DEFAULT NULL,
  `PASSWORD` varchar(32) DEFAULT NULL,
  `IS_APPEARED` tinyint DEFAULT NULL,
  `VERIFIED_BY` varchar(16) DEFAULT NULL,
  `IS_FEE_PAID` tinyint NOT NULL DEFAULT '0',
  `IS_VARIFIED` tinyint NOT NULL DEFAULT '0',
  `IS_SCHEDULED` tinyint NOT NULL DEFAULT '0',
  `IS_ADMIT_PRINTED` tinyint NOT NULL DEFAULT '0',
  `DECLARATION` tinyint NOT NULL DEFAULT '0',
  `TEST_ID` char(32) DEFAULT NULL,
  `APPL_PASSWORD` varchar(16) DEFAULT NULL,
  `APPL_PASSWORD_HINT` varchar(64) DEFAULT NULL,
  `ARN` int DEFAULT NULL,
  `IS_SAT_VARIFIED` tinyint DEFAULT NULL,
  `CREATED_BY` varchar(16) DEFAULT NULL,
  `CREATED_ON` date DEFAULT NULL,
  PRIMARY KEY (`CANDIDATE_ID`)
) 
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `candidate_test`
--

DROP TABLE IF EXISTS `candidate_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_test` (
  `CANDIDATE_ID` int NOT NULL,
  `SQP_ID` int NOT NULL,
  `SESSION_ID` int DEFAULT NULL,
  `START_TIME` datetime DEFAULT NULL,
  `END_TIME` datetime DEFAULT NULL,
  `QUESTION_ATTEMPED` smallint DEFAULT NULL,
  `MARKS` decimal(6,2) DEFAULT NULL,
  `TEST_STATUS` tinyint DEFAULT '0',
  PRIMARY KEY (`CANDIDATE_ID`)
) 
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `candidate_test_detail`
--

DROP TABLE IF EXISTS `candidate_test_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_test_detail` (
  `CANDIDATE_ID` int NOT NULL,
  `SQP_ID` int NOT NULL,
  `QP_ID` int NOT NULL,
  `QUESTION_ID` int NOT NULL,
  `SELECTED_ANSWER` tinyint DEFAULT '-1',
  `LAST_VIEW_TIME` datetime DEFAULT NULL,
  `ELAPSED_TIME` datetime DEFAULT NULL,
  `IS_ATTEMPED` tinyint DEFAULT '0',
  `IS_CORRECT` tinyint DEFAULT NULL,
  `MARKS` decimal(10,6) DEFAULT NULL,
  `MARKED_BY` varchar(16) DEFAULT NULL,
  `MARKED_ON` datetime DEFAULT NULL,
  PRIMARY KEY (`QUESTION_ID`,`QP_ID`,`SQP_ID`,`CANDIDATE_ID`)
) 
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `candidate_test_result`
--

DROP TABLE IF EXISTS `candidate_test_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_test_result` (
  `CANDIDATE_ID` int NOT NULL,
  `QUESTION_ATTEMPTED` smallint DEFAULT NULL,
  `MARKS` decimal(10,6) DEFAULT NULL,
  `DIFFICULTY_FACTOR` decimal(10,6) DEFAULT NULL,
  `FINAL_MARKS` decimal(10,6) DEFAULT NULL,
  `USER_ID` varchar(16) DEFAULT NULL,
  `COMPUTER_ID` varchar(64) DEFAULT NULL,
  `DATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`CANDIDATE_ID`)
) 
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `candidate_test_result_detail`
--

DROP TABLE IF EXISTS `candidate_test_result_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_test_result_detail` (
  `CANDIDATE_ID` int NOT NULL,
  `SA_ID` int NOT NULL,
  `QUESTION_ATTEMPTED` smallint DEFAULT NULL,
  `MARKS` decimal(10,6) DEFAULT NULL,
  `QUESTION_CORRECT` smallint DEFAULT NULL,
  `NODE_ID` int DEFAULT NULL,
  `QUESTION_WTG` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`SA_ID`,`CANDIDATE_ID`),

) 
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `candidate_test_schedule`
--

DROP TABLE IF EXISTS `candidate_test_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_test_schedule` (
  `CANDIDATE_ID` int NOT NULL,
  `TEST_SESSION` int DEFAULT NULL,
  `TEST_CENTER` int DEFAULT NULL,
  `PROGRAMME_ID` int DEFAULT NULL,
  `SEAT_NUMBER` int DEFAULT NULL,
  `GROUP_ID` int DEFAULT NULL,
  `ARN` int DEFAULT NULL,
  PRIMARY KEY (`CANDIDATE_ID`)
) 
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `correct_answer_choice`
--

DROP TABLE IF EXISTS `correct_answer_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `correct_answer_choice` (
  `ANS_CHOICE_ID` tinyint NOT NULL,
  `QUESTION_ID` int NOT NULL,
  PRIMARY KEY (`ANS_CHOICE_ID`,`QUESTION_ID`),
 
) 
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `QUESTION_ID` int NOT NULL,
  `SA_ID` int DEFAULT NULL,
  `QUESTION_TYPE_ID` tinyint DEFAULT NULL,
  `DI_LEVEL` tinyint DEFAULT NULL,
  `TI_LEVEL` tinyint DEFAULT NULL,
  `EDI` decimal(4,2) DEFAULT NULL,
  `IS_TEXT` tinyint DEFAULT NULL,
  `QUESTION_TEXT` varchar(4000) DEFAULT NULL,
  `OLE_TEXT` int DEFAULT NULL,
  `OLE_IMAGE` int DEFAULT NULL,
  `IS_LINKED` tinyint DEFAULT NULL,
  `LINKED_TEXT_ID` int DEFAULT NULL,
  `IS_ACTIVE` tinyint DEFAULT NULL,
  `WRITER` varchar(16) DEFAULT NULL,
  `ENTER_BY` varchar(16) DEFAULT NULL,
  `ENTER_ON` datetime DEFAULT NULL,
  `MODIFY_BY` varchar(16) DEFAULT NULL,
  `MODIFY_ON` datetime DEFAULT NULL,
  `NO_OF_ACS` tinyint DEFAULT '5',
  PRIMARY KEY (`QUESTION_ID`)
) 
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `question_paper`
--

DROP TABLE IF EXISTS `question_paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question_paper` (
  `QP_ID` int NOT NULL,
  `QP_DESC` varchar(512) DEFAULT NULL,
  `NODE_ID` int DEFAULT NULL,
  `EDI` decimal(10,2) DEFAULT NULL,
  `TEST_SESSION` int DEFAULT NULL,
  `TEST_CENTER` int DEFAULT NULL,
  `USER_ID` varchar(18) DEFAULT NULL,
  `COMPUTER_ID` varchar(64) DEFAULT NULL,
  `DATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`QP_ID`)
) 
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rqp_specification`
--

DROP TABLE IF EXISTS `rqp_specification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rqp_specification` (
  `TS_ID` int NOT NULL,
  `QP_ID` int NOT NULL,
  `SUBJECT_ID` int NOT NULL,
  `NODE_NAME` varchar(128) DEFAULT NULL,
  `NOQ` smallint DEFAULT NULL,
  `WTG` decimal(6,2) DEFAULT NULL,
  `DISCIPLINE` int DEFAULT NULL,
  `TIME_ALLOCATED` smallint DEFAULT NULL,
  `USER_ID` varchar(16) DEFAULT NULL,
  `COMPUTER_ID` varchar(64) DEFAULT NULL,
  `DATE_TIME` datetime DEFAULT NULL,
  `SA_ID` int DEFAULT NULL,
  `IS_NEGATIVE_MARKING` tinyint DEFAULT '0',
  `BATCH` int DEFAULT '2025',
  `PROGRAMME` int DEFAULT NULL,
  PRIMARY KEY (`TS_ID`,`QP_ID`,`SUBJECT_ID`)
) 
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `scheduled_question_paper`
--

DROP TABLE IF EXISTS `scheduled_question_paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduled_question_paper` (
  `SQP_ID` int NOT NULL,
  `QP_ID` int NOT NULL,
  `IS_SUBJECT_SWAPPING` tinyint NOT NULL DEFAULT '0',
  `IS_QUESTION_SWAPPING` tinyint NOT NULL DEFAULT '0',
  `IS_ANSWER_SWAPPING` tinyint NOT NULL DEFAULT '0',
  `IS_ASSIGNED` tinyint NOT NULL DEFAULT '0',
  `TEST_CENTER` int DEFAULT NULL,
  `SESSION_ID` int DEFAULT NULL,
  `TS_ID` int DEFAULT NULL,
  PRIMARY KEY (`SQP_ID`),

) 
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `scheduled_test_answer`
--

DROP TABLE IF EXISTS `scheduled_test_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduled_test_answer` (
  `SQP_ID` int NOT NULL,
  `QP_ID` int NOT NULL,
  `QUESTION_ID` int NOT NULL,
  `ANS_CHOICE_ID` tinyint NOT NULL,
  `ANS_CHOICE_ORDER` tinyint NOT NULL,
  PRIMARY KEY (`ANS_CHOICE_ID`,`QUESTION_ID`,`QP_ID`,`SQP_ID`),
 
) 
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `scheduled_test_question`
--

DROP TABLE IF EXISTS `scheduled_test_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduled_test_question` (
  `SQP_ID` int NOT NULL,
  `QP_ID` int NOT NULL,
  `QUESTION_ID` int NOT NULL,
  `SA_ID` int NOT NULL,
  `QUESTION_ORDER` smallint NOT NULL,
  `SUBJECT_ORDER` smallint DEFAULT NULL,
  PRIMARY KEY (`SQP_ID`,`QP_ID`,`QUESTION_ID`),
  
) 
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test_question`
--

DROP TABLE IF EXISTS `test_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_question` (
  `QP_ID` int NOT NULL,
  `QUESTION_ID` int NOT NULL,
  `SA_ID` int NOT NULL,
  PRIMARY KEY (`QP_ID`,`QUESTION_ID`)
) 

