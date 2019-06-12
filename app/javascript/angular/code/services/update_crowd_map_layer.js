import { updateCrowdMapLayer } from "./_update_crowd_map_layer";

angular
  .module("aircasting")
  .factory("updateCrowdMapLayer", [
    "map",
    "$http",
    "buildQueryParamsForCrowdMapLayer",
    "params",
    "utils",
    "infoWindow",
    "rectangles",
    "$window",
    updateCrowdMapLayer
  ]);
