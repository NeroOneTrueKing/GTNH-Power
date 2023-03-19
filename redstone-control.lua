local component = require("component")
local cfg = require("config")

local wirelessRS

function init()
    if cfg.RedstoneEnabled then
        toggleRS = component.redstone
        wirelessRS = cfg.WirelessFrequency > 0
        if wirelessRS then
            toggleRS.setWirelessFrequency(cfg.WirelessFrequency)
        end
        off()
    end
end

function on()
    status = true

    if wirelessRS then
        toggleRS.setWirelessOutput(true)
    else
        toggleRS.setOutput({15,15,15,15,15,15})
    end
end

function off()
    status = false

    if wirelessRS then
        toggleRS.setWirelessOutput(false)
    else
        toggleRS.setOutput({0,0,0,0,0,0})
    end
end

function getstatus()
    return status and "ON" or "OFF"
end

function toggle(percentenergy)
    if percentenergy <= cfg.genON then
        on()
    end
    if percentenergy >= cfg.genOFF then 
        off()
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

