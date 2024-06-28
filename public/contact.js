function submitForm() {
    const form = document.getElementById("contact-form");
    form.style.visibility = "hidden";

    let thanks = document.getElementById("thankstag");
    let namee = document.getElementById("nametag");
    let mail = document.getElementById("emailtag");
    let phn = document.getElementById("phnotag");
    // let team = document.getElementById("teamtag");

    thanks.textContent = "Thank you for your submission";
    namee.textContent = localStorage.getItem("usr");
    mail.textContent = localStorage.getItem("email");
    phn.textContent = localStorage.getItem("phno");
    // team.textContent = localStorage.getItem("team");

    localStorage.setItem("usr",document.getElementById("name").value);
    localStorage.setItem("email",document.getElementById("email").value);
    localStorage.setItem("phno",document.getElementById("phno").value);
    // localStorage.setItem("team",document.getElementById("team").value);
}
function del() {
    localStorage.removeItem("usr"); 
    localStorage.removeItem("email"); 
    localStorage.removeItem("phno"); 
}