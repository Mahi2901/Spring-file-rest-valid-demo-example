<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<link href="<%=request.getContextPath()%>/assets/formValidation.min.css"
	rel="stylesheet" type="text/css" />
</head>
<body>
	<!-- <table>
	<tr><td>Enter Name :  </td><td><input type="text" name="name" id="name"></td></tr>
	<tr><td>Enter Email :  </td><td><input type="text" name="email" id="email"></td></tr>
	<tr><td>Enter Mobile :  </td><td><input type="text" name="mobile" id="mobile"></td></tr>
	<tr><td>Enter DebitCard No :  </td><td><input type="text" name="debitcard" id="debitcard"></td></tr>
	<tr><td>Enter Password :  </td><td><input type="password" name="password" id="password"></td></tr>
	<tr><td>Enter Confirm Password :  </td><td><input type="password" name="cpassword" id="cpassword"></td></tr>
	<tr><td>Enter DOB :  </td><td><input type="date" name="dob" id="dob"></td></tr>
	<tr><td>Enter Address :  </td><td><input type="text" name="address" id="address"></td></tr>
	<tr><td>Enter PinCode :  </td><td><input type="text" name="pin" id="pin"></td></tr>
	<tr><td>Enter Gender :  </td><td><input type="radio" name="gender" value="Male">Male
									  <input type="radio" name="gender" value="Female">Female
	</td></tr>
	<tr><td>Enter Image :  </td><td><input type="file" name="image"></td></tr>
	
	<tr><td colspan="2"><input type="submit" name="submit" value="Save" id="studentreg"></td></tr>
</table>
 -->
	<div class="container">
		<div style="color: teal; font-size: 30px"></div>

		<form method="post" id="myForm"
			class="m-form m-form--state m-form--fit m-form--label-align-left"
			action="/students/save" enctype="multipart/form-data">

			<!--begin::Portlet-->
			<div class="m-portlet">
				<div class="m-portlet__body">
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-12">
							<div class="form-group">
								<label class="col-form-label col-lg-12 col-md-12 col-sm-12">Enter
									Name:</label>
								<div class="col-lg-12 col-md-12 col-sm-12">
									<input type="text" name="name" id="name">
								</div>
							</div>
						</div>

						<div class="col-lg-6 col-md-6 col-sm-12">
							<div class="form-group">
								<label class="col-form-label col-lg-12 col-md-12 col-sm-12">Enter
									Email : </label>
								<div class="col-lg-12 col-md-12 col-sm-12">
									<input type="text" name="email" id="email">
								</div>
							</div>
						</div>

						<div class="col-lg-6 col-md-6 col-sm-12">
							<div class="form-group">
								<label class="col-form-label col-lg-12 col-md-12 col-sm-12">Enter
									mobile : </label>
								<div class="col-lg-12 col-md-12 col-sm-12">
									<input type="text" name="mobile" id="mobile">
								</div>
							</div>
						</div>

						<div class="col-lg-6 col-md-6 col-sm-12">
							<div class="form-group">
								<label class="col-form-label col-lg-12 col-md-12 col-sm-12">Enter
									DebitCard No : </label>
								<div class="col-lg-12 col-md-12 col-sm-12">
									<input type="text" name="debitcard" id="debitcard">
								</div>
							</div>
						</div>

						<div class="col-lg-6 col-md-6 col-sm-12">
							<div class="form-group">
								<label class="col-form-label col-lg-12 col-md-12 col-sm-12">Enter
									Password : </label>
								<div class="col-lg-12 col-md-12 col-sm-12">
									<input type="password" name="password" id="password">
								</div>
							</div>
						</div>

						<div class="col-lg-6 col-md-6 col-sm-12">
							<div class="form-group">
								<label class="col-form-label col-lg-12 col-md-12 col-sm-12">Enter
									Confirm Password : </label>
								<div class="col-lg-12 col-md-12 col-sm-12">
									<input type="password" name="cpassword" id="cpassword">
								</div>
							</div>
						</div>

						<div class="col-lg-6 col-md-6 col-sm-12">
							<div class="form-group">
								<label class="col-form-label col-lg-12 col-md-12 col-sm-12">Enter
									DOB : </label>
								<div class="col-lg-12 col-md-12 col-sm-12">
									<input type="date" name="dob" id="dob">
								</div>
							</div>
						</div>

						<div class="col-lg-6 col-md-6 col-sm-12">
							<div class="form-group">
								<label class="col-form-label col-lg-12 col-md-12 col-sm-12">Enter
									Address : </label>
								<div class="col-lg-12 col-md-12 col-sm-12">
									<input type="text" name="address" id="address">
								</div>
							</div>
						</div>

						<div class="col-lg-6 col-md-6 col-sm-12">
							<div class="form-group">
								<label class="col-form-label col-lg-12 col-md-12 col-sm-12">Enter
									PinCode : </label>
								<div class="col-lg-12 col-md-12 col-sm-12">
									<input type="text" name="pin" id="pin">
								</div>
							</div>
						</div>

						<div class="col-lg-6 col-md-6 col-sm-12">
							<div class="form-group">
								<label class="col-form-label col-lg-12 col-md-12 col-sm-12">Enter
									Gender : </label>
								<div class="col-lg-12 col-md-12 col-sm-12">
									<input type="radio" name="gender" value="Male">Male <input
										type="radio" name="gender" value="Female">Female
								</div>
							</div>
						</div>

						<div class="col-lg-6 col-md-6 col-sm-12">
							<div class="form-group">
								<label class="col-form-label col-lg-12 col-md-12 col-sm-12">Enter
									Image : </label>
								<div class="col-lg-12 col-md-12 col-sm-12">
									<input type="file" name="file">
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>

			<!--end::Portlet-->
			<!--begin::Portlet-->
			<div class="m-portlet">
				<div class="m-portlet__foot m-portlet__foot--fit">
					<div
						class="m-form__actions m-form__actions--solid m-form__actions--right">
						<input type="submit" class="btn btn-brand" name="submit"
							value="Save" id="studentreg">
					</div>
				</div>
			</div>
		</form>
	</div>

	<script type="text/javascript"
		src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/formValidation.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets/framework/bootstrap.min.js"></script>
	<%-- <script src="<%=request.getContextPath()%>/assets/validation.js"
		type="text/javascript"></script> --%>

</body>
</html>