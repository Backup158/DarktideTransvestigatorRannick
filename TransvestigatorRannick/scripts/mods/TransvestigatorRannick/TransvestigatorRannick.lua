local mod = get_mod("TransvestigatorRannick")

-- ###################################################################
-- DATA
-- ###################################################################
mod.version = "1.1.0"
mod:info("v"..mod.version.." loaded uwu nya :3")

-- ################################
-- Local References for Performance
-- ################################
local managers = Managers
local string = string
--local string_find = string.find
local string_regex_sub = string.gsub

local LocalizationManager = class("LocalizationManager")

-- ###################################################################
-- MOD LOGIC
-- ###################################################################

-- File containing all localization codes with "Interrogator Rannick" in the EN localization
--  technically i could make a loop to go over all the game quotes and return the ones that contain interrogator
--  but uhhhhhhhhh no >:3
--  this file was created by scraping the extracted game strings, and may need to be updated per update
--  since this is a shitpost, i'd rather have that than search EVERY game string on EVERY game startup
local localization_codes_to_replace = mod:io_dofile("TransvestigatorRannick/scripts/mods/TransvestigatorRannick/localization_codes_containing_rannick")

for _, localization_code in ipairs(localization_codes_to_replace) do
    -- takes code --> gets associated string with it
    local string_to_replace = managers.localization:_lookup(localization_code)

    -- modifies that localization code
    mod:add_global_localize_strings({
        [localization_code] = {
            -- string.sub relies on index
            en = string_regex_sub(string_to_replace, "Interrogator Rannick", "Transvestigator Rannick"),
        }
    })
end

-- too lazy to make the regex work for all caps
mod:add_global_localize_strings({
    loc_past_interrogator_a__story_echo_brahms_16_b_01 = {
        en = "TRANSVESTIGATOR Rannick",
    }
})