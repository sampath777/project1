function formValidation(){  
	var uid = document.getElementById("id");  
	var uname = document.getElementById("name"); 
	var upwd = document.getElementById("password");
	var umobile = document.getElementById("mobile");
	var uemail = document.getElementById("email");
	var uadd = document.getElementById("address");
	if(uid_validation(uid,5,12)){
		if(uname_validation(uname,7,12)){  
			if(upwd_validation(upwd,6,10)){
				if(allnumeric(umobile)){
					if(ValidateEmail(uemail)){
						if(alphanumeric(uadd)){
							alert('Form Succesfully Submitted');  
							//window.location.reload()  
							return true;  
						}
					}    
				}
			}
		}
	}
	else{  
		return false;  
	} 
	
}


function uid_validation(uid,mx,my){  
	
	var uid_len = uid.value.length;  
	if (uid_len == 0 || uid_len >= my || uid_len < mx){  
		alert("User Id should not be empty / length be between "+mx+" to "+my);  
		 
		return false;  
	}
	return true;  
} 

function uname_validation (uname){   
	var letters = /^[A-Za-z]+$/;  
	if(uname.value.match(letters)){  
		return true;  
	}  
	else {  
		alert('Username must have alphabet characters only');  
		 
		return false;  
	}  
}  

function upwd_validation(upwd,mx,my){  
	var upwd_len = upwd.value.length;  
	if (upwd_len == 0 ||upwd_len >= my || upwd_len < mx){  
		alert("Password should not be empty / length be between "+mx+" to "+my);  
		
		return false;  
	}  
	return true;  
}

function allnumeric(umobile){   
	var numbers = /^[0-9]+$/;  
	if(umobile.value.match(numbers)) {  
		return true;  
	}  
	else {  
		alert('MobileNo must have numeric characters only');  
		  
		return false;  
	}  
} 

function ValidateEmail(uemail){  
	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;  
	if(uemail.value.match(mailformat)){  
		return true;  
	}  
	else {  
		alert("You have entered an invalid email address!");  
		return false;  
	}  
}

function alphanumeric(uadd){   
	var letters = /^[0-9a-zA-Z]+$/;  
	if(uadd.value.match(letters)){  
		return true;  
	}  
	else{  
		alert('User address must have alphanumeric characters only');  
		
		return false;  
	}  
}