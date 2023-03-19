local shell = require("shell")
local filesystem = require("filesystem")
local scripts = {
    "pwr.lua",
    "redstone-control.lua",
    "installer.lua"
}

local function exists(filename)
    return filesystem.exists(shell.getWorkingDirectory().."/"..filename)
end

local repo = "https://raw.githubusercontent.com/NeroOneTrueKing/GTNH-Power/";
local branch = "main"

for i=1, #scripts do
    shell.execute(string.format("wget -f %s%s/%s", repo, branch, scripts[i]));
end

if not exists("config.lua") then
    shell.execute(string.format("wget %s%s/config.lua", repo, branch));
end