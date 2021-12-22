var mysql = require('mysql');  
var con = mysql.createConnection({  
host: "localhost",  
user: "root",  
password: "",  
database: "Avni"  
});  
con.connect(function(err) {  
if (err) throw err;  
console.log("Connected!");  
var sql = "INSERT INTO employee ( emp_firstname,emp_lastname, emp_email, emp_contact) VALUES ('Diya', 'Patel', 'diya@gmail.com','8798987898')";  
con.query(sql, function (err, result) {  
if (err) throw err;  
console.log("1 record inserted");  
}); 
});
