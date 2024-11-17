local mod = get_mod("TeammateLocator")

return {
    name = mod:localize("mod_name"),
    description = mod:localize("mod_description"),
    is_togglable = true,
    options = {
        widgets = {	
			{
				setting_id = "placeholder",
				type = "group",
				sub_widgets = {
					{
						setting_id = "numeric_item",
						type = "numeric",
						default_value = 1,
						range = {0, 2},
						decimals_number = 0
					},
					{
						setting_id = "checkbox_item",
						type = "checkbox",
						default_value = true,
					},
					{
						setting_id = "dropdown_item",
						type = "dropdown",
						default_value = 1,
						options = {
							{text = "option_one_localiztion_id", value = 1, show_widgets = {001}},
							{text = "option_two_localiztion_id", value = 2, show_widgets = {002}},
						},
					}
				}
			},
        }
    }
}
