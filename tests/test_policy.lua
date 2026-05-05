package.path = "src/?.lua;" .. package.path
local policy = require("policy")

local signal_case_1 = { demand = 56, capacity = 85, latency = 22, risk = 14, weight = 8 }
assert(policy.score(signal_case_1) == 49)
assert(policy.classify(signal_case_1) == "review")
local signal_case_2 = { demand = 83, capacity = 100, latency = 26, risk = 20, weight = 10 }
assert(policy.score(signal_case_2) == 68)
assert(policy.classify(signal_case_2) == "review")
local signal_case_3 = { demand = 92, capacity = 94, latency = 8, risk = 21, weight = 8 }
assert(policy.score(signal_case_3) == 123)
assert(policy.classify(signal_case_3) == "review")
