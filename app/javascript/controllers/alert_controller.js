import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    const alertSuccess = document.querySelector(".alert-success");
    const alertError = document.querySelector(".alert-error");
    const errorAlertBtn = document.getElementById("error-alert-btn");
    const successAlertBtn = document.getElementById("success-alert-btn");

    if (alertSuccess) {
      successAlertBtn.addEventListener("click", () => {
        alertSuccess.classList.add("hidden");
      });
    } else if (alertError) {
      errorAlertBtn.addEventListener("click", () => {
        alertError.classList.add("hidden");
      });
    }
  }
}
