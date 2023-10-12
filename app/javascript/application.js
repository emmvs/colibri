// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"

const results = document.querySelector('#results');

fetch("https://newsapi.org/v2/top-headlines?country=us&apiKey=afde1f7406fd42ba8abbd902835cf326")
  .then(response => response.json())
  .then((data) => {
    console.log(data)
    data.articles.forEach((result) => {
      const article =
      `<div>
        <div style="width:80%;">
          <img src="${result.urlToImage}" class="card-img-top" />
          <div>
            <h6>${result.title} </h6>
            <p>${result.description}</p>
          </div>
        </div>
      </div>`;
      results.insertAdjacentHTML('beforeend', article);
    })
  });
