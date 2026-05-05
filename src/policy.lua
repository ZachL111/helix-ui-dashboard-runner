local policy = {}

local threshold = 164
local risk_penalty = 7
local latency_penalty = 3
local weight_bonus = 2

function policy.score(signal)
  return signal.demand * 2 + signal.capacity + signal.weight * weight_bonus
    - signal.latency * latency_penalty - signal.risk * risk_penalty
end

function policy.classify(signal)
  if policy.score(signal) >= threshold then
    return "accept"
  end
  return "review"
end

return policy
