#!/usr/bin/python3
import pymysql
import cgi,cgitb
cgitb.enable()
db = pymysql.connect(host="localhost",user="root",password="",database="Admin_Panel" )
cursor = db.cursor()
form = cgi.FieldStorage()
name = form.getvalue('name')
email = form.getvalue('email')
password = form.getvalue('pwd')
mobno = form.getvalue('mobno')
sql = "insert into student(stud_name,stud_email,stud_password,stud_mobno) values('%s','%s','%s','%d')" %(name,email,password,mobno)
try:
    if(cursor.execute(sql)):
        db.commit()
        print ("Content-type:text/html\r\n")
        print("Data Inserted")
    else:
        print("error")
except:
    db.rollback()
    print("error in Inserting")
# disconnect from server
db.close()