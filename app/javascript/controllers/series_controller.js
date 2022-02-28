import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="series"
export default class extends Controller {
  static targets = [ "sessionsBox" ]


  showSessions(event){
    event.target.innerHTML = (this.sessionsBoxTarget.classList.contains("hidden") ? "Hide Sessions For This Series" : "View Sessions For This Series")
    this.sessionsBoxTarget.classList.toggle("hidden")
  }
}
