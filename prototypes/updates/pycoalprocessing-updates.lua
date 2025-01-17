local fun = require("prototypes/functions/functions")

--TECHNOLOGY
TECHNOLOGY('engine'):remove_pack('logistic-science-pack')
TECHNOLOGY('crusher'):remove_pack('logistic-science-pack'):remove_prereq('coal-processing-2'):add_prereq('aluminium-mk01')
TECHNOLOGY('excavation-1'):remove_pack('chemical-science-pack'):remove_prereq('coal-processing-3'):add_prereq('coal-processing-2')

TECHNOLOGY('ralesia'):add_prereq('machines-mk01')
TECHNOLOGY('energy-1'):add_prereq('machines-mk01'):add_prereq('optics')

TECHNOLOGY("advanced-material-processing"):add_prereq('iron-mk02'):add_prereq('machines-mk01')
--SCIENCE PACKS

TECHNOLOGY('logistic-science-pack'):add_prereq('aluminium-mk01')
TECHNOLOGY('chemical-science-pack'):remove_prereq('nexelit'):add_prereq('nexelit-mk01'):add_prereq('iron-mk02')

TECHNOLOGY("nexelit"):set_fields{enabled = false}
--CHROMIUM

TECHNOLOGY('chromium'):set_fields{enabled = false}

TECHNOLOGY("coal-processing-2"):remove_prereq('chromium'):add_prereq('chromium-mk02')

RECIPE('making-chromium'):remove_unlock('chromium')
RECIPE('nichrome'):remove_unlock('chromium'):add_unlock("chromium-mk01")
RECIPE('richdust-separation'):remove_unlock('chromium'):add_unlock("chromium-mk01")
RECIPE('sand-classification'):remove_unlock('chromium'):add_unlock("chromium-mk01")


--NEXELIT
RECIPE("tailings-copper-iron"):set_fields{enabled = true}

RECIPE("sand-casting"):remove_unlock('nexelit'):add_unlock('machines-mk01')

--need concrete for quenching for early nexelit
TECHNOLOGY("concrete"):remove_pack('logistic-science-pack'):remove_prereq('logistic-science-pack')
RECIPE("concrete-richclay"):remove_unlock('concrete')

TECHNOLOGY("engine"):remove_prereq('logistic-science-pack')
--TECHNOLOGY("machines-mk01"):add_prereq('concrete')

RECIPE("quenching-tower"):add_unlock('machines-mk01')

RECIPE('nexelit-ore-1'):remove_unlock('chemical-science-pack')
RECIPE('nexelit-plate'):remove_unlock('chemical-science-pack')


--Autofactory

RECIPE('automated-factory-mk01'):replace_ingredient('advanced-circuit', 'electronic-circuit'):remove_unlock('advanced-electronics'):add_unlock('machines-mk01')

--advanced-circuit

RECIPE("advanced-circuit"):add_ingredient({type = "item", name = "optical-fiber", amount = 2})

--TECHNOLOGY('advanced-electronics'):add_prereq('fine-electronics')

--cladded core

RECIPE("cladded-core"):add_ingredient({type = "item", name = "aramid", amount = 1})

TECHNOLOGY('fine-electronics'):add_prereq('iron-mk02'):add_prereq('lead-mk02')

--RECIPES

RECIPE('crushing-copper'):remove_unlock('advanced-material-processing')
RECIPE('crushed-copper'):remove_unlock('advanced-material-processing')
RECIPE('crushing-iron'):remove_unlock('advanced-material-processing')
RECIPE('crushed-iron'):remove_unlock('advanced-material-processing')
RECIPE("steel-plate2"):remove_unlock('advanced-material-processing-2')
RECIPE('calcium-carbide'):remove_unlock('coal-processing-2'):add_unlock('coal-processing-1')
RECIPE('lime'):remove_unlock('separation'):add_unlock('coal-processing-1')
RECIPE('evaporator'):remove_unlock('coal-processing-2'):add_unlock('machines-mk01'):remove_ingredient('chemical-plant-mk01')
RECIPE('coke-coal'):remove_unlock('coal-processing-1'):add_unlock('coke-mk01')


fun.results_replacer("richdust-separation", "chromite-sand", "chromite-sand",3)
fun.results_replacer("coal-fawogae", "coal", "raw-coal",3)

RECIPE("boric-acid"):change_category('electrolyzer')
RECIPE("copper-coating"):change_category('electrolyzer')
RECIPE("nbfe-alloy"):change_category('py-rawores-smelter')

RECIPE("copper-coating"):replace_ingredient("organic-solvent", {"water-saline", 100})
RECIPE("empty-gas-canister"):replace_ingredient("steel-plate", "aluminium-plate")
RECIPE("fuelrod-mk01"):remove_unlock('advanced-material-processing-2')
RECIPE("methanol-from-syngas"):replace_ingredient("iron-plate", "zinc-plate")
RECIPE("flying-robot-frame"):replace_ingredient("steel-plate", "niobium-plate")
RECIPE("ralesia"):replace_ingredient("water", "hydrogen")
RECIPE("equipment-chassi"):replace_ingredient("copper-plate", "tin-plate")
RECIPE("lens"):remove_ingredient("molten-glass"):add_ingredient({type = "fluid", name = "molten-glass", amount = 100})
RECIPE("diborane"):replace_ingredient("water", "hydrogen"):change_category('electrolyzer')
RECIPE("oleochemicals-distilation"):replace_ingredient("water", "oxygen")
RECIPE("oleo-gasification"):replace_ingredient("water", "oxygen")
RECIPE('dedicated-oleochemicals'):replace_ingredient("chromium", "titanium-plate")
RECIPE("ppd"):replace_ingredient("water", "hydrogen"):change_category('electrolyzer'):add_ingredient({type = 'fluid', name = 'chlorine', amount = 400})
RECIPE("aromatics2"):replace_ingredient("water", "hydrogen")
RECIPE("niobium-complex"):replace_ingredient("water", "hydrogen-chloride")
RECIPE("tpa"):replace_ingredient("copper-ore", "nichrome")
RECIPE("chemical-science-pack"):replace_ingredient("copper-cable", "tinned-cable")
--replaced bob ores with pyro ores
RECIPE("tailings-classification"):replace_ingredient("copper-ore", "ore-lead") --result
RECIPE("tailings-classification"):replace_ingredient("iron-ore", "ore-tin") --result
RECIPE("niobium-plate"):replace_ingredient("coal", "salt"):change_category('electrolyzer')
RECIPE("sulfur-crudeoil"):replace_ingredient("iron-ore", "salt")
RECIPE("sulfur-heavyoil"):add_ingredient({type = 'item', name = 'salt', amount = 10})
RECIPE("sulfur-lightoil"):add_ingredient({type = 'item', name = 'salt', amount = 10})
RECIPE("glass-core"):remove_ingredient("molten-glass"):add_ingredient({type = "fluid", name = "molten-glass", amount = 100})
RECIPE("glass-core"):replace_ingredient("steel-plate", "silver-plate")
RECIPE("nichrome"):replace_ingredient("water", "nitrogen")
RECIPE("nichrome"):replace_ingredient("iron-plate", "nickel-plate")
RECIPE("hydrogen-peroxide"):replace_ingredient("iron-plate", "nickel-plate")
RECIPE("cladding"):remove_ingredient("molten-glass"):add_ingredient({type = "item", name = "glass", amount = 5})
--RECIPE("aromatics-to-rubber"):replace_ingredient("plastic-bar", "rubber")
RECIPE("nas-battery"):replace_ingredient("copper-ore", "sodium-hydroxide")
RECIPE("nas-battery"):add_ingredient({type = "item", name = "lead-plate", amount = 2})


RECIPE("optical-fiber"):remove_ingredient("plastic-bar"):add_ingredient({type = "item", name = "plastic-bar", amount = 5})

RECIPE("olefin"):replace_ingredient("water", "hydrogen")
RECIPE("flask"):remove_ingredient("molten-glass"):add_ingredient({type = "fluid", name = "molten-glass", amount = 200})
RECIPE("ref-to-light-oil"):add_ingredient({type = "fluid", name = "hydrogen", amount = 250})
--RECIPE("olefin-combustion"):remove_ingredient("water"):add_ingredient({type = "fluid", name = "hydrogen", amount = 100})
RECIPE("niobium-oxide"):replace_ingredient("water", "nitrogen")
RECIPE("filtration-media"):add_ingredient({type = "item", name = "glass", amount = 6})
RECIPE("active-carbon"):remove_ingredient("water"):add_ingredient({type = "fluid", name = "nitrogen", amount = 50}):add_ingredient({type = "item", name = "sodium-hydroxide", amount = 4})
RECIPE("zinc-chloride"):replace_ingredient("iron-plate", "zinc-plate"):replace_ingredient("water", "hydrogen-chloride"):remove_ingredient("copper-plate"):add_result({type = "fluid", name = "hydrogen", amount =20})
RECIPE("laser-turret"):add_ingredient({type = "item", name = "lens", amount = 1})
RECIPE("cooling-tower-mk01"):replace_ingredient("iron-plate", "duralumin")
RECIPE("soil-extractormk02"):replace_ingredient("copper-cable", "tinned-cable")
RECIPE("soil-extractormk01"):replace_ingredient("copper-cable", "tinned-cable")
RECIPE("wpu"):replace_ingredient("copper-cable", "tinned-cable")
RECIPE("fawogae-plantation-mk01"):replace_ingredient("copper-cable", "tinned-cable")
RECIPE("advanced-foundry-mk01"):replace_ingredient("steel-furnace", "stone-furnace"):remove_unlock('nexelit'):add_unlock('machines-mk01')
RECIPE("chemical-science-pack"):replace_ingredient("iron-plate", "stainless-steel")

RECIPE("gasturbinemk02"):replace_ingredient("pipe", "niobium-pipe"):replace_ingredient("iron-plate", "duralumin")
RECIPE("methanol-reactor"):replace_ingredient("chemical-plant-mk01", "electrolyzer-mk01")
RECIPE("power-house"):replace_ingredient("iron-plate", "lead-plate")
RECIPE("jaw-crusher"):remove_ingredient("car"):add_ingredient({type = "item", name = "duralumin", amount = 15})
RECIPE("evaporator"):replace_ingredient("iron-plate", "tin-plate")
RECIPE("cooling-tower-mk02"):replace_ingredient("pipe", "niobium-pipe"):replace_ingredient("iron-plate", "stainless-steel")
RECIPE("desulfurizator-unit"):replace_ingredient("iron-plate", "titanium-plate")
RECIPE("olefin-plant"):replace_ingredient("chemical-plant-mk01", "electrolyzer-mk01"):replace_ingredient('advanced-circuit','electronic-circuit')
RECIPE("ground-borer"):replace_ingredient("iron-plate", "titanium-plate")
RECIPE("fts-reactor"):replace_ingredient("stone-brick", "glass")
RECIPE("advanced-foundry-mk02"):replace_ingredient("iron-plate", "titanium-plate"):add_ingredient({type = "item", name = "glass", amount = 15})
RECIPE("ralesia-plantation-mk01"):replace_ingredient("stone", "glass")
RECIPE("botanical-nursery"):add_ingredient({name = "glass", amount = 10})
RECIPE("equipment-chassi"):replace_ingredient("iron-plate", "duralumin")


RECIPE('distilator-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 20}):add_ingredient({type = "item", name = "stainless-steel", amount = 30})
RECIPE('distilator-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 10}):add_ingredient({type = "item", name = "super-steel", amount = 30})
RECIPE('distilator-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "lead-plate", amount = 20})

RECIPE('advanced-foundry-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 30}):add_ingredient({type = "item", name = "engine-unit", amount = 10}):add_ingredient({type = "item", name = "stainless-steel", amount = 15})
RECIPE('advanced-foundry-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 10}):add_ingredient({type = "item", name = "super-steel", amount = 20})
RECIPE('advanced-foundry-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "lead-plate", amount = 40})

RECIPE('automated-factory-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 30}):add_ingredient({type = "item", name = "stainless-steel", amount = 20})
RECIPE('automated-factory-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 30}):add_ingredient({type = "item", name = "super-steel", amount = 30})
RECIPE('automated-factory-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "lead-plate", amount = 10})

RECIPE('ball-mill-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 10}):add_ingredient({type = "item", name = "stainless-steel", amount = 25})
RECIPE('ball-mill-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 50}):add_ingredient({type = "item", name = "super-steel", amount = 15})
RECIPE('ball-mill-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "lead-plate", amount = 30})

RECIPE('borax-mine-mk01'):remove_unlock('energy-1'):add_unlock('optics')
RECIPE('borax-mine-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 15}):add_ingredient({type = "item", name = "stainless-steel", amount = 20})
RECIPE('borax-mine-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 40}):add_ingredient({type = "item", name = "super-steel", amount = 30})
RECIPE('borax-mine-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "lead-plate", amount = 20})

RECIPE('botanical-nursery-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 10}):add_ingredient({type = "item", name = "glass", amount = 50})
RECIPE('botanical-nursery-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 10}):add_ingredient({type = "item", name = "stainless-steel", amount = 10})
RECIPE('botanical-nursery-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "tin-plate", amount = 20}):add_ingredient({type = "item", name = "super-steel", amount = 30})

RECIPE('carbon-filter-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 20})
RECIPE('carbon-filter-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 30}):add_ingredient({type = "item", name = "stainless-steel", amount = 15})
RECIPE('carbon-filter-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "tin-plate", amount = 30}):add_ingredient({type = "item", name = "super-steel", amount = 20})

RECIPE('classifier-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 30}):add_ingredient({type = "item", name = "tin-plate", amount = 30})
RECIPE('classifier-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 20}):add_ingredient({type = "item", name = "stainless-steel", amount = 15})
RECIPE('classifier-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-steel", amount = 30})

RECIPE('glassworks-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 30}):add_ingredient({type = "item", name = "tin-plate", amount = 30})
RECIPE('glassworks-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 20}):add_ingredient({type = "item", name = "stainless-steel", amount = 15})
RECIPE('glassworks-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-steel", amount = 30})

RECIPE('ground-borer-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 30}):add_ingredient({type = "item", name = "tin-plate", amount = 30})
RECIPE('ground-borer-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 20}):add_ingredient({type = "item", name = "stainless-steel", amount = 15})
RECIPE('ground-borer-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-steel", amount = 30})

RECIPE('desulfurizator-unit-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 15}):add_ingredient({type = "item", name = "tin-plate", amount = 25}):add_ingredient({type = "item", name = "glass", amount = 10})
RECIPE('desulfurizator-unit-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 40}):add_ingredient({type = "item", name = "stainless-steel", amount = 30})
RECIPE('desulfurizator-unit-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-steel", amount = 35})

RECIPE('evaporator-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 15}):add_ingredient({type = "item", name = "tin-plate", amount = 25}):add_ingredient({type = "item", name = "glass", amount = 10})
RECIPE('evaporator-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 40}):add_ingredient({type = "item", name = "stainless-steel", amount = 30})
RECIPE('evaporator-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-steel", amount = 35})

RECIPE('fluid-separator-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 30}):add_ingredient({type = "item", name = "lead-plate", amount = 20}):replace_ingredient('storage-tank', 'py-tank-3000')
RECIPE('fluid-separator-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 20}):add_ingredient({type = "item", name = "stainless-steel", amount = 20}):replace_ingredient('storage-tank', 'py-tank-6500')
RECIPE('fluid-separator-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-steel", amount = 10}):replace_ingredient('storage-tank', 'py-tank-8000')

RECIPE('fts-reactor-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 20}):add_ingredient({type = "item", name = "lead-plate", amount = 20})
RECIPE('fts-reactor-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 25}):add_ingredient({type = "item", name = "stainless-steel", amount = 20})
RECIPE('fts-reactor-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-steel", amount = 20})

RECIPE('gasifier-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 20}):add_ingredient({type = "item", name = "lead-plate", amount = 20}):replace_ingredient('storage-tank', 'py-tank-3000')
RECIPE('gasifier-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 25}):add_ingredient({type = "item", name = "stainless-steel", amount = 20}):replace_ingredient('storage-tank', 'py-tank-6500')
RECIPE('gasifier-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-steel", amount = 20}):add_ingredient({type = "item", name = "tin-plate", amount = 40}):replace_ingredient('storage-tank', 'py-tank-8000')

RECIPE('hpf-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 30}):add_ingredient({type = "item", name = "tin-plate", amount = 30})
RECIPE('hpf-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 20}):add_ingredient({type = "item", name = "stainless-steel", amount = 15})
RECIPE('hpf-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-steel", amount = 30})

RECIPE('jaw-crusher-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 20}):add_ingredient({type = "item", name = "stainless-steel", amount = 30}):add_ingredient({type = "item", name = "tin-plate", amount = 30})
RECIPE('jaw-crusher-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 60}):add_ingredient({type = "item", name = "super-steel", amount = 30})
RECIPE('jaw-crusher-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "lead-plate", amount = 30})

RECIPE('methanol-reactor-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 20})
RECIPE('methanol-reactor-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 30}):add_ingredient({type = "item", name = "stainless-steel", amount = 15})
RECIPE('methanol-reactor-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "tin-plate", amount = 30}):add_ingredient({type = "item", name = "super-steel", amount = 20})

RECIPE('olefin-plant-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 15}):add_ingredient({type = "item", name = "tin-plate", amount = 25}):replace_ingredient('storage-tank', 'py-tank-3000')
RECIPE('olefin-plant-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 40}):add_ingredient({type = "item", name = "stainless-steel", amount = 30}):replace_ingredient('storage-tank', 'py-tank-6500')
RECIPE('olefin-plant-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-steel", amount = 35}):replace_ingredient('storage-tank', 'py-tank-8000')

RECIPE('quenching-tower-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 20}):add_ingredient({type = "item", name = "lead-plate", amount = 20})
RECIPE('quenching-tower-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 25}):add_ingredient({type = "item", name = "stainless-steel", amount = 20})
RECIPE('quenching-tower-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-steel", amount = 20})

RECIPE('power-house-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 15}):add_ingredient({type = "item", name = "stainless-steel", amount = 20})
RECIPE('power-house-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 40}):add_ingredient({type = "item", name = "super-steel", amount = 30})
RECIPE('power-house-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "lead-plate", amount = 20})

RECIPE('chemical-plant-mk01'):add_ingredient({type = "item", name = "glass", amount = 50})
RECIPE('chemical-plant-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 15}):add_ingredient({type = "item", name = "tin-plate", amount = 25}):replace_ingredient('storage-tank', 'py-tank-3000')
RECIPE('chemical-plant-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 40}):add_ingredient({type = "item", name = "stainless-steel", amount = 40}):replace_ingredient('storage-tank', 'py-tank-6500')
RECIPE('chemical-plant-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-steel", amount = 45}):replace_ingredient('storage-tank', 'py-tank-8000')

RECIPE('rectisol-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 20}):replace_ingredient('storage-tank', 'py-tank-3000')
RECIPE('rectisol-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 30}):add_ingredient({type = "item", name = "stainless-steel", amount = 15}):replace_ingredient('storage-tank', 'py-tank-6500')
RECIPE('rectisol-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "tin-plate", amount = 30}):add_ingredient({type = "item", name = "super-steel", amount = 20}):replace_ingredient('storage-tank', 'py-tank-8000')

RECIPE('sand-extractor-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 20}):add_ingredient({type = "item", name = "stainless-steel", amount = 30}):add_ingredient({type = "item", name = "tin-plate", amount = 30})
RECIPE('sand-extractor-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 60}):add_ingredient({type = "item", name = "super-steel", amount = 30})
RECIPE('sand-extractor-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "lead-plate", amount = 30})

RECIPE('soil-extractormk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 20}):add_ingredient({type = "item", name = "stainless-steel", amount = 30})
RECIPE('soil-extractormk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 10}):add_ingredient({type = "item", name = "super-steel", amount = 30})
RECIPE('soil-extractormk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "lead-plate", amount = 20})

RECIPE('solid-separator-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 30}):add_ingredient({type = "item", name = "tin-plate", amount = 30})
RECIPE('solid-separator-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 20}):add_ingredient({type = "item", name = "stainless-steel", amount = 15})
RECIPE('solid-separator-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-steel", amount = 30})

RECIPE('tar-processing-unit-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 20}):add_ingredient({type = "item", name = "lead-plate", amount = 20})
RECIPE('tar-processing-unit-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 25}):add_ingredient({type = "item", name = "stainless-steel", amount = 20})
RECIPE('tar-processing-unit-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-steel", amount = 20}):add_ingredient({type = "item", name = "tin-plate", amount = 40})

RECIPE('wpu-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 10})
RECIPE('wpu-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 10}):add_ingredient({type = "item", name = "stainless-steel", amount = 10})
RECIPE('wpu-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "tin-plate", amount = 20}):add_ingredient({type = "item", name = "super-steel", amount = 30})

RECIPE('washer-mk02'):add_unlock('machines-mk02'):add_ingredient({type = "item", name = "duralumin", amount = 30}):add_ingredient({type = "item", name = "lead-plate", amount = 20})
RECIPE('washer-mk03'):add_unlock('machines-mk03'):add_ingredient({type = "item", name = "titanium-plate", amount = 20}):add_ingredient({type = "item", name = "stainless-steel", amount = 20})
RECIPE('washer-mk04'):add_unlock('machines-mk04'):add_ingredient({type = "item", name = "super-steel", amount = 10})

RECIPE {
    type = "recipe",
    name = "methanol-from-hydrogen",
    category = "methanol",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "carbon-dioxide", amount = 90},
        {type = "fluid", name = "hydrogen", amount = 150},
        {type = "item", name = "nichrome", amount = 1}
    },
    results = {
        {type = "fluid", name = "methanol", amount = 120}
    },
    subgroup = "py-methanol",
    icon = "__pycoalprocessinggraphics__/graphics/icons/methanol.png",
    icon_size = 32,
    order = "b"
}:add_unlock("methanol-processing-2")

RECIPE {
    type = "recipe",
    name = "kerosene-combustion",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "hydrogen", amount = 50},
        {type = "fluid", name = "kerosene", amount = 100},
        {type = "fluid", name = "water", amount = 500}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 150, temperature = 800},
        {type = "fluid", name = "steam", amount = 500, temperature = 150}
    },
    icon = "__pyraworesgraphics__/graphics/icons/combustion-kerosene.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-combustion",
    order = "k"
}:add_unlock("energy-2")

RECIPE {
    type = "recipe",
    name = "fuelrodmk02-combustion",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "hydrogen", amount = 50},
        {type = "fluid", name = "water", amount = 500},
        {type = "item", name = "fuelrod-mk02", amount = 1}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 300, temperature = 800},
        {type = "fluid", name = "steam", amount = 500, temperature = 100}
    },
    icon = "__pyraworesgraphics__/graphics/icons/combustion-fuelrod-mk02.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-combustion",
    order = "k"
}:add_unlock("fuel-production")

RECIPE {
    type = "recipe",
    name = "fuelrodmk03-combustion",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "hydrogen", amount = 50},
        {type = "fluid", name = "water", amount = 500},
        {type = "item", name = "fuelrod-mk03", amount = 1}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 300, temperature = 850},
        {type = "fluid", name = "steam", amount = 500, temperature = 125}
    },
    icon = "__pyraworesgraphics__/graphics/icons/combustion-fuelrod-mk03.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-combustion",
    order = "k"
}:add_unlock("fuel-production")

RECIPE {
    type = "recipe",
    name = "fuelrodmk04-combustion",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "hydrogen", amount = 50},
        {type = "fluid", name = "water", amount = 500},
        {type = "item", name = "fuelrod-mk04", amount = 1}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 300, temperature = 900},
        {type = "fluid", name = "steam", amount = 500, temperature = 150}
    },
    icon = "__pyraworesgraphics__/graphics/icons/combustion-fuelrod-mk04.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-combustion",
    order = "k"
}:add_unlock("fuel-production")

RECIPE {
    type = "recipe",
    name = "fuelrodmk05-combustion",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "hydrogen", amount = 50},
        {type = "fluid", name = "water", amount = 500},
        {type = "item", name = "fuelrod-mk05", amount = 1}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 300, temperature = 950},
        {type = "fluid", name = "steam", amount = 500, temperature = 200}
    },
    icon = "__pyraworesgraphics__/graphics/icons/combustion-fuelrod-mk05.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-combustion",
    order = "k"
}:add_unlock("fuel-production")

RECIPE {
    type = "recipe",
    name = "glycerol-hydrogen",
    category = "electrolyzer",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "glycerol", amount = 20},
        {type = "fluid", name = "water", amount = 50} --pyfe-liquid-nitrogen
    },
    results = {
        {type = "fluid", name = "hydrogen", amount = 300}
    },
    icon = "__pycoalprocessinggraphics__/graphics/icons/glycerol-hydrogen.png",
    icon_size = 32,
    subgroup = "py-fluid-handling",
    order = "o"
}:add_unlock("coal-processing-3"):replace_ingredient("water", "liquid-nitrogen")

RECIPE {
    type = "recipe",
    name = "mining-aluminium",
    category = "ground-borer",
    enabled = false,
    energy_required = 2.0,
    ingredients = {
        {type = "fluid", name = "lubricant", amount = 300},
        {type = "fluid", name = "coal-gas", amount = 300},
        {type = "item", name = "drill-head", amount = 1}
    },
    results = {
        {type = "item", name = "ore-aluminium", amount = 15}
    },
    icon = "__pyraworesgraphics__/graphics/icons/drilling-aluminium.png",
    icon_size = 32,
    subgroup = "py-drilling",
    order = "a"
}:add_unlock("excavation-2")

RECIPE {
    type = "recipe",
    name = "mining-chromium",
    category = "ground-borer",
    enabled = false,
    energy_required = 2.0,
    ingredients = {
        {type = "fluid", name = "lubricant", amount = 300},
        {type = "fluid", name = "coal-gas", amount = 300},
        {type = "item", name = "drill-head", amount = 1}
    },
    results = {
        {type = "item", name = "ore-chromium", amount = 15}
    },
    icon = "__pyraworesgraphics__/graphics/icons/drilling-chromium.png",
    icon_size = 32,
    subgroup = "py-drilling",
    order = "a"
}:add_unlock("excavation-2")

RECIPE {
    type = "recipe",
    name = "mining-copper",
    category = "ground-borer",
    enabled = false,
    energy_required = 2.0,
    ingredients = {
        {type = "fluid", name = "lubricant", amount = 250},
        {type = "fluid", name = "coal-gas", amount = 250},
        {type = "item", name = "drill-head", amount = 1}
    },
    results = {
        {type = "item", name = "copper-ore", amount = 15}
    },
    icon = "__pyraworesgraphics__/graphics/icons/drilling-copper.png",
    icon_size = 32,
    subgroup = "py-drilling",
    order = "a"
}:add_unlock("excavation-1")

RECIPE {
    type = "recipe",
    name = "mining-iron",
    category = "ground-borer",
    enabled = false,
    energy_required = 2.0,
    ingredients = {
        {type = "fluid", name = "lubricant", amount = 250},
        {type = "fluid", name = "coal-gas", amount = 250},
        {type = "item", name = "drill-head", amount = 1}
    },
    results = {
        {type = "item", name = "iron-ore", amount = 15}
    },
    icon = "__pyraworesgraphics__/graphics/icons/drilling-iron.png",
    icon_size = 32,
    subgroup = "py-drilling",
    order = "a"
}:add_unlock("excavation-1")

RECIPE {
    type = "recipe",
    name = "mining-lead",
    category = "ground-borer",
    enabled = false,
    energy_required = 2.0,
    ingredients = {
        {type = "fluid", name = "lubricant", amount = 200},
        {type = "fluid", name = "coal-gas", amount = 200},
        {type = "item", name = "drill-head", amount = 1}
    },
    results = {
        {type = "item", name = "ore-lead", amount = 20}
    },
    icon = "__pyraworesgraphics__/graphics/icons/drilling-lead.png",
    icon_size = 32,
    subgroup = "py-drilling",
    order = "a"
}:add_unlock("excavation-2")

RECIPE {
    type = "recipe",
    name = "mining-nickel",
    category = "ground-borer",
    enabled = false,
    energy_required = 2.0,
    ingredients = {
        {type = "fluid", name = "lubricant", amount = 300},
        {type = "fluid", name = "coal-gas", amount = 300},
        {type = "item", name = "drill-head", amount = 1}
    },
    results = {
        {type = "item", name = "ore-nickel", amount = 15}
    },
    icon = "__pyraworesgraphics__/graphics/icons/drilling-nickel.png",
    icon_size = 32,
    subgroup = "py-drilling",
    order = "a"
}:add_unlock("excavation-2")

RECIPE {
    type = "recipe",
    name = "mining-quartz",
    category = "ground-borer",
    enabled = false,
    energy_required = 2.0,
    ingredients = {
        {type = "fluid", name = "lubricant", amount = 300},
        {type = "fluid", name = "coal-gas", amount = 300},
        {type = "item", name = "drill-head", amount = 1}
    },
    results = {
        {type = "item", name = "ore-quartz", amount = 15}
    },
    icon = "__pyraworesgraphics__/graphics/icons/drilling-quartz.png",
    icon_size = 32,
    subgroup = "py-drilling",
    order = "a"
}:add_unlock("excavation-1")

RECIPE {
    type = "recipe",
    name = "mining-tin",
    category = "ground-borer",
    enabled = false,
    energy_required = 2.0,
    ingredients = {
        {type = "fluid", name = "lubricant", amount = 300},
        {type = "fluid", name = "coal-gas", amount = 300},
        {type = "item", name = "drill-head", amount = 1}
    },
    results = {
        {type = "item", name = "ore-tin", amount = 15}
    },
    icon = "__pyraworesgraphics__/graphics/icons/drilling-tin.png",
    icon_size = 32,
    subgroup = "py-drilling",
    order = "a"
}:add_unlock("excavation-2")

RECIPE {
    type = "recipe",
    name = "mining-titanium",
    category = "ground-borer",
    enabled = false,
    energy_required = 2.0,
    ingredients = {
        {type = "fluid", name = "lubricant", amount = 200},
        {type = "fluid", name = "coal-gas", amount = 200},
        {type = "item", name = "drill-head", amount = 1}
    },
    results = {
        {type = "item", name = "ore-titanium", amount = 15}
    },
    icon = "__pyraworesgraphics__/graphics/icons/drilling-titanium.png",
    icon_size = 32,
    subgroup = "py-drilling",
    order = "a"
}:add_unlock("excavation-2")

RECIPE {
    type = "recipe",
    name = "mining-zinc",
    category = "ground-borer",
    enabled = false,
    energy_required = 2.0,
    ingredients = {
        {type = "fluid", name = "lubricant", amount = 250},
        {type = "fluid", name = "coal-gas", amount = 250},
        {type = "item", name = "drill-head", amount = 1}
    },
    results = {
        {type = "item", name = "ore-zinc", amount = 15}
    },
    icon = "__pyraworesgraphics__/graphics/icons/drilling-zinc.png",
    icon_size = 32,
    subgroup = "py-drilling",
    order = "a"
}:add_unlock("excavation-2")

RECIPE {
    type = "recipe",
    name = "extract-limestone-01",
    category = "soil-extraction",
    enabled = true,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "water", amount = 100},
    },
    results = {
        {type = "item", name = "limestone", amount = 2}
    },
    subgroup = "py-extraction",
    order = "d"
}

RECIPE {
    type = "recipe",
    name = "fuelrod-mk01-1",
    category = "hpf",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "titanium-plate", amount = 5},
        {type = "item", name = "20-u-powder", amount = 4},
        {type = "item", name = "coke", amount = 10}
    },
    results = {
        {type = "item", name = "fuelrod-mk01", amount = 1}
    }
}:add_unlock("uranium-mk01")

RECIPE {
    type = "recipe",
    name = "fuelrod-mk01-2",
    category = "hpf",
    enabled = false,
    energy_required = 3.5,
    ingredients = {
        {type = "item", name = "niobium-plate", amount = 2},
        {type = "item", name = "40-u-powder", amount = 4},
        {type = "item", name = "coke", amount = 10}
    },
    results = {
        {type = "item", name = "fuelrod-mk01", amount = 4}
    }
}:add_unlock("uranium-mk02")

RECIPE {
    type = "recipe",
    name = "fuelrod-mk01-3",
    category = "hpf",
    enabled = false,
    energy_required = 3.5,
    ingredients = {
        {type = "item", name = "niobium-plate", amount = 2},
        {type = "item", name = "70-u-powder", amount = 4},
        {type = "item", name = "coke", amount = 10}
    },
    results = {
        {type = "item", name = "fuelrod-mk01", amount = 8}
    }
}:add_unlock("uranium-mk03")

RECIPE {
    type = "recipe",
    name = "nbfe-alloy-2",
    category = "py-rawores-smelter",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "molten-iron", amount = 100},
        {type = "fluid", name = "niobium-complex", amount = 40},
        {type = "item", name = "sand-casting", amount = 4},
    },
    results = {
        {type = "item", name = "nbfe-alloy", amount = 15}
    },
    main_product= "nbfe-alloy",
    icon = "__pycoalprocessinggraphics__/graphics/icons/nbfe-alloy.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("iron-mk02")

RECIPE {
    type = "recipe",
    name = "drill-head-2",
    category = "crafting",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "steel-plate", amount = 8},
        {type = "item", name = "chromium", amount = 3},
        {type = "item", name = "aluminium-plate", amount = 6}
    },
    results = {
        {type = "item", name = "drill-head", amount = 4}
    }
}:add_unlock("coal-processing-2")

RECIPE {
    type = "recipe",
    name = "drill-head-3",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "steel-plate", amount = 8},
        {type = "item", name = "titanium-plate", amount = 4},
        {type = "item", name = "aluminium-plate", amount = 6}
    },
    results = {
        {type = "item", name = "drill-head", amount = 6}
    }
}:add_unlock("coal-processing-2")

RECIPE {
    type = "recipe",
    name = "drill-head-4",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "stainless-steel", amount = 4},
        {type = "item", name = "titanium-plate", amount = 4},
        {type = "item", name = "duralumin", amount = 5},
    },
    results = {
        {type = "item", name = "drill-head", amount = 8}
    }
}:add_unlock("iron-mk02")

RECIPE {
    type = "recipe",
    name = "drill-head-5",
    category = "crafting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "stainless-steel", amount = 4},
        {type = "item", name = "titanium-plate", amount = 4},
        {type = "item", name = "niobium-plate", amount = 3},
    },
    results = {
        {type = "item", name = "drill-head", amount = 10}
    }
}:add_unlock("iron-mk02")

RECIPE {
    type = "recipe",
    name = "diesel",
    category = "olefin",
    enabled = false,
    energy_required = 1.5,
    ingredients = {
        {type = "item", name = "nexelit-plate", amount = 2},
        {type = "fluid", name = "methanol", amount = 100},
        {type = "fluid", name = "carbon-dioxide", amount = 200}
    },
    results = {
        {type = "fluid", name = "diesel", amount = 150},
        {type = "fluid", name = "olefin", amount = 100}
    },
    main_product = "diesel",
    icon = "__pycoalprocessinggraphics__/graphics/icons/diesel.png",
    icon_size = 32,
    subgroup = "py-fluids",
    order = "d1"
}:add_unlock("fuel-production")

RECIPE {
    type = "recipe",
    name = "diesel2",
    category = "olefin",
    enabled = false,
    energy_required = 1.5,
    ingredients = {
        {type = "item", name = "nexelit-plate", amount = 2},
        {type = "fluid", name = "olefin", amount = 200}
    },
    results = {
        {type = "fluid", name = "diesel", amount = 200}
    },
    main_product = "diesel",
    icon = "__pycoalprocessinggraphics__/graphics/icons/diesel.png",
    icon_size = 32,
    subgroup = "py-fluids",
    order = "d2"
}:add_unlock("fuel-production")


--DIESEL to CM1
RECIPE {
    type = "recipe",
    name = "diesel-combustion",
    category = "combustion",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "diesel", amount = 100},
        {type = "fluid", name = "water", amount = 1000},
        {type = "item", name = "fuelrod-mk01", amount = 1}
    },
    results = {
        {type = "fluid", name = "combustion-mixture1", amount = 300, temperature = 2400},
        {type = "fluid", name = "steam", amount = 1000, temperature = 100, catalyst_amount = 1000}
    },
    icon = "__pycoalprocessinggraphics__/graphics/icons/combustion-diesel.png",
    icon_size = 32,
    --main_product = "combustion-mixture1",
    subgroup = "py-combustion",
    order = "i"
}:add_unlock("energy-3")
