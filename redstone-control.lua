local component = require("component")
local cfg = require("config")


function init()
    if cfg.RedstoneEnabled then
        toggleRS = component.redstone
		toggleRS.setWakeThreshold(1)
		status = {}
		statuscnt = 0
    end
end

function on(side)
    status[side] = true
	statuscnt = statuscnt + 1
	toggleRS.setOutput({[side]=15})
end

function off(side)
    status[side] = false
	statuscnt = statuscnt - 1
	toggleRS.setOutput({[side]=0})
end

function getstatus()
    return statuscnt .. "/" .. #cfg.sidegenON
end

function toggle(percentenergy)
	for k,v in pairs(cfg.sidegenON) do
		if percentenergy <= v then
			on(k)
		end
	end
	for k,v in pairs(cfg.sidegenOFF) do
		if percentenergy >= v then
			off(k)
		end
	end
end

function nullfunc() end
function nullstatus() return "RS Disabled" end

if cfg.RedstoneEnabled then
    return {
        init = init,
        on = on,
        off = off,
        getstatus = getstatus,
        toggle = toggle
    }
else
    return {
        init = nullfunc,
        on = nullfunc,
        off = nullfunc,
        getstatus = nullstatus,
        toggle = nullfunc
    }
end

