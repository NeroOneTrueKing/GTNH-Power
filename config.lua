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

	-- redstone turns on/off at these thresholds for each side:
	sidegenON  = {[0]= nil,  nil,  nil,  nil,   90,   60},
	sidegenOFF = {[0]= nil,  nil,  nil,  nil,   99,   95},
	--              bottom   top  back front right  left

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