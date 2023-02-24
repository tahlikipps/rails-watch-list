import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Curate your list", "Bookmark away!"],
      typeSpeed: 50,
      loop: true
    })
  }
}
