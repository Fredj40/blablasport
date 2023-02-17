// app/javascript/controllers/flatpickr_controller.js
import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr";

export default class extends Controller {
  connect() {
    new flatpickr(this.element, {
      enableTime: false,
      dateFormat: "d-m-Y",
      minDate: "today",
    });
  }
}
*
