--Find all the couples such that each couple has checked in at least 2 common locations on 1 Jan 2021. 
--• Find the users who have checked in more than 10 locations every day in the last week. 
INSERT INTO CheckInOut
( -- columns to insert data into
 [UserId], [LocationId], [CheckIn],[CheckOut]
)
VALUES
( -- first row: values for the columns in the list above
 '01', '01', '2021-03-25 15:00:29','2021-03-25 16:00:29'
),
( -- second row: values for the columns in the list above
 '02', '02', '2021-03-26 15:00:29','2021-03-26 16:00:29'
),
( -- second row: values for the columns in the list above
 '03', '03', '2021-04-26 15:00:29','2021-04-26 15:22:29'
),
--For 6 Apr
( -- first row: values for the columns in the list above
 '01', '01', '2021-04-06 15:43:21', '2021-04-06 18:00:00'
),
( -- second row: values for the columns in the list above
 '01', '02', '2021-04-06 15:43:22', '2021-04-06 18:00:50'
),
( -- first row: values for the columns in the list above
 '01', '03', '2021-04-06 18:43:23', '2021-04-06 20:00:00'
),
( -- second row: values for the columns in the list above
 '01', '04', '2021-04-06 18:43:35', '2021-04-06 20:00:50'
),
( -- first row: values for the columns in the list above
 '01', '05', '2021-04-06 15:43:24', '2021-04-06 18:00:00'
),
( -- second row: values for the columns in the list above
 '01', '06', '2021-04-06 15:43:25', '2021-04-06 18:00:50'
),
( -- first row: values for the columns in the list above
 '01', '07', '2021-04-06 18:43:26', '2021-04-06 20:00:00'
),
( -- second row: values for the columns in the list above
 '01', '08', '2021-04-06 18:43:36', '2021-04-06 20:00:50'
),
( -- first row: values for the columns in the list above
 '01', '09', '2021-04-06 18:43:27', '2021-04-06 20:00:00'
),
( -- second row: values for the columns in the list above
 '01', '10', '2021-04-06 18:43:38', '2021-04-06 20:00:50'
),
( -- second row: values for the columns in the list above
 '01', '11', '2021-04-06 18:43:39', '2021-04-06 20:00:50'
),
--For 5 Apr
( -- first row: values for the columns in the list above
 '01', '01', '2021-04-05 15:43:21', '2021-04-06 18:00:00'
),
( -- second row: values for the columns in the list above
 '01', '02', '2021-04-05 15:43:22', '2021-04-06 18:00:50'
),
( -- first row: values for the columns in the list above
 '01', '03', '2021-04-05 18:43:23', '2021-04-06 20:00:00'
),
( -- second row: values for the columns in the list above
 '01', '04', '2021-04-05 18:43:35', '2021-04-06 20:00:50'
),
( -- first row: values for the columns in the list above
 '01', '05', '2021-04-05 15:43:24', '2021-04-06 18:00:00'
),
( -- second row: values for the columns in the list above
 '01', '06', '2021-04-05 15:43:25', '2021-04-06 18:00:50'
),
( -- first row: values for the columns in the list above
 '01', '07', '2021-04-05 18:43:26', '2021-04-06 20:00:00'
),
( -- second row: values for the columns in the list above
 '01', '08', '2021-04-05 18:43:36', '2021-04-06 20:00:50'
),
( -- first row: values for the columns in the list above
 '01', '09', '2021-04-05 18:43:27', '2021-04-06 20:00:00'
),
( -- second row: values for the columns in the list above
 '01', '10', '2021-04-05 18:43:38', '2021-04-06 20:00:50'
),
( -- second row: values for the columns in the list above
 '01', '11', '2021-04-05 18:43:39', '2021-04-06 20:00:50'
),

--For 4 Apr
( -- first row: values for the columns in the list above
 '01', '01', '2021-04-04 15:43:21', '2021-04-06 18:00:00'
),
( -- second row: values for the columns in the list above
 '01', '02', '2021-04-04 15:43:22', '2021-04-06 18:00:50'
),
( -- first row: values for the columns in the list above
 '01', '03', '2021-04-04 18:43:23', '2021-04-06 20:00:00'
),
( -- second row: values for the columns in the list above
 '01', '04', '2021-04-04 18:43:35', '2021-04-06 20:00:50'
),
( -- first row: values for the columns in the list above
 '01', '05', '2021-04-04 15:43:24', '2021-04-06 18:00:00'
),
( -- second row: values for the columns in the list above
 '01', '06', '2021-04-04 15:43:25', '2021-04-06 18:00:50'
),
( -- first row: values for the columns in the list above
 '01', '07', '2021-04-04 18:43:26', '2021-04-06 20:00:00'
),
( -- second row: values for the columns in the list above
 '01', '08', '2021-04-04 18:43:36', '2021-04-06 20:00:50'
),
( -- first row: values for the columns in the list above
 '01', '09', '2021-04-04 18:43:27', '2021-04-06 20:00:00'
),
( -- second row: values for the columns in the list above
 '01', '10', '2021-04-04 18:43:38', '2021-04-06 20:00:50'
),
( -- second row: values for the columns in the list above
 '01', '11', '2021-04-04 18:43:39', '2021-04-06 20:00:50'
),
--For 3 Apr
( -- first row: values for the columns in the list above
 '01', '01', '2021-04-03 15:43:21', '2021-04-06 18:00:00'
),
( -- second row: values for the columns in the list above
 '01', '02', '2021-04-03 15:43:22', '2021-04-06 18:00:50'
),
( -- first row: values for the columns in the list above
 '01', '03', '2021-04-03 18:43:23', '2021-04-06 20:00:00'
),
( -- second row: values for the columns in the list above
 '01', '04', '2021-04-03 18:43:35', '2021-04-06 20:00:50'
),
( -- first row: values for the columns in the list above
 '01', '05', '2021-04-03 15:43:24', '2021-04-06 18:00:00'
),
( -- second row: values for the columns in the list above
 '01', '06', '2021-04-03 15:43:25', '2021-04-06 18:00:50'
),
( -- first row: values for the columns in the list above
 '01', '07', '2021-04-03 18:43:26', '2021-04-06 20:00:00'
),
( -- second row: values for the columns in the list above
 '01', '08', '2021-04-03 18:43:36', '2021-04-06 20:00:50'
),
( -- first row: values for the columns in the list above
 '01', '09', '2021-04-03 18:43:27', '2021-04-06 20:00:00'
),
( -- second row: values for the columns in the list above
 '01', '10', '2021-04-03 18:43:38', '2021-04-06 20:00:50'
),
( -- second row: values for the columns in the list above
 '01', '11', '2021-04-03 18:43:39', '2021-04-06 20:00:50'
),
--For 2 Apr
( -- first row: values for the columns in the list above
 '01', '01', '2021-04-02 15:43:21', '2021-04-06 18:00:00'
),
( -- second row: values for the columns in the list above
 '01', '02', '2021-04-02 15:43:22', '2021-04-06 18:00:50'
),
( -- first row: values for the columns in the list above
 '01', '03', '2021-04-02 18:43:23', '2021-04-06 20:00:00'
),
( -- second row: values for the columns in the list above
 '01', '04', '2021-04-02 18:43:35', '2021-04-06 20:00:50'
),
( -- first row: values for the columns in the list above
 '01', '05', '2021-04-02 15:43:24', '2021-04-06 18:00:00'
),
( -- second row: values for the columns in the list above
 '01', '06', '2021-04-02 15:43:25', '2021-04-06 18:00:50'
),
( -- first row: values for the columns in the list above
 '01', '07', '2021-04-02 18:43:26', '2021-04-06 20:00:00'
),
( -- second row: values for the columns in the list above
 '01', '08', '2021-04-02 18:43:36', '2021-04-06 20:00:50'
),
( -- first row: values for the columns in the list above
 '01', '09', '2021-04-02 18:43:27', '2021-04-06 20:00:00'
),
( -- second row: values for the columns in the list above
 '01', '10', '2021-04-02 18:43:38', '2021-04-06 20:00:50'
),
( -- second row: values for the columns in the list above
 '01', '11', '2021-04-02 18:43:39', '2021-04-06 20:00:50'
),
--For 1 Apr
( -- first row: values for the columns in the list above
 '01', '01', '2021-04-01 15:43:21', '2021-04-06 18:00:00'
),
( -- second row: values for the columns in the list above
 '01', '02', '2021-04-01 15:43:22', '2021-04-06 18:00:50'
),
( -- first row: values for the columns in the list above
 '01', '03', '2021-04-01 18:43:23', '2021-04-06 20:00:00'
),
( -- second row: values for the columns in the list above
 '01', '04', '2021-04-01 18:43:35', '2021-04-06 20:00:50'
),
( -- first row: values for the columns in the list above
 '01', '05', '2021-04-01 15:43:24', '2021-04-06 18:00:00'
),
( -- second row: values for the columns in the list above
 '01', '06', '2021-04-01 15:43:25', '2021-04-06 18:00:50'
),
( -- first row: values for the columns in the list above
 '01', '07', '2021-04-01 18:43:26', '2021-04-06 20:00:00'
),
( -- second row: values for the columns in the list above
 '01', '08', '2021-04-01 18:43:36', '2021-04-06 20:00:50'
),
( -- first row: values for the columns in the list above
 '01', '09', '2021-04-01 18:43:27', '2021-04-06 20:00:00'
),
( -- second row: values for the columns in the list above
 '01', '10', '2021-04-01 18:43:38', '2021-04-06 20:00:50'
),
( -- second row: values for the columns in the list above
 '01', '11', '2021-04-01 18:43:39', '2021-04-06 20:00:50'
),
--For 31 Mar
( -- first row: values for the columns in the list above
 '01', '01', '2021-03-31 15:43:21', '2021-04-06 18:00:00'
),
( -- second row: values for the columns in the list above
 '01', '02', '2021-03-31 15:43:22', '2021-04-06 18:00:50'
),
( -- first row: values for the columns in the list above
 '01', '03', '2021-03-31 18:43:23', '2021-04-06 20:00:00'
),
( -- second row: values for the columns in the list above
 '01', '04', '2021-03-31 18:43:35', '2021-04-06 20:00:50'
),
( -- first row: values for the columns in the list above
 '01', '05', '2021-03-31 15:43:24', '2021-04-06 18:00:00'
),
( -- second row: values for the columns in the list above
 '01', '06', '2021-03-31 15:43:25', '2021-04-06 18:00:50'
),
( -- first row: values for the columns in the list above
 '01', '07', '2021-03-31 18:43:26', '2021-04-06 20:00:00'
),
( -- second row: values for the columns in the list above
 '01', '08', '2021-03-31 18:43:36', '2021-04-06 20:00:50'
),
( -- first row: values for the columns in the list above
 '01', '09', '2021-03-31 18:43:27', '2021-04-06 20:00:00'
),
( -- second row: values for the columns in the list above
 '01', '10', '2021-03-31 18:43:38', '2021-04-06 20:00:50'
),
( -- second row: values for the columns in the list above
 '01', '11', '2021-03-31 18:43:39', '2021-04-06 20:00:50'
), 
--For 30 Mar
( -- first row: values for the columns in the list above
 '01', '01', '2021-03-30 15:43:21', '2021-04-06 18:00:00'
),
( -- second row: values for the columns in the list above
 '01', '02', '2021-03-30 15:43:22', '2021-04-06 18:00:50'
),
( -- first row: values for the columns in the list above
 '01', '03', '2021-03-30 18:43:23', '2021-04-06 20:00:00'
),
( -- second row: values for the columns in the list above
 '01', '04', '2021-03-30 18:43:35', '2021-04-06 20:00:50'
),
( -- first row: values for the columns in the list above
 '01', '05', '2021-03-30 15:43:24', '2021-04-06 18:00:00'
),
( -- second row: values for the columns in the list above
 '01', '06', '2021-03-30 15:43:25', '2021-04-06 18:00:50'
),
( -- first row: values for the columns in the list above
 '01', '07', '2021-03-30 18:43:26', '2021-04-06 20:00:00'
),
( -- second row: values for the columns in the list above
 '01', '08', '2021-03-30 18:43:36', '2021-04-06 20:00:50'
),
( -- first row: values for the columns in the list above
 '01', '09', '2021-03-30 18:43:27', '2021-04-06 20:00:00'
),
( -- second row: values for the columns in the list above
 '01', '10', '2021-03-30 18:43:38', '2021-04-06 20:00:50'
),
( -- second row: values for the columns in the list above
 '01', '11', '2021-03-30 18:43:39', '2021-04-06 20:00:50'
), 
--For 29 Mar
( -- first row: values for the columns in the list above
 '01', '01', '2021-03-29 15:43:21', '2021-04-06 18:00:00'
),
( -- second row: values for the columns in the list above
 '01', '02', '2021-03-29 15:43:22', '2021-04-06 18:00:50'
),
( -- first row: values for the columns in the list above
 '01', '03', '2021-03-29 18:43:23', '2021-04-06 20:00:00'
),
( -- second row: values for the columns in the list above
 '01', '04', '2021-03-29 18:43:35', '2021-04-06 20:00:50'
),
( -- first row: values for the columns in the list above
 '01', '05', '2021-03-29 15:43:24', '2021-04-06 18:00:00'
),
( -- second row: values for the columns in the list above
 '01', '06', '2021-03-29 15:43:25', '2021-04-06 18:00:50'
),
( -- first row: values for the columns in the list above
 '01', '07', '2021-03-29 18:43:26', '2021-04-06 20:00:00'
),
( -- second row: values for the columns in the list above
 '01', '08', '2021-03-29 18:43:36', '2021-04-06 20:00:50'
),
( -- first row: values for the columns in the list above
 '01', '09', '2021-03-29 18:43:27', '2021-04-06 20:00:00'
),
( -- second row: values for the columns in the list above
 '01', '10', '2021-03-29 18:43:38', '2021-04-06 20:00:50'
),
( -- second row: values for the columns in the list above
 '01', '11', '2021-03-29 18:43:39', '2021-04-06 20:00:50'
)
-- add more rows here
GO


INSERT INTO [CheckInOut]
( -- columns to insert data into
 [UserId], [LocationId], [CheckIn], [CheckOut]
)
VALUES
--For 6 Apr
( -- first row: values for the columns in the list above
 '02', '01', '2021-04-06 15:43:21', '2021-04-06 18:00:00'
),
( -- second row: values for the columns in the list above
 '02', '02', '2021-04-06 15:43:22', '2021-04-06 18:00:50'
),
( -- first row: values for the columns in the list above
 '02', '03', '2021-04-05 18:43:23', '2021-04-06 20:00:00'
),
( -- second row: values for the columns in the list above
 '02', '04', '2021-04-05 18:43:35', '2021-04-06 20:00:50'
),
( -- first row: values for the columns in the list above
 '03', '05', '2021-04-04 15:43:24', '2021-04-06 18:00:00'
),
( -- second row: values for the columns in the list above
 '03', '06', '2021-04-04 15:43:25', '2021-04-06 18:00:50'
),
( -- first row: values for the columns in the list above
 '04', '07', '2021-04-04 18:43:26', '2021-04-06 20:00:00'
),
( -- second row: values for the columns in the list above
 '03', '08', '2021-04-03 18:43:36', '2021-04-06 20:00:50'
),
( -- first row: values for the columns in the list above
 '02', '09', '2021-04-02 18:43:27', '2021-04-06 20:00:00'
),
( -- second row: values for the columns in the list above
 '03', '10', '2021-04-02 18:43:38', '2021-04-06 20:00:50'
),
( -- second row: values for the columns in the list above
 '04', '11', '2021-04-02 18:43:39', '2021-04-06 20:00:50'
),
--For 5 Apr
( -- first row: values for the columns in the list above
 '03', '01', '2021-04-01 15:43:21', '2021-04-06 18:00:00'
),
( -- second row: values for the columns in the list above
 '02', '02', '2021-03-31 15:43:22', '2021-04-06 18:00:50'
),
( -- first row: values for the columns in the list above
 '05', '03', '2021-03-31 18:43:23', '2021-04-06 20:00:00'
),
( -- second row: values for the columns in the list above
 '04', '04', '2021-03-31 18:43:35', '2021-04-06 20:00:50'
),
( -- first row: values for the columns in the list above
 '03', '05', '2021-03-30 15:43:24', '2021-04-06 18:00:00'
),
( -- second row: values for the columns in the list above
 '05', '06', '2021-03-30 15:43:25', '2021-04-06 18:00:50'
),
( -- first row: values for the columns in the list above
 '06', '07', '2021-03-29 18:43:26', '2021-04-06 20:00:00'
),
( -- second row: values for the columns in the list above
 '07', '08', '2021-03-29 18:43:36', '2021-04-06 20:00:50'
),
( -- first row: values for the columns in the list above
 '03', '09', '2021-03-29 18:43:27', '2021-04-06 20:00:00'
),
( -- second row: values for the columns in the list above
 '02', '10', '2021-03-30 18:43:38', '2021-04-06 20:00:50'
),
( -- second row: values for the columns in the list above
 '05', '11', '2021-03-31 18:43:39', '2021-04-06 20:00:50'
)

-- -- Insert rows into table 'TableName'
INSERT INTO CheckInOut
( -- columns to insert data into
 [UserId], [LocationId], [CheckIn],[CheckOut]
)
VALUES
( -- first row: values for the columns in the list above
 '01', '01', '2021-03-25 15:00:29','2021-03-25 16:00:29'
),
( -- second row: values for the columns in the list above
 '02', '02', '2021-03-26 15:00:29','2021-03-26 16:00:29'
),
( -- second row: values for the columns in the list above
 '03', '03', '2021-04-26 15:00:29','2021-04-26 15:22:29'
)
-- add more rows here
GO


INSERT INTO [CheckInOut]
( -- columns to insert data into
 [UserId], [LocationId], [CheckIn], [CheckOut]
)
VALUES
( -- first row: values for the columns in the list above
 '06', '02', '2021-01-01 15:43:21', '2021-01-01 18:00:00'
),
( -- second row: values for the columns in the list above
 '07', '02', '2021-01-01 15:43:22', '2021-01-01 18:00:50'
),
( -- first row: values for the columns in the list above
 '06', '03', '2021-01-01 18:43:23', '2021-01-01 20:00:00'
),
( -- second row: values for the columns in the list above
 '07', '03', '2021-01-01 18:43:35', '2021-01-01 20:00:50'
),
( -- first row: values for the columns in the list above
 '06', '05', '2021-01-04 15:43:21', '2021-01-01 18:00:00'
),
( -- second row: values for the columns in the list above
 '07', '04', '2021-01-04 15:43:22', '2021-01-01 18:00:50'
),
( -- first row: values for the columns in the list above
 '06', '05', '2021-03-04 18:43:23', '2021-01-01 20:00:00'
),
( -- second row: values for the columns in the list above
 '07', '04', '2021-03-04 18:43:35', '2021-01-01 20:00:50'
),
( -- first row: values for the columns in the list above
 '09', '02', '2021-01-01 18:43:23', '2021-01-01 20:00:00'
),
( -- second row: values for the columns in the list above
 '09', '03', '2021-01-01 18:43:35', '2021-01-01 20:00:50'
)