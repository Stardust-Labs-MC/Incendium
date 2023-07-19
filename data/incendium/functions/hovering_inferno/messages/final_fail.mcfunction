# from: ../end/bad

tellraw @a[tag=in.was_inferno_fight] [{"translate":"incendium","fallback":"Incendium", "color": "#ff6600", "bold": true}, ": ", {"translate":"incendium.admin.menu.inferno","fallback":"The Hovering Inferno", "bold": true}, " ", {"translate":"incendium.inferno.system.fail.final","fallback":"has defeated all challengers and now peacefully lays rest"}]

tag @a remove in.was_inferno_fight
