
--adjusting base uranium and nuclear
RECIPE('atomic-bomb'):remove_ingredient('uranium-235'):add_ingredient({type = "item", name = "yellow-cake", amount = 5})

RECIPE("uranium-processing"):remove_unlock('uranium-processing')

TECHNOLOGY("uranium-processing"):set_field{enabled = false}

RECIPE("kovarex-enrichment-process"):set_fields{energy_required = 5}

TECHNOLOGY("kovarex-enrichment-process"):remove_prereq('uranium-processing'):add_prereq('uranium-mk02'):remove_prereq('rocket-fuel')

TECHNOLOGY("utility-science-pack"):remove_prereq('kovarex-enrichment-process')

RECIPE("nuclear-fuel"):remove_unlock('kovarex-enrichment-process'):add_unlock('uranium-mk04')

RECIPE('electric-engine-unit'):remove_ingredient('copper-cable'):add_ingredient({type = "item", name = "copper-cable", amount = 150}):add_ingredient({type = "item", name = "aluminium-plate", amount = 10}):add_ingredient({type = "item", name = "bolts", amount = 20})--:remove_ingredient("engine-unit")

RECIPE('flying-robot-frame'):add_unlock('robotics')
RECIPE('low-density-structure'):change_category('py-rawores-smelter')

TECHNOLOGY('robotics'):add_prereq('construction-robotics'):add_prereq('logistic-robotics')

data.raw.reactor['nuclear-reactor'].use_fuel_glow_color = true

--tweaking the centrifuge
data.raw["assembling-machine"]["centrifuge"].crafting_speed = 4
data.raw["assembling-machine"]["centrifuge"].module_specification.module_slots = 4

RECIPE("centrifuge"):remove_unlock('uranium-processing'):add_unlock('nuclear-fuel-reprocessing')


--URANIUM FUEL CELL

data.raw.item['uranium-fuel-cell'].fuel_glow_color = {0,1,0,1}
data.raw.item['uranium-fuel-cell'].subgroup = "py-rawores-items"
data.raw.item['uranium-fuel-cell'].order = "cae"

RECIPE {
  type = "recipe",
  name = "uranium-fuel-cell",
  enabled = false,
  energy_required = 15,
  ingredients =
    {
      {"lead-plate", 2},
      {"niobium-plate", 2},
      {"fuelrod-mk01", 2}
    },
  results = {
      {"uranium-fuel-cell", 1}
  },
}


data.raw['underground-belt']['fast-underground-belt'].max_distance = 15
data.raw['underground-belt']['express-underground-belt'].max_distance = 30

data.raw.resource['coal'].autoplace = nil
data.raw['autoplace-control']['coal'] = nil

for _, preset in pairs(data.raw["map-gen-presets"]["default"]) do
    if preset and preset.basic_settings and preset.basic_settings.autoplace_controls and preset.basic_settings.autoplace_controls['coal'] then
      preset.basic_settings.autoplace_controls['coal'] = nil
    end
end
