#!/usr/bin/python3
import pymysql
import cgi,cgitb
cgitb.enable()
print ("Content-type:text/html\r\n")


db = pymysql.connect(host="localhost",user="root",password="",database="Admin_Panel" )
cursor = db.cursor()
cursor.execute("SELECT * from student")

# Fetch a single row using fetchone() method.
data = cursor.fetchall()
print("<html>")
print("<table border='1'>")
print("<h2>All Details</h2>")
print("<tr>")
print("<th>ID</th>")
print("<th>NAME</th>")
print("<th>EMAIL</th>")
print("<th>PASSWORD</th>")
print("<th>MOBNO</th>")
print("<th colspan='2'>ACTION</th>")
print("</table>")
print("<html>")
for row in data:
    id = row[0]
    name = row[1]
    email = row[2]
    password = row[3]
    mobno = row[4]
    print ("Id=%d,Name=%s,Address=%s,Mobile=%s,Email=%s" % (id, name, email, password, mobno))
    print("<a href='Update_New.py?sid=%d'>EDIT</a>"%(id))
    print("<a href='Delete.py?sid=%d'>DELETE</a>"%(id))
    print("<br/>")

# disconnect from server
db.close()
