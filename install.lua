local shell = require("shell")
local filesystem = require("filesystem")
local scripts = {
    "pwr.lua",
    "redstone-control.lua",
    "install.lua"
}

local function exists(filename)
    return filesystem.exists(shell.getWorkingDirectory().."/"..filename)
end

local repo = "https://github.com/NeroOneTrueKing/GTNH-Power";

for i=1, #scripts do
    shell.execute(string.format("wget -f %s%s/%s", repo, scripts[i]));
end

if not exists("config.lua") then
    shell.execute(string.format("wget %s/config.lua", repo));
end