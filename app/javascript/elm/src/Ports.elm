port module Ports exposing (profileSelected, refreshTimeRange, tagSelected, timeRangeSelected, toggleCrowdMap, updateProfiles, updateResolution, updateTags)

import Json.Encode as Encode


port tagSelected : (String -> msg) -> Sub msg


port profileSelected : (String -> msg) -> Sub msg


port timeRangeSelected : (Encode.Value -> msg) -> Sub msg


port toggleCrowdMap : () -> Cmd a


port updateResolution : Int -> Cmd a


port updateTags : List String -> Cmd a


port updateProfiles : List String -> Cmd a


port refreshTimeRange : () -> Cmd a
