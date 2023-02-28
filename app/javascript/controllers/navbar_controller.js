import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  connect() {
    //let el = document.querySelector('p');
    //el.textContent = "Hello World! + Stimulus";
    console.log("trst")
    let navHead = document.querySelectorAll(".nav-head")
    navHead.forEach(element=>{
      element.addEventListener("mouseover", (event)=>{
        document.querySelector(".sub-nav").style.visibility = 'visible'
      })
      element.addEventListener("mouseout", (event)=>{
        document.querySelector(".sub-nav").style.visibility = 'hidden'
      })
    })
    document.querySelector(".sub-nav").addEventListener("mouseover", (event)=>{
      //document.querySelector(".sub-nav").style.visibility = 'visible'
    })
    document.querySelector(".sub-nav").addEventListener("mouseout", (event)=>{
      document.querySelector(".sub-nav").style.visibility = 'hidden'
    })
  }
  greet(){
    console.log("test 2")
  }
  navDisplay(){
    console.log("navDisplay")
  }
}
