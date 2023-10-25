sample 1
//To filter a table and return only unique rows, you can use the DISTINCT keyword along with a SELECT statement. The DISTINCT keyword eliminates duplicate rows from the result set.
//In SQL, the JOIN operation is used to combine rows from two or more tables based on a related column between them.
//In SQL, the IN operator is used to specify a list of values and check if a column's value matches any of the values in that list. 
  You can use the IN operator in a WHERE clause to filter rows where a column's value is in the list of values you specify.
//syntax
SELECT DISTINCT CustFirstName, CustLastName FROM customers JOIN entertainers JOIN musical_styles WHERE StyleName IN ('Country', 'Country Rock')


sample 2
//The EXISTS keyword in SQL is typically used to check for the existence of rows that meet a specified condition. 
You can use EXISTS in a subquery within the WHERE clause to filter rows based on whether a subquery returns any results. 
//Here's the basic syntax for using EXISTS:
SELECT CustomerName
FROM Customers
WHERE EXISTS (SELECT 1 FROM Orders WHERE Orders.CustomerID = Customers.CustomerID);

SELECT EntStageName FROM entertainers JOIN Customers WHERE EXISTS ( SELECT 1 FROM entertainers WHERE CustomerID = ( SELECT CustomerID FROM Customers WHERE CustLastName = 'Bonnicksen' ) )


