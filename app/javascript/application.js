import "@hotwired/turbo-rails"
import "./controllers"

// Import jQuery, Popper.js, and Bootstrap 4.3.1
import $ from "jquery"
// Make jQuery globally available (important for Bootstrap 4 plugins)
window.$ = $
window.jQuery = $

import "popper.js"
import "bootstrap"
import "bootstrap/dist/css/bootstrap.min.css"
import "./stylesheets/application.css"