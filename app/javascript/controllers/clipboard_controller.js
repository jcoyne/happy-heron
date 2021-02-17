import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["value"]

  copy() {
    navigator.clipboard.writeText(this.valueTarget.textContent)
  }
}
