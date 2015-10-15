function Validate() 
{
	var First_Name=document.forms["Registration"]["FNM"].value;
	if(First_Name=="")
	{
		window.alert("Please Enter First Name....!");
		return false;
	}
	
	var Last_Name=document.forms["Registration"]["LNM"].value;
	if(Last_Name=="")
	{
		window.alert("Please Enter Last Name....!");
		return false;
	}
	
	var E_Mail=document.forms["Registration"]["EML"].value;
	if(E_Mail=="")
	{
		window.alert("Please Enter E-Mail Address....!");
		return false;
	}
	
	var Mobile_Number=document.forms["Registration"]["MN"].value;
	if(Mobile_Number=="")
	{
		window.alert("Please Enter Mobile Number....!");
		return false;
	}
	if(Mobile_Number.length!=10)
	{
		window.alert("Please Enter 10 Digits Only....!");
		return false;
	}
	
	var Date_Of_Birth=document.forms["Registration"]["DOB"].value;
	if(Date_Of_Birth=="")
	{
		window.alert("Please Select Date Of Birth....!");
		return false;
	}
	
	var Username=document.forms["Registration"]["UNM"].value;
	if(Username=="")
	{
		window.alert("Please Enter Username....!");
		return false;
	}
	
	var Password=document.forms["Registration"]["PWD"].value;
	if(Password=="")
	{
		window.alert("Please Enter Password....!");
		return false;
	}
	
	return true;
}