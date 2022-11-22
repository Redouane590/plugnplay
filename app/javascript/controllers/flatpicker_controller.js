import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

export default class extends Controller {
  connect() {
    flatpickr(".datepicker",
      {
        // mode: "range"
      }
    );
  }
}
