-- Insert rows into table 'TableName'
INSERT INTO Rating
( -- columns to insert data into
 [UserId], [LocationId], [CheckIn], [Rate],[Review]
)
VALUES
( -- row: values for the columns in the list above
 '01', '02', '2020-12-25 15:00:29.000','5','This place is good'
),
(
 '01', '01', '2020-12-25 15:01:29.000','5','This place is good'
),
( 
 '02', '02', '2020-12-25 15:00:22.000','3','This place is good'
),
(
 '02', '02', '2020-12-25 15:00:29.000','5','This place is good'
),
(
 '03', '02', '2020-12-25 15:00:29.000','5','This place is good'
),
(
 '03', '03', '2021-04-26 15:00:29.000','4','Normal place'
),
(
 '05', '02', '2020-12-25 15:00:29.000','5','This place is good'
),
(
 '05', '01', '2020-12-25 15:00:39.000','5','This place is good'
),
(
 '06', '01', '2020-12-25 15:00:19.000','5','This place is good'
),
(
 '06', '01', '2020-12-25 15:00:19.000','5','This place is good'
),
(
 '06', '02', '2020-12-25 15:00:29.000','5','This place is good'
),
(
 '07', '02', '2020-12-25 15:00:29.000','5','This place is good'
),
(
 '07', '01', '2020-12-25 15:00:49.000','5','This place is good'
),
(
 '08', '02', '2020-12-25 15:00:29.000','5','This place is good'
),
(
 '08', '01', '2020-12-25 15:00:59.000','5','This place is good'
),
(
 '03', '03', '2021-04-06 11:08:32.003','1','This place is bad'
),
(
 '03', '04', '2021-04-06 11:39:34.497','1','Bad'
),
(
 '03', '03', '2021-04-06 11:36:07.227','1','This place is bad'
),
(
 '03', '04', '2021-04-06 11:36:24.173','1','This place is bad'
)
GO
