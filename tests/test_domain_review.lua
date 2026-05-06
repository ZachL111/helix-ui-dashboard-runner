package.path = "src/?.lua;" .. package.path
local review = require("domain_review")

local item = { signal = 55, slack = 53, drag = 9, confidence = 89 }
assert(review.score(item) == 225)
assert(review.lane(item) == "ship")
