function validateForm(event) {
    var name = document.forms["playerForm"]["username"].value.trim();
    var age = document.forms["playerForm"]["age"].value.trim();

    if (name === "") {
        alert("Please enter your name.");
        event.preventDefault(); // stops form submission
        return false;
    }

    if (age === "" || isNaN(age) || age <= 0) {
        alert("Please enter a valid age.");
        event.preventDefault();
        return false;
    }

    //Form is valid
    return true;
}