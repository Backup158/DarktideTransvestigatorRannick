local mod = get_mod("TransvestigatorRannick")
mod.version = "1.0.0"
mod:info("v"..mod.version.." loaded uwu nya :3")

-- 
local LocalizationManager = class("LocalizationManager")

local string = string
--local string_find = string.find
local string_regex_sub = string.gsub

local function replace_given_string_with_shitpost(string_to_replace)
    return string_regex_sub(string_to_replace, "Interrogator Rannick", "Transvestigator Rannick")
end

mod:echo(Managers.localization:_lookup("loc_boon_vendor_a__mission_habs_redux_start_zone_d_01"))
mod:echo(replace_given_string_with_shitpost(Managers.localization:_lookup("loc_boon_vendor_a__mission_habs_redux_start_zone_d_01")))
-- technically i could make a loop to go over all the game quotes and return the ones that contain interrogator
-- but uhhhhhhhhh
--[[
mod:add_global_localize_strings({
    
})
]]