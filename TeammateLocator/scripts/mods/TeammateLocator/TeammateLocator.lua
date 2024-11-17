-- Teammate Locator
-- Description: Modifies teammate combat nameplates to show distance information.
-- Autor: Phlegmlee

local mod = get_mod("TeammateLocator")
local TL_template = mod:io_dofile("TeammateLocator/scripts/mods/TeammateLocator/TeammateLocator_template")
local ProfileUtils = require("scripts/utilities/profile_utils")
local UIFontSettings = require("scripts/managers/ui/ui_font_settings")
local UISettings = require("scripts/settings/ui/ui_settings")
local UIWidget = require("scripts/managers/ui/ui_widget")

local TemplateNameplateCombat = require("scripts/ui/hud/elements/world_markers/templates/world_marker_template_nameplate_combat")

mod:hook(
    TemplateNameplateCombat, "update_function", function (func, parent, ui_renderer, widget, marker, self, dt, t)
        func(parent, ui_renderer, widget, marker, self, dt, t)
        local content = widget.content
        local data = marker.data
        local distance = content.distance
        local distance_text = tostring(math.floor(distance)) .. "m"
        content.text = distance > 1 and distance_text or ""

        local unit = marker.unit
        local hud_element = data.hud_element
    
        if hud_element then
            hud_element._distance = distance
            hud_element._marker_distances[unit] = distance
        end
    end
)