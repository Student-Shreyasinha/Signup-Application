function handleSubmit(event) {
  event.preventDefault();

  const name = document.getElementById("fullname").value;
  const email = document.getElementById("email").value;
  const password = document.getElementById("password").value;
  const age = document.getElementById("age").value;
  const gender = document.getElementsByName("gender");
  const branch = document.getElementById("branch");
  const checkboxs = document.getElementsById("skills");
  var selectedBranch = branch.options[branch.selectedIndex].value;
  var okay = 0;


  if (name == "" || name.length > 25) {
    alert("Name cannot be empty or more than 25 characters");
    document.getElementById("fullname").focus();
    return false;
  }

  if (age == null || age > 23 || age < 18) {
    alert("Age should be between 18 and 23");
    document.getElementById("age").focus();
    return false;
  }


  if (name == "" || name.length > 25) {
    alert("Name cannot be empty or more than 25 characters");
    document.getElementById("fullname").focus();
    return false;
  }

  if(selectedBranch===""){
    alert("Please select a branch");
    return false;
  }
  
  for (var i = 0, l = gender.length; i < l; i++) {
    if (gender[i].checked) {
      break;
    }
    else
      alert("Please select a gender")
      return false;
  }

  for (var i = 0, l = checkboxs.length; i < l; i++) {
    if (checkboxs[i].checked) {
      okay += 1;
    }
  }
  if (okay < 1)
    alert("Atleast two skills are required");
    document.getElementsByName("techSkills").focus;
  return false;

}
