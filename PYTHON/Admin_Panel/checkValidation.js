function checkValidate() {
    var name = document.getElementById("name").value;
    var email = document.getElementById("email").value;
    var pwd=document.getElementById("pwd").value;
    var cpwd=document.getElementById("cpwd").value;
    var mobno = document.getElementById("mobno").value;

    var email_regx = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    var pwd_regx=/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$/;


    if (name == "") {
        document.getElementById("name_val").innerHTML =
          "** please Enter Name";
        return false;
    }
    if (!isNaN(name)) {
        document.getElementById("name_val").innerHTML = "** please enter only characters";
        return false;
    }

    if (email == "") {
        document.getElementById("email_id").innerHTML = "** please Enter Email";
        return false;
      }
      if (!(email.match(email_regx))) {
        document.getElementById("email_id").innerHTML =
          "** please Enter Valid Email";
        return false;
      }

      if (pwd == "") {
        document.getElementById("pwd_val").innerHTML = "** please Enter Password";
        return false;
      }
      if (!(pwd.match(pwd_regx))) {
        document.getElementById("pwd_val").innerHTML =
          "** please Enter password between 6 to 20 characters which contain at least one numeric digit, one uppercase and one lowercase letter ";
        return false;
      }
    
    if (cpwd == "") {
        document.getElementById("cpwd_val").innerHTML = "** please Enter Confirm Password";
        return false;
    }
    if (pwd != cpwd) {
        document.getElementById("cpwd_val").innerHTML = "** please Enter Valid Password";
        return false;
    }

    if (mobno == "") {
        document.getElementById("mob_no").innerHTML = "** please Enter Contact No.";
        return false;
      }
      if (isNaN(mobno)) {
        document.getElementById("mob_no").innerHTML = "** please enter only digits";
        return false;
      }
      if (mobno.length != 10) {
        document.getElementById("mob_no").innerHTML =
          "** contact no must be 10 digit";
        return false;
      }
}