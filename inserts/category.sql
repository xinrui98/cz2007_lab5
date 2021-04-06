-- Insert rows into table 'TableName'
INSERT INTO Category
( -- columns to insert data into
 [name], [containedBy]
)
VALUES
( -- row: values for the columns in the list above
 'Education', NULL
),
( 
 'Entertainment', NULL
),
( 
 'F&B', NULL
),
( 
 'Retail', NULL
),
( 
 'Entertainment', NULL
),
( 
 'Medical Services', NULL
),
( 
 'Cinema', 'Entertainment'
),
( 
 'Clinic', 'Medical Services'
),
( 
 'Fashion', 'Retail'
),
( 
 'Fast Food', 'F&B'
),
( 
 'Grocery Store', 'Retail'
),
( 
 'Primary School', 'Education'
),
( 
 'Tuition Centre', 'Education'
)
-- add more rows here
GO