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
						setting_id = "item1",
						type = "numeric",
						default_value = 1,
						range = {0, 2},
						decimals_number = 0
					},
					{
						setting_id = "item2",
						type = "numeric",
						default_value = 1,
						range = {0, 2},
						decimals_number = 0
					},
				}
			},
        }
    }
}
