SELECT unique_id
    ,name
FROM employeeUNI u
    RIGHT JOIN employees e
        ON e.id=u.id
    
