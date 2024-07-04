CREATE DATABASE IF NOT EXISTS forte;
USE forte;

-- Table structure for table `action_logs`
DROP TABLE IF EXISTS `action_logs`;
CREATE TABLE `action_logs` (
  `ARN` int DEFAULT NULL,
  `CANDIDATE_ID` int DEFAULT NULL,
  `ACTION_ID` varchar(64) DEFAULT NULL,
  `ACTION_ON` datetime DEFAULT NULL,
  `USER_ID` varchar(16) DEFAULT NULL,
  `UHA` varchar(16) DEFAULT NULL
);

-- Table structure for table `answer_choice`
DROP TABLE IF EXISTS `answer_choice`;
CREATE TABLE `answer_choice` (
  `ANS_CHOICE_ID` tinyint NOT NULL,
  `QUESTION_ID` int NOT NULL,
  `ANS_CHOICE_TEXT` varchar(2000) DEFAULT NULL,
  `IS_TEXT` tinyint DEFAULT NULL,
  `OLE_TEXT` int DEFAULT NULL,
  `OLE_IMAGE` int DEFAULT NULL,
  `ENTER_BY` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`ANS_CHOICE_ID`,`QUESTION_ID`)
);

-- Table structure for table `candidate`
DROP TABLE IF EXISTS `candidate`;
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
);

-- Table structure for table `candidate_test`
DROP TABLE IF EXISTS `candidate_test`;
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
);

-- Table structure for table `candidate_test_detail`
DROP TABLE IF EXISTS `candidate_test_detail`;
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
);

-- Table structure for table `candidate_test_result`
DROP TABLE IF EXISTS `candidate_test_result`;
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
);

-- Table structure for table `candidate_test_result_detail`
DROP TABLE IF EXISTS `candidate_test_result_detail`;
CREATE TABLE `candidate_test_result_detail` (
  `CANDIDATE_ID` int NOT NULL,
  `SA_ID` int NOT NULL,
  `QUESTION_ATTEMPTED` smallint DEFAULT NULL,
  `MARKS` decimal(10,6) DEFAULT NULL,
  `QUESTION_CORRECT` smallint DEFAULT NULL,
  `NODE_ID` int DEFAULT NULL,
  `QUESTION_WTG` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`SA_ID`,`CANDIDATE_ID`)
);

-- Table structure for table `candidate_test_schedule`
DROP TABLE IF EXISTS `candidate_test_schedule`;
CREATE TABLE `candidate_test_schedule` (
  `CANDIDATE_ID` int NOT NULL,
  `TEST_SESSION` int DEFAULT NULL,
  `TEST_CENTER` int DEFAULT NULL,
  `PROGRAMME_ID` int DEFAULT NULL,
  `SEAT_NUMBER` int DEFAULT NULL,
  `GROUP_ID` int DEFAULT NULL,
  `ARN` int DEFAULT NULL,
  PRIMARY KEY (`CANDIDATE_ID`)
);

-- Table structure for table `correct_answer_choice`
DROP TABLE IF EXISTS `correct_answer_choice`;
CREATE TABLE `correct_answer_choice` (
  `ANS_CHOICE_ID` tinyint NOT NULL,
  `QUESTION_ID` int NOT NULL,
  PRIMARY KEY (`ANS_CHOICE_ID`,`QUESTION_ID`)
);

-- Table structure for table `question`
DROP TABLE IF EXISTS `question`;
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
);

-- Table structure for table `question_paper`
DROP TABLE IF EXISTS `question_paper`;
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
);

-- Table structure for table `rqp_specification`
DROP TABLE IF EXISTS `rqp_specification`;
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
);

-- Table structure for table `scheduled_question_paper`
DROP TABLE IF EXISTS `scheduled_question_paper`;
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
  PRIMARY KEY (`SQP_ID`)
);

-- Table structure for table `scheduled_test_answer`
DROP TABLE IF EXISTS `scheduled_test_answer`;
CREATE TABLE `scheduled_test_answer` (
  `SQP_ID` int NOT NULL,
  `QP_ID` int NOT NULL,
  `QUESTION_ID` int NOT NULL,
  `ANS_CHOICE_ID` tinyint NOT NULL,
  `ANS_CHOICE_ORDER` tinyint NOT NULL,
  PRIMARY KEY (`ANS_CHOICE_ID`,`QUESTION_ID`,`QP_ID`,`SQP_ID`)
);

-- Table structure for table `scheduled_test_question`
DROP TABLE IF EXISTS `scheduled_test_question`;
CREATE TABLE `scheduled_test_question` (
  `SQP_ID` int NOT NULL,
  `QP_ID` int NOT NULL,
  `QUESTION_ID` int NOT NULL,
  `SA_ID` int NOT NULL,
  `QUESTION_ORDER` smallint NOT NULL,
  `SUBJECT_ORDER` smallint DEFAULT NULL,
  PRIMARY KEY (`SQP_ID`,`QP_ID`,`QUESTION_ID`)
);

-- Table structure for table `test_question`
DROP TABLE IF EXISTS `test_question`;
CREATE TABLE `test_question` (
  `QP_ID` int NOT NULL,
  `QUESTION_ID` int NOT NULL,
  `SA_ID` int NOT NULL,
  PRIMARY KEY (`QP_ID`,`QUESTION_ID`)
);



--  Adding DATA
-- Insert data into action_logs
INSERT INTO action_logs (ARN, CANDIDATE_ID, ACTION_ID, ACTION_ON, USER_ID, UHA)
VALUES
(1001, 5001, 'LOGIN', '2024-07-04 09:30:00', 'USER001', 'UHA001'),
(1002, 5002, 'SUBMIT_TEST', '2024-07-04 11:45:00', 'USER002', 'UHA002'),
(1003, 5003, 'LOGOUT', '2024-07-04 13:15:00', 'USER003', 'UHA003');

-- Insert data into answer_choice
INSERT INTO answer_choice (ANS_CHOICE_ID, QUESTION_ID, ANS_CHOICE_TEXT, IS_TEXT, OLE_TEXT, OLE_IMAGE, ENTER_BY)
VALUES
(1, 1001, 'Islamabad', 1, NULL, NULL, 'ADMIN001'),
(2, 1001, 'Lahore', 1, NULL, NULL, 'ADMIN001'),
(3, 1001, 'Karachi', 1, NULL, NULL, 'ADMIN001'),
(4, 1001, 'Peshawar', 1, NULL, NULL, 'ADMIN001');

-- Insert data into candidate
INSERT INTO candidate (CANDIDATE_ID, FIRST_NAME, DOB, SEX, NIC, ADDRESS, CITY, AREA, NATIONAL, PHONE, PHONE_AREA, EMAIL, INCOME, SS_YEAR, SS_BOARD, SS_REG, FATHER_NAME, MOBILE, CITY_ID, COUNTRY_ID, SITE_REF, BATCH, CAMPUS, PROGRAMME, CENTER, SESSION_ID, PASSWORD, IS_APPEARED, VERIFIED_BY, IS_FEE_PAID, IS_VARIFIED, IS_SCHEDULED, IS_ADMIT_PRINTED, DECLARATION, TEST_ID, APPL_PASSWORD, APPL_PASSWORD_HINT, ARN, IS_SAT_VARIFIED, CREATED_BY, CREATED_ON)
VALUES
(5001, 'Muhammad Ali', '2000-05-15', 1, '35202-1234567-1', '123 Jinnah Road', 'Lahore', 'Gulberg', 1, '042-35678901', '042', 'muhammad.ali@email.com', 50000, '2018-01-01', 1, 'REG001', 'Ahmed Khan', '0300-1234567', 1, 1, 1, 2025, 1, 1, 1, 1, 'pass123', 0, 'ADMIN001', 1, 1, 1, 0, 1, 'TEST001', 'app123', 'First pet name', 1001, 1, 'ADMIN001', '2024-07-01'),
(5002, 'Fatima Ahmed', '2001-08-20', 2, '42101-9876543-2', '456 Quaid-e-Azam Street', 'Karachi', 'Clifton', 1, '021-99876543', '021', 'fatima.ahmed@email.com', 45000, '2019-01-01', 2, 'REG002', 'Imran Ahmed', '0333-9876543', 2, 1, 2, 2025, 2, 2, 2, 2, 'pass456', 0, 'ADMIN002', 1, 1, 1, 0, 1, 'TEST002', 'app456', 'Mother\'s birthplace', 1002, 1, 'ADMIN002', '2024-07-02');

-- Insert data into candidate_test
INSERT INTO candidate_test (CANDIDATE_ID, SQP_ID, SESSION_ID, START_TIME, END_TIME, QUESTION_ATTEMPED, MARKS, TEST_STATUS)
VALUES
(5001, 1001, 1, '2024-07-05 09:00:00', '2024-07-05 11:00:00', 50, 75.50, 1),
(5002, 1002, 2, '2024-07-05 14:00:00', '2024-07-05 16:00:00', 48, 82.75, 1);

-- Insert data into candidate_test_detail
INSERT INTO candidate_test_detail (CANDIDATE_ID, SQP_ID, QP_ID, QUESTION_ID, SELECTED_ANSWER, LAST_VIEW_TIME, ELAPSED_TIME, IS_ATTEMPED, IS_CORRECT, MARKS, MARKED_BY, MARKED_ON)
VALUES
(5001, 1001, 101, 1001, 3, '2024-07-05 09:15:00', '2024-07-05 00:02:30', 1, 1, 2.00, 'SYSTEM', '2024-07-05 11:05:00'),
(5002, 1002, 102, 1002, 2, '2024-07-05 14:30:00', '2024-07-05 00:03:15', 1, 0, 0.00, 'SYSTEM', '2024-07-05 16:05:00');

-- Insert data into candidate_test_result
INSERT INTO candidate_test_result (CANDIDATE_ID, QUESTION_ATTEMPTED, MARKS, DIFFICULTY_FACTOR, FINAL_MARKS, USER_ID, COMPUTER_ID, DATE_TIME)
VALUES
(5001, 50, 75.50, 1.05, 79.28, 'USER001', 'COMP001', '2024-07-05 11:15:00'),
(5002, 48, 82.75, 1.02, 84.41, 'USER002', 'COMP002', '2024-07-05 16:15:00');

-- Insert data into candidate_test_result_detail
INSERT INTO candidate_test_result_detail (CANDIDATE_ID, SA_ID, QUESTION_ATTEMPTED, MARKS, QUESTION_CORRECT, NODE_ID, QUESTION_WTG)
VALUES
(5001, 1, 25, 37.75, 20, 101, 1.50),
(5001, 2, 25, 37.75, 18, 102, 1.50),
(5002, 1, 24, 41.25, 22, 101, 1.75),
(5002, 2, 24, 41.50, 21, 102, 1.75);

-- Insert data into candidate_test_schedule
INSERT INTO candidate_test_schedule (CANDIDATE_ID, TEST_SESSION, TEST_CENTER, PROGRAMME_ID, SEAT_NUMBER, GROUP_ID, ARN)
VALUES
(5001, 1, 1, 1, 101, 1, 1001),
(5002, 2, 2, 2, 202, 2, 1002);

-- Insert data into correct_answer_choice
INSERT INTO correct_answer_choice (ANS_CHOICE_ID, QUESTION_ID)
VALUES
(3, 1001),
(2, 1002);

-- Insert data into question
INSERT INTO question (QUESTION_ID, SA_ID, QUESTION_TYPE_ID, DI_LEVEL, TI_LEVEL, EDI, IS_TEXT, QUESTION_TEXT, OLE_TEXT, OLE_IMAGE, IS_LINKED, LINKED_TEXT_ID, IS_ACTIVE, WRITER, ENTER_BY, ENTER_ON, MODIFY_BY, MODIFY_ON, NO_OF_ACS)
VALUES
(1001, 1, 1, 2, 2, 0.75, 1, 'What is the capital of Pakistan?', NULL, NULL, 0, NULL, 1, 'WRITER001', 'ADMIN001', '2024-07-01 10:00:00', NULL, NULL, 4),
(1002, 2, 1, 3, 3, 0.85, 1, 'Which river is known as the lifeline of Pakistan?', NULL, NULL, 0, NULL, 1, 'WRITER002', 'ADMIN002', '2024-07-01 11:00:00', NULL, NULL, 4);

-- Insert data into question_paper
INSERT INTO question_paper (QP_ID, QP_DESC, NODE_ID, EDI, TEST_SESSION, TEST_CENTER, USER_ID, COMPUTER_ID, DATE_TIME)
VALUES
(101, 'General Knowledge Test Paper', 1, 0.80, 1, 1, 'USER001', 'COMP001', '2024-07-02 09:00:00'),
(102, 'Pakistan Studies Test Paper', 2, 0.85, 2, 2, 'USER002', 'COMP002', '2024-07-02 10:00:00');

-- Insert data into rqp_specification
INSERT INTO rqp_specification (TS_ID, QP_ID, SUBJECT_ID, NODE_NAME, NOQ, WTG, DISCIPLINE, TIME_ALLOCATED, USER_ID, COMPUTER_ID, DATE_TIME, SA_ID, IS_NEGATIVE_MARKING, BATCH, PROGRAMME)
VALUES
(1, 101, 1, 'General Knowledge', 50, 100.00, 1, 120, 'USER001', 'COMP001', '2024-07-03 09:00:00', 1, 1, 2025, 1),
(2, 102, 2, 'Pakistan Studies', 50, 100.00, 2, 120, 'USER002', 'COMP002', '2024-07-03 10:00:00', 2, 1, 2025, 2);

-- Insert data into scheduled_question_paper
INSERT INTO scheduled_question_paper (SQP_ID, QP_ID, IS_SUBJECT_SWAPPING, IS_QUESTION_SWAPPING, IS_ANSWER_SWAPPING, IS_ASSIGNED, TEST_CENTER, SESSION_ID, TS_ID)
VALUES
(1001, 101, 0, 1, 1, 1, 1, 1, 1),
(1002, 102, 0, 1, 1, 1, 2, 2, 2);

-- Insert data into scheduled_test_answer
INSERT INTO scheduled_test_answer (SQP_ID, QP_ID, QUESTION_ID, ANS_CHOICE_ID, ANS_CHOICE_ORDER)
VALUES
(1001, 101, 1001, 1, 2),
(1001, 101, 1001, 2, 3),
(1001, 101, 1001, 3, 1),
(1001, 101, 1001, 4, 4),
(1002, 102, 1002, 1, 3),
(1002, 102, 1002, 2, 1),
(1002, 102, 1002, 3, 4),
(1002, 102, 1002, 4, 2);

-- Insert data into scheduled_test_question
INSERT INTO scheduled_test_question (SQP_ID, QP_ID, QUESTION_ID, SA_ID, QUESTION_ORDER, SUBJECT_ORDER)
VALUES
(1001, 101, 1001, 1, 1, 1),
(1002, 102, 1002, 2, 1, 1);

-- Insert data into test_question
INSERT INTO test_question (QP_ID, QUESTION_ID, SA_ID)
VALUES
(101, 1001, 1),
(102, 1002, 2);
