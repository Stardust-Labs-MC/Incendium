# shield summons

# shield 1
summon armor_stand ~ ~ ~ {NoGravity: 1b, Invulnerable: 1b, DisabledSlots: 4144959, Pose: {}, Invisible: 1b, Tags: ["in.inferno_entity","in.inferno_armor", "in.shield", "in.shield1"], Marker: 1b, Rotation: [42.0f, 0.0f], ArmorItems: [{}, {}, {}, {id: "minecraft:white_banner", Count: 1b, tag: {CustomModelData: 1450600, BlockEntityTag: {Patterns: [{Pattern: "hhb", Color: 14}, {Pattern: "mr", Color: 14}, {Pattern: "ss", Color: 4}, {Pattern: "ss", Color: 4}, {Pattern: "hh", Color: 14}, {Pattern: "cr", Color: 14}, {Pattern: "sku", Color: 15}, {Pattern: "sku", Color: 4}, {Pattern: "gra", Color: 14}, {Pattern: "sku", Color: 4}, {Pattern: "gru", Color: 14}]}}}]}

# shield 2
summon armor_stand ~ ~ ~ {NoGravity: 1b, Invulnerable: 0b, DisabledSlots: 4144959, Pose: {}, Invisible: 1b, Tags: ["in.inferno_entity", "in.inferno_armor", "in.shield", "in.shield2"], Marker: 1b, Rotation: [9.0f, 0.0f], ArmorItems: [{}, {}, {}, {id: "minecraft:white_banner", Count: 1b, tag: {CustomModelData: 1450600,BlockEntityTag: {Patterns: [{Pattern: "hhb", Color: 14}, {Pattern: "mr", Color: 14}, {Pattern: "ss", Color: 4}, {Pattern: "ss", Color: 4}, {Pattern: "hh", Color: 14}, {Pattern: "cr", Color: 14}, {Pattern: "sku", Color: 15}, {Pattern: "sku", Color: 4}, {Pattern: "gra", Color: 14}, {Pattern: "sku", Color: 4}, {Pattern: "gru", Color: 14}]}}}]}

# shield 3
summon armor_stand ~ ~ ~ {NoGravity: 1b, Invulnerable: 1b, DisabledSlots: 4144959, Pose: {}, Invisible: 1b, Tags: ["in.inferno_entity", "in.inferno_armor", "in.shield", "in.shield3"], Marker: 1b, Rotation: [-84.0f, 0.0f], ArmorItems: [{}, {}, {}, {id: "minecraft:white_banner", Count: 1b, tag: {CustomModelData: 1450600,BlockEntityTag: {Patterns: [{Pattern: "hhb", Color: 14}, {Pattern: "mr", Color: 14}, {Pattern: "ss", Color: 4}, {Pattern: "ss", Color: 4}, {Pattern: "hh", Color: 14}, {Pattern: "cr", Color: 14}, {Pattern: "sku", Color: 15}, {Pattern: "sku", Color: 4}, {Pattern: "gra", Color: 14}, {Pattern: "sku", Color: 4}, {Pattern: "gru", Color: 14}]}}}]}

# shield 4
summon armor_stand ~ ~ ~ {NoGravity: 1b, Invulnerable: 1b, DisabledSlots: 4144959, Pose: {}, Invisible: 1b, Tags: ["in.inferno_entity", "in.inferno_armor", "in.shield", "in.shield4"], Marker: 1b, Rotation: [-144.0f, 0.0f], ArmorItems: [{}, {}, {}, {id: "minecraft:white_banner", Count: 1b, tag: {CustomModelData: 1450600,BlockEntityTag: {Patterns: [{Pattern: "hhb", Color: 14}, {Pattern: "mr", Color: 14}, {Pattern: "ss", Color: 4}, {Pattern: "ss", Color: 4}, {Pattern: "hh", Color: 14}, {Pattern: "cr", Color: 14}, {Pattern: "sku", Color: 15}, {Pattern: "sku", Color: 4}, {Pattern: "gra", Color: 14}, {Pattern: "sku", Color: 4}, {Pattern: "gru", Color: 14}]}}}]}

# helmet
summon armor_stand ~ ~ ~ {NoGravity: 1b, Invulnerable: 1b, DisabledSlots: 4144959, Pose: {}, Invisible: 1b, Tags: ["in.inferno_entity", "in.inferno_armor", "in.inferno_helmet"], Marker: 1b, Rotation: [-130.0f, 0.0f], ArmorItems: [{}, {}, {}, {id: "minecraft:netherite_helmet", Count: 1b, tag: {CustomModelData: 1450601,Damage: 0, Enchantments: [{lvl: 4, id: "protection"}],display:{Name:'"Inferno Helmet"'}}}]}

# pivot
execute in minecraft:overworld run summon marker 0.0 0.0 0.0 {Tags:["in.checked", "in.pivot", "in.inferno_entity"]}

#? ???
kill @e[type=area_effect_cloud,tag=in.butterfly]
kill @e[type=area_effect_cloud,tag=in.butterfly2]
