#!/usr/bin/python3
import pymysql
import cgi,cgitb
cgitb.enable()
form = cgi.FieldStorage()

print ("Content-type:text/html\r\n")
id = form.getvalue("sid")
db = pymysql.connect(host="localhost",user="root",password="",database="Admin_Panel")
cursor = db.cursor()
cursor.execute("select * from student where stud_id='%s'"%(id))
data = cursor.fetchall()
print("<html>")
print("<head>")
print("<title>Update Data</title>")
print("<link rel='stylesheet' href='Bootstrap/css/bootstrap.css'>")
print("</head>")
print("<body>")
for row in data:
    id = row[0]
    name = row[1]
    email = row[2]
    password = row[3]
    mobno = row[4]
print("<form class='w-50 mt-5' action='Update.py?sid=%d'>"%(id))
print("<h2 class='text-center'>Update Details</h2>")
print("<div class=form-group mt-5>")
print("<div class='form-group mt-3'>")
print("<input type='text' class='form-control' name='id' value='%s' id='id' placeholder='Enter Name'>"%(id))
print("</div>")
print("<div class='form-group mt-3'>")
print("<input type='text' class='form-control' name='name' value='%s' id='name' placeholder='Enter Name'>"%(name))
print("</div>")
print("<div class='form-group mt-3'>")
print("<input type='email' class='form-control' name='email' value='%s'  id='email' aria-describedby='emailHelp' placeholder='Enter email'>"%(email))
print("</div>")
print("<div class='form-group mt-3'>")
print("<input type='password' class='form-control' name='pwd' value='%s' id='pwd' placeholder='Enter Password'>"%(password))
print("</div>")
print("<div class='form-group mt-3'>")
print("<input type='password' class='form-control' name='cpwd' value='%s' id='cpwd' placeholder='Enter Confirm Password'>"%(password))
print("</div>")
print("<div class='form-group mt-3'>")
print("<input type='text' class='form-control' name='mobno' value='%s' id='mobno' placeholder='Enter Contact No'>"%(mobno))
print("</div>")
print("</div>")
print("<button type='submit' class='btn btn-primary mt-5' name='update'>Submit</button>")
print("</form>")
print("<script src='Bootstrap/js/jquery.js'></script>")
print("<script src='Bootstrap/js/bootstrap.min.js'></script>")
print("</body>")
print("</html>")
