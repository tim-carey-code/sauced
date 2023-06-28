import { application } from "./application"

import RatingController from "./rating_controller"
application.register("rating", RatingController)

import NavLinkController from "./nav_link_controller.js"
application.register("nav-link", NavLinkController)

