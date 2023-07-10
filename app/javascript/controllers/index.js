import { application } from "./application";

import RatingController from "./rating_controller";
application.register("rating", RatingController);

import AlertController from "./alert_controller";
application.register("alert", AlertController);
