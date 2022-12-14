import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

export default class extends Controller {
  static targets = [ "dates", "start_date", "end_date", "price", "totalprice", "text", "bookprice" ]
  static values = { dates: Array }

  connect() {
    console.log(this.priceTarget.innerHTML);
    flatpickr(".datepicker",
      {
        mode: "range",
        altInput: true,
        minDate: "today",
        altFormat: "j/m/Y",
        dateFormat: "Y-m-d",
        disable: this.datesValue,
        inline: true
      }
    );


  }
  fill_input() {
    let dates = this.datesTarget.value
    // console.log(dates)
    let splitDates = dates.split(' to ');
    // console.log(splitDates);
    let start = this.start_dateTarget.value = splitDates[0];
    let end = this.end_dateTarget.value = splitDates[1];
    let day1 = Date.parse(start);
    let day2 = Date.parse(end);
    let difference = Math.abs(day2-day1);
    let bookedDays = difference/(1000 * 3600 * 24)
console.log(day1)
    if (splitDates.length === 2){
      // console.log(splitDates)
      let price = this.totalpriceTarget.innerHTML = bookedDays * this.priceTarget.innerHTML
      // console.log(price, this.totalpriceTarget.innerHTML)
      this.textTarget.classList.remove("d-none")
      this.bookpriceTarget.value = price
    }
  }


}

// spliter la date remplir le startdate et le end date fill
