RECIPE {
    type = "recipe",
    name = "chromium-mine",
    energy_required = 2,
    enabled = false,
    ingredients = {
        {"automated-factory-mk01", 2},
        {"electric-mining-drill", 20},
        {"stainless-steel", 50},
        {"nexelit-plate", 50},
        {"chromium", 50},
        {"advanced-circuit", 30} --add mo plates, vanadium
    },
    results = {
        {"chromium-mine", 1}
    }
}:add_unlock("chromium-mk02")

ITEM {
    type = "item",
    name = "chromium-mine",
    icon = "__pyraworesgraphics__/graphics/icons/mega-chromium.png",
	icon_size = 32,
    flags = {},
    subgroup = "py-rawores-mines",
    order = "a",
    place_result = "chromium-mine",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "chromium-mine",
    icon = "__pyraworesgraphics__/graphics/icons/mega-chromium.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "chromium-mine"},
    fast_replaceable_group = "chromium-mine",
    max_health = 600,
    resource_categories = {"chromium-rock"},
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-5.3, -5.3}, {5.3, 5.3}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},

    module_specification = {
        module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    energy_source =
    {
      type = "burner",
      fuel_category = "drill",
      effectivity = 0.4,
      fuel_inventory_size = 1,
      emissions_per_minute = 0.06,
    },
    energy_usage = "2500kW",
    mining_speed = 20,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, -5.65},
    radius_visualisation_picture = {
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
        width = 12,
        height = 12
    },
    animations = {
        layers = {
            {
                filename = "__pyraworesgraphics__/graphics/entity/chromium-mine/s1.png",
                width = 64,
                height = 384,
                line_length = 32,
                frame_count = 160,
                animation_speed = 0.2,
                shift = util.by_pixel(-144, -16)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/chromium-mine/s2.png",
                width = 64,
                height = 384,
                line_length = 32,
                frame_count = 160,
                animation_speed = 0.2,
                shift = util.by_pixel(-80, -16)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/chromium-mine/s3.png",
                width = 64,
                height = 384,
                line_length = 32,
                frame_count = 160,
                animation_speed = 0.2,
                shift = util.by_pixel(-16, -16)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/chromium-mine/s4.png",
                width = 64,
                height = 384,
                line_length = 32,
                frame_count = 160,
                animation_speed = 0.2,
                shift = util.by_pixel(48, -16)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/chromium-mine/s5.png",
                width = 64,
                height = 384,
                line_length = 32,
                frame_count = 160,
                animation_speed = 0.2,
                shift = util.by_pixel(112, -16)
            },
            {
                filename = "__pyraworesgraphics__/graphics/entity/chromium-mine/s6.png",
                width = 64,
                height = 384,
                line_length = 32,
                frame_count = 160,
                animation_speed = 0.2,
                shift = util.by_pixel(176, -16)
            },
        }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__pyraworesgraphics__/sounds/chromium-mine.ogg", volume = 1.4},
        idle_sound = {filename = "__pyraworesgraphics__/sounds/chromium-mine.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
