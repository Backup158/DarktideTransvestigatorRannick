local mod = get_mod("TransvestigatorRannick")
mod.version = "1.0.0"
mod:info("v"..mod.version.." loaded uwu nya :3")

-- 
local LocalizationManager = class("LocalizationManager")

local managers = Managers
local string = string
--local string_find = string.find
local string_regex_sub = string.gsub

local function replace_given_string_with_shitpost(string_to_replace)
    -- string.sub relies on index
    return string_regex_sub(string_to_replace, "Interrogator Rannick", "Transvestigator Rannick")
end

--  technically i could make a loop to go over all the game quotes and return the ones that contain interrogator
--  but uhhhhhhhhh no >:3
local localization_codes_to_replace = mod:io_dofile("TransvestigatorRannick/scripts/mods/TransvestigatorRannick/localization_codes_containing_rannick")

for _, localization_code in ipairs(localization_codes_to_replace) do
    local string_to_replace = managers.localization:_lookup(localization_code)
    mod:add_global_localize_strings({
        [localization_code] = {
            en = replace_given_string_with_shitpost(string_to_replace),
        }
    })
end

-- too lazy to make this case sensitive
mod:add_global_localize_strings({
    loc_past_interrogator_a__story_echo_brahms_16_b_01 = {
        en = "TRANSVESTIGATOR Rannick",
    }
})