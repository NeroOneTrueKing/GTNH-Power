-- config settings
return {
----------------------
-- PRIMARY FUNCTION
----------------------
    -- Address of the LSC
    MSCProxy = "577b915d-70cf-4a35-8138-41189defbf0c",

----------------------
-- REDSTONE CONTROL
----------------------
    -- Redstone I/O connected to system for Generator enabling / Value true or false, default: false
    RedstoneEnabled = true,
    -- Generators' wireless frequency, if using a tier-2 redstone card. If =0, does not use.
    WirelessFrequency = 204,
    -- Redstone signal turns on when percentenergy drops below this
    genON = 60,
    -- Redstone signal turns off when percentenergy drops below this
    genOFF = 95,


----------------------
-- MISC SETTINGS
----------------------
    -- Seconds between screen refreshes. 2 is standard
    loopdelay = 2,
    -- function disabled as in 2.3 has LSC fix for average per second, can be turned on for longer average eu consumption.
    AVEUToggle = false,
    -- Turns off the arrow underneath the meters
    ArrowOff = false,
    -- io value to size arrow against 
    io_max_rate = 600000,

----------------------
-- COLORS
----------------------
    clr = {
        RED 	= 0xFF0000,
        BLUE 	= 0x0000FF,
        GREEN 	= 0x00FF00,
        BLACK 	= 0x000000,
        WHITE 	= 0xFFFFFF,
        PURPLE 	= 0x800080,
        YELLOW 	= 0xFFFF00,
        ORANGE 	= 0xFFA500,
        DARKRED = 0x880000
    }
}