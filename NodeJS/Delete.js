var mysql = require('mysql');  
var con = mysql.createConnection({  
host: "localhost",  
user: "root",  
password: "",  
database: "Avni"  
});  
con.connect(function(err) {  
if (err) throw err;  
var sql = "DELETE FROM employee WHERE emp_id='3'";  
con.query(sql, function (err, result) {  
if (err) throw err;  
console.log("Number of records deleted: " + result.affectedRows);  
});  
}); 
