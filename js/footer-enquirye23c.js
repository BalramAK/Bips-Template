
//Contact Us Enquiry

$(document).ready(function () {
    $("#btnSubmit").click(function (event) {
        var Name = document.getElementById("sc_contact_form_username").value.replace("'", "''");
        if (Name == "") {
            return AlertDialogBox("Name can not be left blank", 300, "w", "sc_contact_form_username");
        }
        var Email = document.getElementById("sc_contact_form_email");
        if (Email.value.trim() == "") {
            return AlertDialogBox("Email can not be left blank", 300, "w", "sc_contact_form_email");
        }
        if (ValidateEmail(Email.value) == false) {
            return AlertDialogBox("Please enter a valid email address", 300, 'i');
        }
        var Mobile = document.getElementById("sc_contact_form_mobile").value.replace("'", "''");
        if (Mobile == "") {
            return AlertDialogBox("Mobile can not be left blank", 300, "w", "sc_contact_form_mobile");
        }
        var Message = document.getElementById("sc_contact_form_message").value.replace("'", "''");
        if (Message == "") {
            return AlertDialogBox("Class can not be left blank", 300, "w", "sc_contact_form_message");
        }
        showPleaseWait();
        window.location.href = "default.aspx?name=" + Name + "&email=" + Email.value.trim() + "&mobile=" + Mobile.trim() + "&msg=" + Message;
    });
});


function makecaptchaRandomid() {
    var text = "";
    var possible = "0123456789";
    for (i = 0; i < 4; i++) {
        text += possible.charAt(Math.floor(Math.random() * possible.length));
    }
    return text;
}

function ValidateEmail(email) {
    emailpat = /^([a-z0-9])+([\.a-z0-9_-])*@([a-z0-9])+(\.[a-z0-9_-]+)+$/;
    if (!emailpat.test(email)) {
        return false;
    }
    return true;
}

