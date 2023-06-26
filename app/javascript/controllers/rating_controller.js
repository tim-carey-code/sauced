import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    const stars = document.getElementById('stars')
    const rating = document.querySelector('.rating-input');

    stars.addEventListener('click', function (e) {
      rating.value = e.target.value
    })
  }
}
