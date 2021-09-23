// TODO: Validate this form
console.log('hello')
// DOM elements
const allInputs = document.querySelectorAll(".form-control");
const arrayOfAllInputs = Array.from(allInputs);



const genderInput = document.querySelector('#user_gender');
const firstNameInput = document.querySelector('#user_first_name');
const lastNameInput = document.querySelector('#user_last_name');
const emailInput = document.querySelector('#user_email');
const memberInput = document.querySelector('#user_member');
const jobInput = document.querySelector('#user_job');
const whatsappInput = document.querySelector('#user_whatsapp');
const linkedinInput = document.querySelector('#user_linkedin');
const companyInput = document.querySelector('#user_company');
const activityInput = document.querySelector('#user_activity');
const countryInput = document.querySelector('#user_country');
const phoneInput = document.querySelector('#user_phone');
const websiteInput = document.querySelector('#user_website');
const passwordInput = document.querySelector('#user_password');
const passwordConfirmationInput = document.querySelector('#user_password_confirmation');

const tosCheckbox = document.querySelector('#user_terms');
const submitButton = document.querySelector('.btn');


// Mark an input as valid or invalid with Boostrap validation classes
const addValidationClasses = (input, isValid) => {
  if (input.value === "") {
    // No need to add classes if the input is not filled yet
    return;
  }
  if (isValid) {
    input.classList.remove('is-invalid');
    input.classList.add('is-valid');
  } else {
    input.classList.remove('is-valid');
    input.classList.add('is-invalid');
  }
};


// Test methods

// All fields are required
const allFilled = (inputs) => {
  // Check that the value of every input is not an empty string
  return inputs.every((input) => {
    return input.value !== "";
  });
};

// Ensure the Terms of Service checkbox is ticked
const checkboxChecked = (input) => {
  return input.checked;
};

// Ensure the user enters a valid French zipcode
// const validFrenchZipCode = (input) => {
//   const isValid = /^\d{5}$/.test(input.value);
//   addValidationClasses(input, isValid);
//   return isValid;
// };
const validGender = (input) => {
    const isValid = /^\w+/.test(input.value);
      addValidationClasses(input, isValid);
  return isValid;
};

const validFirstName = (input) => {
  const isValid = /^\w+/.test(input.value);
  addValidationClasses(input, isValid);
  return isValid;
};
const validLastName = (input) => {
  const isValid = /^\w+/.test(input.value);
  addValidationClasses(input, isValid);
  return isValid;
};

const validMember = (input) => {
  const isValid = /^\w+/.test(input.value);
  addValidationClasses(input, isValid);
  return isValid;
};
// Validate the email format
const validEmail = (input) => {
  const isValid = /(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])/.test(input.value);
  addValidationClasses(input, isValid);
  return isValid;
};

const validJob = (input) => {
  const isValid = /^\w+/.test(input.value);
  addValidationClasses(input, isValid);
  return isValid;
};

const validWhatsapp= (input) => {
  const isValid = /^\w+/.test(input.value);
  addValidationClasses(input, isValid);
  return isValid;
};

const validLinkedin= (input) => {
  const isValid = /^\w+/.test(input.value);
  addValidationClasses(input, isValid);
  return isValid;
};

const validCompany= (input) => {
  const isValid = /^\w+/.test(input.value);
  addValidationClasses(input, isValid);
  return isValid;
};

const validActivity= (input) => {
  const isValid = /^\w+/.test(input.value);
  addValidationClasses(input, isValid);
  return isValid;
};

const validCountry= (input) => {
  const isValid = /^\w+/.test(input.value);
  addValidationClasses(input, isValid);
  return isValid;
};

const validPhone= (input) => {
  const isValid = /^\w+/.test(input.value);
  addValidationClasses(input, isValid);
  return isValid;
};

const validWebsite= (input) => {
  const isValid = /^\w+/.test(input.value);
  addValidationClasses(input, isValid);
  return isValid;
};

const validPassword= (input) => {
  const isValid = /^\w+/.test(input.value);
  addValidationClasses(input, isValid);
  return isValid;
};

const validPasswordConfirmation= (input) => {
  const isValid = /^\w+/.test(input.value);
  addValidationClasses(input, isValid);
  return isValid;
};
// Validate the phone number. French mobile phones only
// const validPhoneNumber = (input) => {
//   const isValid = /^06\d{8}$/.test(input.value);
//   addValidationClasses(input, isValid);
//   return isValid;
// };


// Launch all tests
const enableButton = () => {
  const allInputsAreFilled = allFilled(arrayOfAllInputs);
  // const tosIsValid = checkboxChecked(tosCheckbox);
  // const zipCodeIsValid = validFrenchZipCode(zipCodeInput);
  const memberIsValid = validMember(memberInput);
    const lastNameIsValid = validLastName(lastNameInput);
  const firstNameIsValid = validFirstName(firstNameInput);
  const genderIsValid = validGender(genderInput);
  const emailIsValid = validEmail(emailInput);
  const jobIsValid = validJob(jobInput);
  const whatsappIsValid = validWhatsapp(whatsappInput);
  const linkedinIsValid = validLinkedin(linkedinInput);
  const companyIsValid = validCompany(companyInput);
  const activityIsValid = validActivity(activityInput);
  const countryIsValid = validCountry(countryInput);
  const phoneIsValid = validPhone(phoneInput);
  const websiteIsValid = validWebsite(websiteInput);
  const passwordIsValid = validPassword(passwordInput);
  const passwordConfirmationIsValid = validWebsite(passwordConfirmationInput);

  if (allInputsAreFilled && emailIsValid ) {
    submitButton.disabled = false;
  } else {
    submitButton.disabled = true;
  }
};


// Events
allInputs.forEach((input) => {
  input.addEventListener('blur', enableButton);
});
tosCheckbox.addEventListener('click', enableButton);



export { validEmail, validGender };
