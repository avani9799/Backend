#!/usr/bin/python3
import pymysql
import cgi,cgitb
cgitb.enable()
form = cgi.FieldStorage()
db = pymysql.connect(host="localhost",user="root",password="",database="Admin_Panel" )
cursor=db.cursor()
print("Content-type:text/html\r\n\r\n")
id=form.getvalue('sid')
name=form.getvalue('name')
email=form.getvalue('email')
password=form.getvalue('pwd')
mobile=form.getvalue('mobno')
try:
    cursor.execute("update student set stud_name='%s',stud_email='%s',stud_password='%s',stud_mobno='%s' where stud_id=%s" %(id,name,email,password,mobile))
    db.commit()
    print("Data Updated")
except:
    db.rollback()
    print("error in Updating")
db.close()