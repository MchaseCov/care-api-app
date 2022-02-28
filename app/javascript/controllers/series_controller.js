import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="series"
export default class extends Controller {
  static targets = [ "toggle", "sessionsBox" ]


  showSessions(element){
    console.log(element)
    if(this.sessionsBoxTarget.classList.contains("hidden")){
      this.toggleTarget.innerHTML = "Hide Sessions For This Series"
    } else {
      this.toggleTarget.innerHTML = "View Sessions For This Series"
    }
    this.sessionsBoxTarget.classList.toggle("hidden")
  }
}
