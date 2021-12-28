#!/usr/bin/python3
import pymysql
import cgi,cgitb
cgitb.enable()

db = pymysql.connect(host="localhost",user="root",password="",database="Admin_Panel" )


cursor = db.cursor()
form = cgi.FieldStorage() 

email = form.getvalue('email')
password  = form.getvalue('pwd')

sql="select stud_email,stud_password from student where stud_email='"+email+"' AND stud_password='"+password+"' "

if(cursor.execute(sql)):
    db.commit()
    print ("Content-type:text/html\r\n")
    print('''<html>
      <head>
         <title>Hello Word - First CGI Program</title>
      </head>
      <body>
         <h2>successfully login</h2>
      </body>
    </html>''')
else:
   db.commit()
   print("Content-type: text/html")
   print("<html>")
   print("<body>")
   print("<h2>Login fail</h2>")
   print("</body>")
   print("</html>")


# disconnect from server
db.close()

