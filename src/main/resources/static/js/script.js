function verify() {
    const password1 = document.forms['form']['password'].value;
    const password2 = document.forms['form']['verifyPassword'].value;
    if (password1 == null || password1 === "" || password1 !== password2) {
        document.getElementById("error").innerHTML = "Please check your passwords";
        return false;
    }
}
