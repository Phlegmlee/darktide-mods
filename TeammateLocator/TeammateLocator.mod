return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`TeammateLocator` encountered an error loading the Darktide Mod Framework.")

		new_mod("TeammateLocator", {
			mod_script       = "TeammateLocator/scripts/mods/TeammateLocator/TeammateLocator",
			mod_data         = "TeammateLocator/scripts/mods/TeammateLocator/TeammateLocator_data",
			mod_localization = "TeammateLocator/scripts/mods/TeammateLocator/TeammateLocator_localization",
		})
	end,
	packages = {},
}
