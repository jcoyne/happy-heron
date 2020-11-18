import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["form", "results"]

  connect() {}

  displaySuccess(event) {
    const [data, _status, _xhr] = event.detail
    this.formTarget.hidden = true
    if (data.status === 'success') {
      const textDiv = document.createElement("div")
      textDiv.innerText = `Your message has been sent to the SDR team. We will respond to you soon.\n`
      const closeBtn = document.createElement("button")
      closeBtn.innerText = `Close`
      closeBtn.classList.add('btn')
      closeBtn.classList.add('btn-primary')
      closeBtn.setAttribute('data-dismiss', 'modal')
      textDiv.appendChild(closeBtn)
      this.resultsTarget.appendChild(textDiv)
    }

  }
}
