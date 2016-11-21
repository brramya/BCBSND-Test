<html>
<body>
	<h1>User Input</h1>
	<form action="userDisplay.jsp" method="post" onSubmit="return validation();">
	<table>
		<tr>
			<td><label>FirstName: *</label></td>
			<td>
				<input type="text" name="firstName"><output id="firstName_Req"></output>
				<p ></p>
			</td>
		</tr>
		<tr>
			<td><label>LastName: *</label></td>
			<td>
				<input type="text" name="lastName"><output id="lastName_Req"></output>
				<p id=""></p>
			</td>
		</tr>
		<tr>
			<td><label>Address:</label></td>
			<td><input type="text" name="streetAddress"></td>
		</tr>
		<tr>
			<td><label>Apt No:</label></td>
			<td><input type="text" name="aptNo"></td>
		</tr>
		<tr>
			<td><label>State:</label></td>
			<td>
				<select name="state">
					<option value=""></option>
					<option value="NJ">NJ</option>
					<option value="NY">NY</option>
					<option value="PA">PA</option>
				</select>
			</td>
		</tr>
		<tr>
			<td><label>Zip Code:</label></td>
			<td><input type="text" name="zipCode"></td>
		</tr>
	</table>
		<input type="submit" value="Submit" name="Submit">
	</form>
	<script type="text/javascript">
		function validation(){
			var error;
			if(document.getElementsByName("firstName")[0].value == ""){
				document.getElementById("firstName_Req").innerHTML = "First Name is required.";
				error = true;
			}else{
				document.getElementById("firstName_Req").innerHTML = "";
			}
			if(document.getElementsByName("lastName")[0].value == ""){
				document.getElementById("lastName_Req").innerHTML = "Last Name is required.";
				error = true;
			}else{
				document.getElementById("lastName_Req").innerHTML = "";
			}
			if(error){
				return false;
			}
			return true;
		}
		
	</script>
</body>
</html>