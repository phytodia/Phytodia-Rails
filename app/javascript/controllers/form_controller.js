import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    //this.element.textContent = "Hello Form"
    console.log("hello form2")
    //debugger;
  }
  select(event){
    //debugger;
    if(event.currentTarget.value === "Stage") {
      //alert("test 1")
      let div = document.createElement('div')
      div.classList.add('dates')
      div.innerHTML =
      `
      <label>Vos dates de début</label>
      <input type="date" id="start" name="trip-start"
       value="2018-07-22"
       min="2023-01-01" max="2050-12-31">
      <label>Vos dates de fin</label>
      <input type="date" id="end" name="trip-start"
       value="2023-07-22"
       min="2018-01-01" max="2050-12-31">
      `
      document.querySelector(".message_object").insertAdjacentElement("afterend",div)
    }
    else {
      document.querySelector(".dates").remove()
    }
  }
}
