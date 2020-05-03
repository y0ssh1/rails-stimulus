import { Controller } from 'stimulus'

export default class extends Controller {
  static targets = ["user", "review"]

  load() {
    this.reviewTarget.innerHTML = '<div class="spinner-border"></div>'
    fetch(this.data.get('url'))
      .then(response => response.text())
      .then(html => this.reviewTarget.innerHTML = html)
  }
}