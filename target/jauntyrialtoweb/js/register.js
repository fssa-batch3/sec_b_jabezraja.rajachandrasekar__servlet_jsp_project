const Registered = (event) => {
	event.preventDefault();

	const password = document.getElementById("password").value;
	const confirm_password = document.getElementById("confirm_password").value;

	if (password !== confirm_password) {
		swal("Error", "Password and confirm password are not same.", "error");
	} else {
		const form = document.querySelector("form");
		form.submit();
	}
};
