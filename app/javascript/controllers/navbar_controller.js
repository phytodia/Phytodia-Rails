import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  connect() {
    let el = document.querySelector('p');
    el.textContent = "Hello World! + Stimulus";
    console.log("trst")
  }
  greet(){
    console.log("test 2")
  }
}
