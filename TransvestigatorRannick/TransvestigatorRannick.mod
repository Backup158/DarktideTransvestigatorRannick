return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`%%title` encountered an error loading the Darktide Mod Framework.")

		new_mod("TransvestigatorRannick", {
			mod_script       = "TransvestigatorRannick/scripts/mods/TransvestigatorRannick/TransvestigatorRannick",
			mod_data         = "TransvestigatorRannick/scripts/mods/TransvestigatorRannick/TransvestigatorRannick_data",
			mod_localization = "TransvestigatorRannick/scripts/mods/TransvestigatorRannick/TransvestigatorRannick_localization",
		})
	end,
	packages = {},
}
