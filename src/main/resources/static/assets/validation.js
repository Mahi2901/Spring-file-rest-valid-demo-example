/**
 * This File is For Bank New
 * Bank Validation
 */

$(document).ready(function(){
	
	$("#myForm").formValidation({
		framework : 'bootstrap',
		excluded : ":disabled",
		button:{
			selector : "#studentreg",
			disabled : "disabled",
		},
		icon : null,
		fields : {
			/*name:{
				validators: {
					notEmpty : {
						message : 'The first name is required. '
					},
					stringLength : {
						max : 50,
						message : 'The first name must be less than 50 characters long. '
					},
					regexp : {
						regexp : /^[a-zA-Z0-9_-\s-., ]+$/,
						message : 'The first name can only consist of alphabetical, number and underscore. '
					}
				}
			},
			
			debitcard: {
                validators: {
                    creditCard: {
                        message: 'The credit card number is not valid'
                    }
                }
            },
            
            mobile: {
            	validators: {
					notEmpty : {
						message : 'The Mobile is required. '
					},
					
					regexp : {
						regexp : /^\d{10}$/,
						message : 'The mobile can only digits '
					},
					stringLength : {
						min : 10,
						max : 10,
						message : 'Mobile no.shoud be only 10 digits'
					}
				}
            }, 
			
			pin: {
            	validators: {
					notEmpty : {
						message : 'The pin is required. '
					},
					
					regexp : {
						regexp : /^\d{6}$/,
						message : 'The pin can only 6 digits '
					}

				}
            }, 
            
			password: {
            	validators: {
					notEmpty : {
						message : 'The passwod is required. '
					},
					stringLength : {
						min : 6,
						message : 'at least six characters'
					},
					regexp : {
						regexp : /(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}/,
						message : ' at least one number, one lowercase and one uppercase letter.'
					}
					
				}
            }, */
			
		}
	});
	
});