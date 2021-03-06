-- QUERY-1
CREATE VIEW WEAKSTUDENT AS
SELECT
      *
FROM
      STUDENT
WHERE
      GPA < 3.7;

SELECT
      *
FROM
      WEAKSTUDENT;

-- QUERY-2
CREATE VIEW CVIEW AS
SELECT
      CNAME COLLEGE_NAME,
      STATE,
      ENROLLMENT SEATS
FROM
      COLLEGE;

SELECT
      *
FROM
      CVIEW;

-- QUERY-3
CREATE VIEW CSACCEPT AS
SELECT
      SID,
      CNAME
FROM
      APPLY
WHERE
      MAJOR = 'CS'
      AND DECISION = 'Y';

SELECT
      *
FROM
      CSACCEPT;

-- QUERY-4
CREATE VIEW CSBERKELEY AS
SELECT
      DISTINCT SID,
      SNAME,
      GPA,
      SIZEHS
FROM
      CSACCEPT NATURAL
      JOIN STUDENT
WHERE
      SIZEHS > 500;

SELECT
      *
FROM
      CSBERKELEY;

-- QUERY-5
SELECT
      *
FROM
      CSBERKELEY
WHERE
      GPA > 3.8;

-- QUERY-6
DROP VIEW CSACCEPT;

-- QUERY-7
SELECT
      DISTINCT SNAME
FROM
      CSACCEPT NATURAL
      JOIN STUDENT;

-- QUERY-8
UPDATE
      WEAKSTUDENT
SET
      GPA = GPA + 0.8
WHERE
      SIZEHS > 1000;

-- QUERY-9
CREATE VIEW APPCOUNT AS
SELECT
      SID,
      COUNT(*) NoOfAPP
FROM
      APPLY
GROUP BY
      SID;

SELECT
      *
FROM
      APPCOUNT;

--QUERY-10
UPDATE
      APPCOUNT
SET
      NoofApp = 4
WHERE
      SID = 234;

-- QUERY-11
CREATE VIEW STUNAME AS
SELECT
      SNAME,
      GPA
FROM
      STUDENT;

SELECT
      *
FROM
      STUNAME;

-- QUERY-12
CREATE VIEW STUDENTHS AS
SELECT
      *
FROM
      STUDENT
WHERE
      SIZEHS > 1000 WITH CHECK OPTION;

SELECT
      *
FROM
      STUDENTHS;

-- QUERY-13
INSERT INTO
      STUDENTHS(SID, SNAME, GPA, SIZEHS)
VALUES
      (999, 'Ramu', 9.9, 9999);

-- QUERY-14
UPDATE
      STUDENTHS
SET
      SIZEHS = 999
WHERE
      SNAME = 'Ramu';

-- QUERY-15
INSERT INTO
      STUDENTHS(SID, SNAME, GPA, SIZEHS)
VALUES
      (998, 'Ramu', 9.8, 989);

INSERT INTO
      STUDENT(SID, SNAME, GPA, SIZEHS)
VALUES
      (998, 'Ramu', 9.8, 989);