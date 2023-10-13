// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"

const results = document.querySelector('#results');

fetch(" https://newsdata.io/api/1/news?apikey=pub_310596e38287f14f437a78633dc5905072b8f&language=en&category=top")
  .then(response => response.json())
  .then((data) => {
    console.log(data)
    data.results.forEach((result) => {
      const article =
      `<div>
        <div style="width:80%;">
          <img src="${result.image_url}" class="card-img-top" />
          <div>
            <h6>${result.title}</h6>
            <p>${result.description}</p>
          </div>
        </div>
      </div>`;
      results.insertAdjacentHTML('beforeend', article);
    })
  });
