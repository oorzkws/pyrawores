TECHNOLOGY {
    type = "technology",
    name = "machines-mk01",
    icon = "__pyraworesgraphics__/graphics/technology/machines-mk01.png",
    icon_size = 128,
    order = "c-a",
    prerequisites = {"coal-processing-1"},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {"automation-science-pack", 1},
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'machines-mk02',
    icon = '__pyraworesgraphics__/graphics/technology/machines-mk02.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'nexelit-mk01', 'lead-mk01','advanced-electronics', 'aluminium-mk01', 'iron-mk02', 'concrete', 'engine'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1}
        },
        time = 45
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'machines-mk03',
    icon = '__pyraworesgraphics__/graphics/technology/machines-mk03.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'coal-processing-3', 'machines-mk02'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
        },
        time = 60
    }
}

TECHNOLOGY {
    type = 'technology',
    name = 'machines-mk04',
    icon = '__pyraworesgraphics__/graphics/technology/machines-mk04.png',
    icon_size = 128,
    order = 'c-a',
    prerequisites = {'excavation-2', 'machines-mk03'},
    effects = {},
    unit = {
        count = 100,
        ingredients = {
            {'automation-science-pack', 1},
            {'logistic-science-pack', 1},
            {'chemical-science-pack', 1},
            --{'utility-science-pack', 1},
            {'production-science-pack', 1}
        },
        time = 60
    }
}
