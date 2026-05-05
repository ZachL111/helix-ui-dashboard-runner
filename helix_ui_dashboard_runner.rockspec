package = "helix-ui-dashboard-runner"
version = "0.1-1"
source = { url = "." }
description = { summary = "Develop a Lua command-oriented project for dashboard scenarios with node-edge fixtures, cycle and reachability reports, and no production deployment claims.", license = "MIT" }
build = { type = "builtin", modules = { policy = "src/policy.lua" } }
