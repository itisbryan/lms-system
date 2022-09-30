import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static tartgets = ["source"]
    alert() {
        console.log(this.sourceTarget.value)
    }
}