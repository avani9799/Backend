var mysql = require('mysql');  
var con = mysql.createConnection({  
host: "localhost",  
user: "root",  
password: "",  
database: "Avni"  
});  
con.connect(function(err) {  
if (err) throw err;  
var sql = "UPDATE employee SET emp_firstname = 'Avni' WHERE emp_id = '1'";  
con.query(sql, function (err, result) {  
if (err) throw err;  
console.log(result.affectedRows + " record(s) updated");  
});  
}); 
