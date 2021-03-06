module("database")

--  ["."]=1

craftitems =
{
	-- Base Game Items --
	["wood"]={["intermediates.wood"]=1},
	["wooden-chest"]={["wood"]=4, ["chests.wood"]=1},
	["iron-stick"]={["intermediates.stick"]=1},
	["iron-axe"]={["iron-stick"]=2, ["tools.iron"]=1},
	["stone-furnace"]={["furnaces.stone"]=1},
	["boiler"]={["stone-furnace"]=1, ["pipe"]=1, ["energy.boiler1"]=1},
	["steam-engine"]={["iron-gear-wheel"]=5, ["pipe"]=5, ["energy.steam1"]=1},
	["iron-gear-wheel"]={["intermediates.gear2"]=1},
	["electronic-circuit"]={["copper-cable"]=3, ["intermediates.circuit1"]=1},
	["basic-transport-belt"]={["iron-gear-wheel"]=1, ["transport.belt1"]=1},
	["basic-mining-drill"]={["electronic-circuit"]=3, ["iron-gear-wheel"]=5, ["miners.basic1"]=1},
	["burner-mining-drill"]={["iron-gear-wheel"]=3, ["stone-furnace"]=1, ["miners.burner"]=1},
	["basic-inserter"]={["electronic-circuit"]=1, ["iron-gear-wheel"]=1, ["inserters.basic"]=1},
	["burner-inserter"]={["iron-gear-wheel"]=1, ["inserters.burner"]=1},
	["pipe"]={["transport.pipe1"]=1},
	["offshore-pump"]={["electronic-circuit"]=2, ["pipe"]=1, ["iron-gear-wheel"]=1, ["transport.pump1"]=1},
	["copper-cable"]={["intermediates.cable"]=1},
	["small-electric-pole"]={["wood"]=2, ["copper-cable"]=2, ["energy.smallpole"]=1},
	["pistol"]={["guns.pistol"]=1},
	["submachine-gun"]={["iron-gear-wheel"]=10, ["guns.submachine"]=1},
	["basic-bullet-magazine"]={["ammo.basic"]=1},
	["basic-armor"]={["armor.basic"]=1},
	["radar"]={["electronic-circuit"]=5, ["iron-gear-wheel"]=5, ["others.radar"]=1},
	["small-lamp"]={["electronic-circuit"]=1, ["iron-stick"]=3, ["others.lamp"]=1},
	["pipe-to-ground"]={["pipe"]=10, ["transport.underpipe1"]=1},
	["assembling-machine-1"]={["electronic-circuit"]=3, ["iron-gear-wheel"]=5, ["crafters.assem1"]=1},
	["repair-pack"]={["electronic-circuit"]=1, ["iron-gear-wheel"]=1, ["logistics.repair2"]=1},
	["piercing-bullet-magazine"]={["ammo.piercing"]=1},
	["rocket"]={["electronic-circuit"]=1, ["explosives"]=2, ["ammo.rocket"]=1},
	["explosive-rocket"]={["rocket"]=1, ["explosives"]=5, ["ammo.rocket"]=1},
	["shotgun-shell"]={["ammo.shotgun"]=1},
	["piercing-shotgun-shell"]={["ammo.piershotgun"]=1},
	["railgun-dart"]={["electronic-circuit"]=5, ["ammo.railgun"]=1},
	["poison-capsule"]={["electronic-circuit"]=3, ["caspules.poison"]=1},
	["slowdown-capsule"]={["electronic-circuit"]=2, ["capsules.slowdown"]=1},
	["basic-grenade"]={["capsules.grenade"]=1},
	["defender-capsule"]={["piercing-bullet-magazine"]=1, ["electronic-circuit"]=2, ["iron-gear-wheel"]=3, ["capsules.defender"]=1},
	["distractor-capsule"]={["defender-capsule"]=4, ["advanced-circuit"]=3, ["capsules.distractor"]=1},
	["destroyer-capsule"]={["distractor-capsule"]=4, ["speed-module"]=1, ["capsules.destroyer"]=1},
	["basic-electric-discharge-defense-remote"]={["electronic-circuit"]=1, ["capsules.discharge"]=1},
	["plastic-bar"]={["intermediates.plastic"]=1},
	["night-vision-equipment"]={["advanced-circuit"]=5, ["armor.night"]=1},
	["energy-shield-equipment"]={["advanced-circuit"]=5, ["armor.shield1"]=1},
	["energy-shield-mk2-equipment"]={["energy-shield-equipment"]=10, ["processing-unit"]=10, ["armor.shield2"]=1},
	["battery-equipment"]={["battery"]=5, ["armor.battery1"]=1},
	["battery-mk2-equipment"]={["battery-equipment"]=10, ["processing-unit"]=20, ["armor.battery2"]=1},
	["solar-panel-equipment"]={["solar-panel"]=5, ["processing-unit"]=1, ["armor.solar"]=1},
	["fusion-reactor-equipment"]={["processing-unit"]=100, ["armor.fusion"]=1},
	["basic-laser-defense-equipment"]={["processing-unit"]=1, ["laser-turret"]=5, ["armor.laser1"]=1},
	["basic-electric-discharge-defense-equipment"]={["processing-unit"]=5, ["laser-turret"]=10, ["armor.discharge"]=1},
	["basic-exoskeleton-equipment"]={["processing-unit"]=10, ["electric-engine-unit"]=30, ["armor.exoskeleton"]=1},
	["gun-turret"]={["iron-gear-wheel"]=5, ["turrets.gun"]=1},
	["laser-turret"]={["electronic-circuit"]=5, ["battery"]=3, ["turrets.laser1"]=1},
	["speed-module"]={["advanced-circuit"]=5, ["processing-unit"]=5, ["modules.speed1"]=1},
	["speed-module-2"]={["speed-module"]=4, ["advanced-circuit"]=5, ["processing-unit"]=5, ["modules.speed2"]=1},
	["speed-module-3"]={["speed-module-2"]=5, ["advanced-circuit"]=5, ["processing-unit"]=5, ["modules.speed3"]=1},
	["effectivity-module"]={["advanced-circuit"]=5, ["processing-unit"]=5, ["modules.effect1"]=1},
	["effectivity-module-2"]={["effectivity-module"]=4, ["advanced-circuit"]=5, ["processing-unit"]=5, ["modules.effect2"]=1},
	["effectivity-module-3"]={["effectivity-module-2"]=5, ["advanced-circuit"]=5, ["processing-unit"]=5, ["modules.effect3"]=1},
	["productivity-module"]={["advanced-circuit"]=5, ["processing-unit"]=5, ["modules.prod1"]=1},
	["productivity-module-2"]={["productivity-module"]=4, ["advanced-circuit"]=5, ["processing-unit"]=5, ["modules.prod2"]=1},
	["productivity-module-3"]={["productivity-module-2"]=5, ["advanced-circuit"]=5, ["processing-unit"]=5, ["modules.prod3"]=1},
	["long-handed-inserter"]={["iron-gear-wheel"]=1, ["basic-inserter"]=1, ["inserters.long"]=1},
	["fast-inserter"]={["electronic-circuit"]=2, ["basic-inserter"]=1, ["inserters.fast"]=1},
	["smart-inserter"]={["fast-inserter"]=1, ["electronic-circuit"]=4, ["inserters.smart"]=1},
	["player-port"]={["electronic-circuit"]=10, ["iron-gear-wheel"]=5, ["others.port"]=1},
	["fast-transport-belt"]={["iron-gear-wheel"]=5, ["basic-transport-belt"]=1, ["transport.belt2"]=1},
	["express-transport-belt"]={["iron-gear-wheel"]=5, ["fast-transport-belt"]=1, ["transport.belt3"]=1},
	["solar-panel"]={["electronic-circuit"]=15, ["energy.solar1"]=1},
	["assembling-machine-2"]={["iron-gear-wheel"]=5, ["electronic-circuit"]=3, ["assembling-machine-1"]=1, ["crafters.assem2"]=1},
	["assembling-machine-3"]={["speed-module"]=4, ["assembling-machine-2"]=2, ["crafters.assem3"]=1},
	["car"]={["engine-unit"]=8, ["transport.car1"]=1},
	["straight-rail"]={["iron-stick"]=1, ["transport.rail1"]=1},
	["curved-rail"]={["iron-stick"]=4, ["transport.rail2"]=1},
	["diesel-locomotive"]={["engine-unit"]=15, ["electronic-circuit"]=5, ["transport.diesel1"]=1},
	["cargo-wagon"]={["iron-gear-wheel"]=10, ["transport.wagon1"]=1},
	["train-stop"]={["electronic-circuit"]=5, ["transport.stop"]=1},
	["rail-signal"]={["electronic-circuit"]=1, ["transport.signal"]=1},
	["heavy-armor"]={["armor.heavy"]=1},
	["basic-modular-armor"]={["advanced-circuit"]=30, ["processing-unit"]=5, ["armor.modular1"]=1},
	["power-armor"]={["processing-unit"]=100, ["electric-engine-unit"]=30, ["armor.modular2"]=1},
	["power-armor-mk2"]={["effectivity-module-3"]=5, ["speed-module-3"]=5, ["processing-unit"]=200, ["armor.modular3"]=1},
	["iron-chest"]={["chests.iron"]=1},
	["steel-chest"]={["chests.steel"]=1},
	["smart-chest"]={["electronic-circuit"]=3, ["steel-chest"]=1, ["chests.smart"]=1},
	["wall"]={["others.wall"]=1},
	["land-mine"]={["explosives"]=2, ["guns.mine"]=1},
	["flame-thrower"]={["iron-gear-wheel"]=10, ["guns.flamethrower"]=1},
	["rocket-launcher"]={["iron-gear-wheel"]=5, ["electronic-circuit"]=5, ["guns.rocket"]=1},
	["shotgun"]={["iron-gear-wheel"]=5, ["wood"]=5, ["guns.shotgun"]=1},
	["combat-shotgun"]={["iron-gear-wheel"]=5, ["wood"]=10, ["guns.combatshotgun"]=1},
	["railgun"]={["advanced-circuit"]=10, ["electronic-circuit"]=5, ["guns.railgun"]=1},
	["science-pack-1"]={["iron-gear-wheel"]=1, ["science.science1"]=1},
	["science-pack-2"]={["basic-inserter"]=1, ["basic-transport-belt"]=1, ["science.science2"]=1},
	["science-pack-3"]={["battery"]=1, ["advanced-circuit"]=1, ["smart-inserter"]=1, ["science.science3"]=1},
	["alien-science-pack"]={["science.alienscience"]=1},
	["lab"]={["electronic-circuit"]=10, ["iron-gear-wheel"]=10, ["basic-transport-belt"]=4, ["science.lab"]=1},
	["red-wire"]={["electronic-circuit"]=1, ["copper-cable"]=1, ["intermediates.wirered"]=1},
	["green-wire"]={["electronic-circuit"]=1, ["copper-cable"]=1, ["intermediates.wiregreen"]=1},
	["basic-transport-belt-to-ground"]={["basic-transport-belt"]=5, ["transport.underbelt1"]=1},
	["fast-transport-belt-to-ground"]={["iron-gear-wheel"]=20, ["basic-transport-belt-to-ground"]=2, ["transport.underbelt2"]=1},
	["express-transport-belt-to-ground"]={["iron-gear-wheel"]=40, ["fast-transport-belt-to-ground"]=2, ["transport.underbelt3"]=1},
	["basic-splitter"]={["electronic-circuit"]=5, ["basic-transport-belt"]=4, ["transport.splitter1"]=1},
	["fast-splitter"]={["electronic-circuit"]=10, ["iron-gear-wheel"]=10, ["fast-transport-belt"]=4, ["transport.splitter2"]=1},
	["express-splitter"]={["advanced-circuit"]=10, ["iron-gear-wheel"]=10, ["express-transport-belt"]=4, ["transport.splitter3"]=1},
	["advanced-circuit"]={["electronic-circuit"]=2, ["plastic-bar"]=2, ["copper-cable"]=4, ["intermediates.circuit2"]=1},
	["processing-unit"]={["electronic-circuit"]=20, ["advanced-circuit"]=2, ["intermediates.circuit3"]=1},
	["logistic-robot"]={["flying-robot-frame"]=1, ["advanced-circuit"]=2, ["logistics.robot1"]=1},
	["construction-robot"]={["flying-robot-frame"]=1, ["electronic-circuit"]=2, ["logistics.robot1"]=1},
	["logistic-chest-passive-provider"]={["smart-chest"]=1, ["advanced-circuit"]=1, ["logistics.chest1"]=1},
	["logistic-chest-active-provider"]={["smart-chest"]=1, ["advanced-circuit"]=1, ["logistics.chest1"]=1},
	["logistic-chest-requester"]={["smart-chest"]=1, ["advanced-circuit"]=1, ["logistics.chest1"]=1},
	["logistic-chest-storage"]={["smart-chest"]=1, ["advanced-circuit"]=1, ["logistics.chest1"]=1},
	["rocket-defense"]={["rocket"]=100, ["advanced-circuit"]=128, ["processing-unit"]=128, ["speed-module-3"]=50, ["productivity-module-3"]=50, ["others.rocketdefense"]=1},
	["roboport"]={["iron-gear-wheel"]=45, ["advanced-circuit"]=45, ["logistics.port1"]=1},
	["steel-axe"]={["iron-stick"]=2, ["tools.steel"]=1},
	["big-electric-pole"]={["energy.largepole"]=1},
	["substation"]={["advanced-circuit"]=5, ["energy.substation"]=1},
	["medium-electric-pole"]={["energy.mediumpole"]=1},
	["basic-accumulator"]={["battery"]=5, ["energy.accu1"]=1},
	["steel-furnace"]={["furnaces.steel"]=1},
	["electric-furnace"]={["advanced-circuit"]=5, ["furnaces.electric"]=1},
	["basic-beacon"]={["electronic-circuit"]=20, ["advanced-circuit"]=20, ["copper-cable"]=10, ["others.beacon"]=1},
	["blueprint"]={["advanced-circuit"]=1, ["logistics.blueprint"]=1},
	["deconstruction-planner"]={["advanced-circuit"]=1, ["logistics.deconstruct"]=1},
	["pumpjack"]={["iron-gear-wheel"]=10, ["electronic-circuit"]=10, ["pipe"]=10, ["crafters.pumpjack"]=1},
	["oil-refinery"]={["iron-gear-wheel"]=10, ["electronic-circuit"]=10, ["pipe"]=10, ["crafters.refinery"]=1},
	["engine-unit"]={["iron-gear-wheel"]=1, ["pipe"]=2, ["intermediates.engine1"]=1},
	["electric-engine-unit"]={["engine-unit"]=1, ["electronic-circuit"]=2, ["intermediates.engine2"]=1},
	["flying-robot-frame"]={["electric-engine-unit"]=1, ["battery"]=2, ["electronic-circuit"]=3, ["intermediates.robotframe"]=1},
	["explosives"]={["intermediates.explosives"]=1},
	["battery"]={["intermediates.battery"]=1},
	["storage-tank"]={["transport.tank1"]=1},
	["small-pump"]={["electric-engine-unit"]=1, ["pipe"]=1, ["transport.pump1"]=1},
	["chemical-plant"]={["pipe"]=5, ["iron-gear-wheel"]=5, ["electronic-circuit"]=5, ["crafters.chemical"]=1},
	["small-plane"]={["plastic-bar"]=120, ["advanced-circuit"]=250, ["electric-engine-unit"]=20, ["battery"]=150, ["others.plane"]=1},
	-- DyTech Core --
	["advanced-processing-unit"]={["processing-unit"]=5, ["bundled-wire"]=5, ["intermediates.circuit4"]=1},
	["bundled-wire"]={["red-wire"]=1, ["green-wire"]=1, ["copper-cable"]=1, ["intermediates.bundledwire"]=1},
	["rubber-seed"]={["nature.rubberseed"]=1},
	["stone-gear-wheel"]={["intermediates.gear1"]=1},
	["steel-gear-wheel"]={["intermediates.gear3"]=1},
	-- DyTech Compatibility --
	-- DyTech Dynamic --
	-- DyTech Energy --
	["boiler-mk2"]={["boiler"]=1, ["advanced-circuit"]=2, ["energy.boiler2"]=1},
	["boiler-mk3"]={["boiler-mk2"]=1, ["advanced-circuit"]=10, ["energy.boiler3"]=1},
	["boiler-mk4"]={["boiler-mk3"]=1, ["advanced-processing-unit"]=12, ["energy.boiler4"]=1},
	["boiler-mk5"]={["boiler-mk4"]=1, ["advanced-processing-unit"]=40, ["energy.boiler5"]=1},
	["small-pump-mk2"]={["small-pump"]=1, ["electric-engine-unit"]=1, ["pipe-mk2"]=1, ["transport.pump2"]=1},
	["small-pump-mk3"]={["small-pump-mk2"]=1, ["electric-engine-unit"]=1, ["pipe-mk3"]=1, ["transport.pump3"]=1},
	["small-pump-mk4"]={["small-pump-mk3"]=1, ["electric-engine-unit"]=1, ["pipe-mk4"]=1, ["transport.pump4"]=1},
	["small-pump-mk5"]={["small-pump-mk4"]=1, ["electric-engine-unit"]=1, ["pipe-mk5"]=1, ["transport.pump5"]=1},
	["pipe-mk2"]={["pipe"]=1, ["transport.pipe2"]=1},
	["pipe-mk3"]={["pipe-mk2"]=1, ["transport.pipe3"]=1},
	["pipe-mk4"]={["pipe-mk3"]=1, ["transport.pipe4"]=1},
	["pipe-mk5"]={["pipe-mk4"]=1, ["transport.pipe5"]=1},
	["pipe-to-ground-mk2"]={["pipe-to-ground"]=1, ["transport.underpipe2"]=1},
	["pipe-to-ground-mk3"]={["pipe-to-ground-mk2"]=1, ["transport.underpipe3"]=1},
	["pipe-to-ground-mk4"]={["pipe-to-ground-mk3"]=1, ["transport.underpipe4"]=1},
	["pipe-to-ground-mk5"]={["pipe-to-ground-mk4"]=1, ["transport.underpipe5"]=1},
	["steam-engine-primary"]={["stone-gear-wheel"]=5, ["pipe"]=5, ["energy.steam1"]=1},
	["steam-engine-primary-mk2"]={["steam-engine-primary"]=1, ["pipe-mk2"]=5, ["electronic-circuit"]=5, ["energy.steam2"]=1},
	["steam-engine-primary-mk3"]={["steam-engine-primary-mk2"]=1, ["pipe-mk3"]=5, ["advanced-circuit"]=5, ["energy.steam3"]=1},
	["steam-engine-primary-mk4"]={["steam-engine-primary-mk3"]=1, ["pipe-mk4"]=5, ["processing-unit"]=5, ["energy.steam4"]=1},
	["steam-engine-primary-mk5"]={["steam-engine-primary-mk4"]=1, ["pipe-mk5"]=5, ["advanced-processing-unit"]=5, ["energy.steam5"]=1},
	["steam-engine-secondary-mk2"]={["steam-engine"]=1, ["pipe-mk2"]=5, ["electronic-circuit"]=5, ["energy.steam2"]=1},
	["steam-engine-secondary-mk3"]={["steam-engine-secondary-mk2"]=1, ["pipe-mk3"]=5, ["advanced-circuit"]=5, ["energy.steam3"]=1},
	["steam-engine-secondary-mk4"]={["steam-engine-secondary-mk3"]=1, ["pipe-mk4"]=5, ["processing-unit"]=5, ["energy.steam4"]=1},
	["steam-engine-secondary-mk5"]={["steam-engine-secondary-mk4"]=1, ["pipe-mk5"]=5, ["advanced-processing-unit"]=5, ["energy.steam5"]=1},
	["steam-engine-terciary"]={["stone-gear-wheel"]=5, ["pipe"]=5, ["energy.steam1"]=1},
	["steam-engine-terciary-mk2"]={["steam-engine-terciary"]=1, ["pipe-mk2"]=5, ["electronic-circuit"]=5, ["energy.steam2"]=1},
	["steam-engine-terciary-mk3"]={["steam-engine-terciary-mk2"]=1, ["pipe-mk3"]=5, ["advanced-circuit"]=5, ["energy.steam3"]=1},
	["steam-engine-terciary-mk4"]={["steam-engine-terciary-mk3"]=1, ["pipe-mk4"]=5, ["processing-unit"]=5, ["energy.steam4"]=1},
	["steam-engine-terciary-mk5"]={["steam-engine-terciary-mk4"]=1, ["pipe-mk5"]=5, ["advanced-processing-unit"]=5, ["energy.steam5"]=1},
	["solar-panel-secondary"]={["electronic-circuit"]=15, ["energy.solar1"]=1},
	["solar-panel-primary-mk2"]={["solar-panel"]=1, ["advanced-circuit"]=15, ["energy.solar2"]=1},
	["solar-panel-secondary-mk2"]={["solar-panel-secondary"]=1, ["advanced-circuit"]=15, ["energy.solar2"]=1},
	["solar-panel-primary-mk3"]={["solar-panel-primary-mk2"]=1, ["processing-unit"]=15, ["energy.solar3"]=1},
	["solar-panel-secondary-mk3"]={["solar-panel-secondary-mk2"]=1, ["processing-unit"]=15, ["energy.solar3"]=1},
	["solar-panel-primary-mk4"]={["solar-panel-primary-mk3"]=1, ["advanced-processing-unit"]=15, ["energy.solar4"]=1},
	["solar-panel-secondary-mk4"]={["solar-panel-secondary-mk3"]=1, ["advanced-processing-unit"]=15, ["energy.solar4"]=1},
	["solar-panel-primary-mk5"]={["solar-panel-primary-mk4"]=1, ["advanced-processing-unit"]=45, ["energy.solar5"]=1},
	["solar-panel-secondary-mk5"]={["solar-panel-secondary-mk4"]=1, ["advanced-processing-unit"]=45, ["energy.solar5"]=1},
	["basic-accumulator-mk2"]={["basic-accumulator"]=1, ["battery"]=5, ["advanced-circuit"]=5, ["energy.accu2"]=1},
	["basic-accumulator-mk3"]={["basic-accumulator"]=1, ["battery"]=5, ["advanced-circuit"]=5, ["energy.accu3"]=1},
	["basic-accumulator-mk4"]={["basic-accumulator-mk2"]=1, ["battery"]=10, ["processing-unit"]=5, ["energy.accu4"]=1},
	["basic-accumulator-mk5"]={["basic-accumulator-mk3"]=1, ["battery"]=10, ["processing-unit"]=5, ["energy.accu5"]=1},
	["basic-accumulator-mk6"]={["basic-accumulator-mk4"]=1, ["basic-accumulator-mk5"]=1, ["battery"]=110, ["advanced-processing-unit"]=25, ["energy.accu6"]=1},
	["offshore-pump-mk2"]={["offshore-pump"]=1, ["pipe-mk2"]=1, ["iron-gear-wheel"]=1, ["transport.pump2"]=1},
	["offshore-pump-mk3"]={["offshore-pump-mk2"]=1, ["pipe-mk3"]=1, ["iron-gear-wheel"]=4, ["transport.pump3"]=1},
	["offshore-pump-mk4"]={["offshore-pump-mk3"]=1, ["pipe-mk4"]=1, ["steel-gear-wheel"]=1, ["transport.pump4"]=1},
	["offshore-pump-mk5"]={["offshore-pump-mk4"]=1, ["pipe-mk5"]=1, ["steel-gear-wheel"]=4, ["transport.pump5"]=1},
	-- DyTech Inserters --
	["inserter-half"]={["electronic-circuit"]=1, ["iron-gear-wheel"]=1, ["inserters.half"]=1, ["inserters.basic"]=1},
	["inserter-long"]={["basic-inserter"]=1, ["electronic-circuit"]=2, ["inserters.long"]=1},
	["inserter-half-long"]={["basic-inserter"]=1, ["electronic-circuit"]=2, ["inserters.long"]=1, ["inserters.half"]=1},
	["inserter-fast-half"]={["basic-inserter"]=1, ["electronic-circuit"]=2, ["inserters.half"]=1},
	["inserter-veryfast"]={["basic-inserter"]=1, ["electronic-circuit"]=2, ["inserters.veryfast"]=1},
	["inserter-veryfast-half"]={["basic-inserter"]=1, ["electronic-circuit"]=2, ["inserters.veryfast"]=1, ["inserters.half"]=1},
	["inserter-half-filter"]={["inserter-half"]=1, ["advanced-circuit"]=1},
	["inserter-long-filter"]={["inserter-long"]=1, ["advanced-circuit"]=2},
	["inserter-long-half-filter"]={["inserter-long"]=1, ["advanced-circuit"]=2},
	["inserter-fast-half-filter"]={["inserter-long"]=1, ["advanced-circuit"]=2},
	["inserter-veryfast-filter"]={["inserter-long"]=1, ["advanced-circuit"]=2},
	["inserter-veryfast-half-filter"]={["inserter-long"]=1, ["advanced-circuit"]=2},
	["inserter-half-smart"]={["processing-unit"]=6, ["inserter-half-filter"]=1},
	["inserter-long-smart"]={["processing-unit"]=8, ["inserter-long-filter"]=1},
	["inserter-long-half-smart"]={["processing-unit"]=8, ["inserter-long-filter"]=1},
	["inserter-fast-half-smart"]={["processing-unit"]=10, ["inserter-long-filter"]=1},
	["inserter-veryfast-smart"]={["processing-unit"]=10, ["inserter-long-filter"]=1},
	["inserter-veryfast-half-smart"]={["processing-unit"]=10, ["inserter-long-filter"]=1},
	["dytech-inserter"]={["iron-gear-wheel"]=10, ["advanced-processing-unit"]=10},
	["dytech-inserter-fast"]={["advanced-processing-unit"]=25, ["steel-gear-wheel"]=25},
	["long-handed-inserter-filter"]={["iron-gear-wheel"]=1, ["advanced-circuit"]=2, ["basic-inserter"]=1},
	-- DyTech Logistic --
	["logistic-robot-1"]={["processing-unit"]=5, ["logistic-robot"]=1, ["logistics.robot2"]=1},
	["logistic-robot-2"]={["advanced-processing-unit"]=5, ["logistic-robot-1"]=1, ["logistics.robot3"]=1},
	["logistic-chest-passive-provider-1"]={["processing-unit"]=5, ["logistic-chest-passive-provider"]=1, ["logistics.chest2"]=1},
	["logistic-chest-passive-provider-2"]={["advanced-processing-unit"]=5, ["logistic-chest-passive-provider-1"]=1, ["logistics.chest3"]=1},
	["logistic-chest-active-provider-1"]={["processing-unit"]=5, ["logistic-chest-active-provider"]=1, ["logistics.chest2"]=1},
	["logistic-chest-active-provider-2"]={["advanced-processing-unit"]=5, ["logistic-chest-active-provider-1"]=1, ["logistics.chest3"]=1},
	["logistic-chest-storage-1"]={["processing-unit"]=5, ["logistic-chest-storage"]=1, ["logistics.chest2"]=1},
	["logistic-chest-storage-2"]={["advanced-processing-unit"]=5, ["logistic-chest-storage-1"]=1, ["logistics.chest3"]=1},
	["logistic-chest-requester-1"]={["processing-unit"]=5, ["logistic-chest-requester"]=1, ["logistics.chest2"]=1},
	["logistic-chest-requester-2"]={["advanced-processing-unit"]=5, ["logistic-chest-requester-1"]=1, ["logistics.chest3"]=1},
	["roboport-1"]={["steel-gear-wheel"]=45, ["processing-unit"]=45, ["logistics.port3"]=1},
	["roboport-2"]={["steel-gear-wheel"]=90, ["advanced-processing-unit"]=45, ["logistics.port3"]=1},
	["construction-robot-1"]={["advanced-processing-unit"]=5, ["construction-robot"]=1, ["logistics.robot2"]=1},
	["construction-robot-2"]={["advanced-processing-unit"]=5, ["construction-robot-1"]=1, ["logistics.robot3"]=1},
	["repair-pack-0"]={["wood"]=1, ["logistics.repair1"]=1},
	["repair-pack-2"]={["processing-unit"]=1, ["iron-gear-wheel"]=1, ["logistics.repair3"]=1},
	["stone-collector"]={["processing-unit"]=1, ["others.collectors"]=1},
	["sand-collector"]={["processing-unit"]=1, ["others.collectors"]=1},
	["coal-collector"]={["processing-unit"]=1, ["others.collectors"]=1},
	-- DyTech Metallurgy --
	["empty-temptyungsten-barrel"]={["others.barrel"]=1},
	["metallurgy-machine-gear"]={["crafters.molds"]=1},
	["metallurgy-machine-wire"]={["crafters.molds"]=1},
	["metallurgy-machine-circuit"]={["crafters.molds"]=1},
	["metallurgy-machine-tools"]={["crafters.molds"]=1},
	["metallurgy-machine-ammo-basic"]={["crafters.molds"]=1},
	["metallurgy-machine-ammo-advanced"]={["crafters.molds"]=1},
	["brass-gear-wheel"]={["intermediates.gearmetallurgy"]=1},
	["copper-tungsten-gear-wheel"]={["intermediates.gearmetallurgy"]=1},
	["tungsten-gear-wheel"]={["intermediates.gearmetallurgy"]=1},
	["pipe-mainline"]={["transport.pipebig"]=1},
	["pump-to-mainline"]={["transport.pumpbig"]=1},
	["pump-from-mainline"]={["transport.pumpbig"]=1},
	["pump-inline-mainline"]={["transport.pumpbig"]=1},
	["mold-gear"]={["stone-gear-wheel"]=5, ["iron-gear-wheel"]=5, ["steel-gear-wheel"]=5},
	["mold-wire"]={["copper-cable"]=5},
	["mold-circuit"]={["electronic-circuit"]=5},
	["mold-ammo-basic"]={["basic-bullet-magazine"]=5},
	["mold-ammo-advanced"]={["piercing-bullet-magazine"]=5},
	["mold-tool"]={["steel-axe"]=2},
	["blast-furnace"]={["advanced-circuit"]=10, ["furnaces.blastfurnace"]=1},
	["forge"]={["electronic-circuit"]=25, ["steel-gear-wheel"]=9, ["furnaces.forge"]=1},
	["air-intake"]={["copper-cable"]=10, ["crafters.airintake"]=1},
	["centrifuge"]={["steel-gear-wheel"]=25, ["copper-cable"]=10, ["crafters.centrifuge"]=1},
	["geothermal-extractor"]={["iron-gear-wheel"]=10, ["electronic-circuit"]=10, ["pipe"]=10, ["crafters.geothermal"]=1},
	["lava-handler"]={["boiler"]=2, ["steel-gear-wheel"]=5, ["advanced-circuit"]=8, ["pipe"]=8, ["crafters.lavahandler"]=1},
	-- DyTech Meteors --
	-- DyTech Mining --
	["basic-mining-drill-mk2"]={["basic-mining-drill"]=1, ["rotor1"]=2, ["item-exit1"]=1, ["frame1"]=1, ["miners.basic2"]=1},
	["basic-mining-drill-mk3"]={["basic-mining-drill-mk2"]=1, ["rotor2"]=2, ["item-exit2"]=1, ["frame2"]=1, ["miners.basic3"]=1},
	["basic-mining-drill-mk4"]={["basic-mining-drill-mk3"]=1, ["rotor3"]=2, ["item-exit3"]=2, ["frame3"]=1, ["miners.basic4"]=1},
	["basic-mining-drill-mk5"]={["basic-mining-drill-mk4"]=1, ["rotor4"]=2, ["item-exit4"]=4, ["frame4"]=1, ["miners.basic5"]=1},
	["basic-mining-drill-mk6"]={["basic-mining-drill-mk5"]=3, ["advanced-processing-unit"]=250, ["miners.basic6"]=1},
	["frame1"]={["iron-stick"]=30, ["electronic-circuit"]=15, ["intermediates.frames"]=1},
	["frame2"]={["frame1"]=1, ["advanced-circuit"]=5, ["intermediates.frames"]=1},
	["frame3"]={["frame2"]=1, ["advanced-circuit"]=15, ["processing-unit"]=18, ["copper-cable"]=20, ["intermediates.frames"]=1},
	["frame4"]={["frame3"]=1, ["advanced-processing-unit"]=10, ["bundled-wire"]=50, ["intermediates.frames"]=1},
	["item-exit1"]={["wooden-chest"]=1, ["intermediates.itemexit"]=1},
	["item-exit2"]={["item-exit1"]=1, ["iron-chest"]=1, ["intermediates.itemexit"]=1},
	["item-exit3"]={["item-exit2"]=1, ["steel-chest"]=1, ["bundled-wire"]=10, ["intermediates.itemexit"]=1},
	["item-exit4"]={["item-exit3"]=1, ["advanced-processing-unit"]=5, ["smart-chest"]=1, ["smart-inserter"]=1, ["intermediates.itemexit"]=1},
	["rotor1"]={["blade1"]=3, ["stone-gear-wheel"]=4, ["intermediates.rotors"]=1},
	["rotor2"]={["rotor1"]=1, ["blade2"]=3, ["iron-gear-wheel"]=4, ["intermediates.rotors"]=1},
	["rotor3"]={["rotor2"]=1, ["blade3"]=3, ["steel-gear-wheel"]=4, ["intermediates.rotors"]=1},
	["rotor4"]={["rotor3"]=1, ["blade3"]=9, ["steel-gear-wheel"]=12, ["advanced-circuit"]=5, ["intermediates.rotors"]=1},
	["blade1"]={["wood"]=1, ["iron-stick"]=1, ["intermediates.blades"]=1},
	["blade2"]={["intermediates.blades"]=1},
	["blade3"]={["blade2"]=1, ["intermediates.blades"]=1},
	-- DyTech Modules --
	["pollution-clean-module-1"]={["electronic-circuit"]=5, ["modules.poll1"]=1},
	["pollution-create-module-1"]={["electronic-circuit"]=5, ["modules.poll1"]=1},
	["pollution-clean-module-2"]={["electronic-circuit"]=5, ["pollution-clean-module-1"]=1, ["modules.poll2"]=1},
	["pollution-create-module-2"]={["electronic-circuit"]=5, ["pollution-create-module-1"]=1, ["modules.poll2"]=1},
	["pollution-clean-module-3"]={["electronic-circuit"]=5, ["advanced-circuit"]=5, ["pollution-clean-module-2"]=1, ["modules.poll3"]=1},
	["pollution-create-module-3"]={["electronic-circuit"]=5, ["advanced-circuit"]=5, ["pollution-create-module-2"]=1, ["modules.poll3"]=1},
	["pollution-clean-module-4"]={["advanced-circuit"]=5, ["pollution-clean-module-3"]=1, ["modules.poll4"]=1},
	["pollution-create-module-4"]={["advanced-circuit"]=5, ["pollution-create-module-3"]=1, ["modules.poll4"]=1},
	["speed-module-4"]={["advanced-circuit"]=5, ["speed-module-3"]=1, ["modules.speed4"]=1},
	["effectivity-module-4"]={["advanced-circuit"]=5, ["effectivity-module-3"]=1, ["modules.effect4"]=1},
	["productivity-module-4"]={["advanced-circuit"]=5, ["productivity-module-3"]=1, ["modules.prod4"]=1},
	["pollution-clean-module-5"]={["processing-unit"]=5, ["pollution-clean-module-4"]=1, ["modules.poll5"]=1},
	["pollution-create-module-5"]={["processing-unit"]=5, ["pollution-create-module-4"]=1, ["modules.poll5"]=1},
	["speed-module-5"]={["processing-unit"]=5, ["speed-module-4"]=1, ["modules.speed5"]=1},
	["effectivity-module-5"]={["processing-unit"]=5, ["effectivity-module-4"]=1, ["modules.effect5"]=1},
	["productivity-module-5"]={["processing-unit"]=5, ["productivity-module-4"]=1, ["modules.prod5"]=1},
	["pollution-clean-module-6"]={["processing-unit"]=5, ["pollution-clean-module-5"]=1, ["modules.poll6"]=1},
	["pollution-create-module-6"]={["processing-unit"]=5, ["pollution-create-module-5"]=1, ["modules.poll6"]=1},
	["speed-module-6"]={["processing-unit"]=5, ["speed-module-5"]=1, ["modules.speed6"]=1},
	["effectivity-module-6"]={["processing-unit"]=5, ["effectivity-module-5"]=1, ["modules.effect6"]=1},
	["productivity-module-6"]={["processing-unit"]=5, ["productivity-module-5"]=1, ["modules.prod6"]=1},
	["pollution-clean-module-7"]={["processing-unit"]=5, ["advanced-processing-unit"]=5, ["pollution-clean-module-6"]=1, ["modules.poll7"]=1},
	["pollution-create-module-7"]={["processing-unit"]=5, ["advanced-processing-unit"]=5, ["pollution-create-module-6"]=1, ["modules.poll7"]=1},
	["speed-module-7"]={["processing-unit"]=5, ["advanced-processing-unit"]=5, ["speed-module-6"]=1, ["modules.speed7"]=1},
	["effectivity-module-7"]={["processing-unit"]=5, ["advanced-processing-unit"]=5, ["effectivity-module-6"]=1, ["modules.effect7"]=1},
	["productivity-module-7"]={["processing-unit"]=5, ["advanced-processing-unit"]=5, ["productivity-module-6"]=1, ["modules.prod7"]=1},
	["pollution-clean-module-8"]={["advanced-processing-unit"]=25, ["pollution-clean-module-7"]=1, ["modules.poll8"]=1},
	["pollution-create-module-8"]={["advanced-processing-unit"]=25, ["pollution-create-module-7"]=1, ["modules.poll8"]=1},
	["speed-module-8"]={["advanced-processing-unit"]=25, ["speed-module-7"]=1, ["modules.speed8"]=1},
	["effectivity-module-8"]={["advanced-processing-unit"]=25, ["effectivity-module-7"]=1, ["modules.effect8"]=1},
	["productivity-module-8"]={["advanced-processing-unit"]=25, ["productivity-module-7"]=1, ["modules.prod8"]=1},
	-- DyTech Storage --
	["stone-collector-1"]={["others.collectors"]=1},
	["sand-collector-1"]={["others.collectors"]=1},
	["coal-collector-1"]={["others.collectors"]=1},
	["wooden-chest-medium"]={["wood"]=16, ["chests.wood"]=1},
	["wooden-chest-big"]={["wood"]=36, ["chests.wood"]=1},
	["steel-chest-medium"]={["chests.steel"]=1},
	["steel-chest-big"]={["chests.steel"]=1},
	["iron-chest-medium"]={["chests.iron"]=1},
	["iron-chest-big"]={["chests.iron"]=1},
	-- DyTech Tools --
	["wooden-axe"]={["wood"]=4, ["tools.wooden"]=1},
	["stone-axe"]={["wood"]=2, ["tools.stone"]=1},
	["copper-axe"]={["iron-stick"]=2, ["tools.copper"]=1},
	["advanced-steel-axe"]={["iron-stick"]=2, ["tools.advsteel"]=1},
	["ruby-axe"]={["iron-stick"]=2, ["tools.ruby"]=1},
	["sapphire-axe"]={["iron-stick"]=2, ["tools.sapphire"]=1},
	["emerald-axe"]={["iron-stick"]=2, ["tools.emerald"]=1},
	["topaz-axe"]={["iron-stick"]=2, ["tools.topaz"]=1},
	["diamond-axe"]={["iron-stick"]=2, ["tools.diamond"]=1},
	["brass-axe"]={["iron-stick"]=2, ["tools.metallurgy"]=1},
	["bronze-axe"]={["iron-stick"]=2, ["tools.metallurgy"]=1},
	["gold-axe"]={["iron-stick"]=2, ["tools.metallurgy"]=1},
	["silver-axe"]={["iron-stick"]=2, ["tools.metallurgy"]=1},
	["tin-axe"]={["iron-stick"]=2, ["tools.metallurgy"]=1},
	["tungsten-axe"]={["iron-stick"]=2, ["tools.metallurgy"]=1},
	-- DyTech Transportation --
	["super-transport-belt"]={["steel-gear-wheel"]=2, ["express-transport-belt"]=1, ["transport.belt4"]=1},
	["super-transport-belt-to-ground"]={["super-transport-belt"]=6, ["transport.underbelt4"]=1},
	["super-splitter"]={["advanced-processing-unit"]=4, ["steel-gear-wheel"]=10, ["super-transport-belt"]=2, ["transport.splitter4"]=1},
	["extreme-transport-belt"]={["advanced-processing-unit"]=1, ["steel-gear-wheel"]=5, ["super-transport-belt"]=1, ["transport.belt5"]=1},
	["extreme-transport-belt-to-ground"]={["extreme-transport-belt"]=6, ["transport.underbelt5"]=1},
	["extreme-splitter"]={["advanced-processing-unit"]=10, ["steel-gear-wheel"]=20, ["extreme-transport-belt"]=2, ["transport.splitter5"]=1},
	["car2"]={["advanced-processing-unit"]=2, ["iron-stick"]=12, ["transport.car2"]=1},
	["diesel-locomotive-armor"]={["steel-gear-wheel"]=20, ["advanced-circuit"]=5, ["transport.diesel2"]=1},
	["diesel-locomotive-fast"]={["steel-gear-wheel"]=10, ["advanced-processing-unit"]=5, ["transport.diesel3"]=1},
	["cargo-wagon-armor"]={["steel-gear-wheel"]=10, ["transport.wagon2"]=1},
	["cargo-wagon-fast"]={["steel-gear-wheel"]=10, ["transport.wagon3"]=1},
	["cargo-wagon-large"]={["steel-gear-wheel"]=10, ["transport.wagon4"]=1},
	-- DyTech Warfare --
	["alien-artifact"]={["others.alien"]=1},
	["sniper"]={["electronic-circuit"]=2, ["advanced-circuit"]=2, ["guns.sniper"]=1},
	["gem-crusher"]={["steel-gear-wheel"]=5, ["assembling-machine-3"]=1, ["crafters.gem1"]=1},
	["gem-grinder"]={["assembling-machine-2"]=2, ["steel-gear-wheel"]=5, ["crafters.gem2"]=1},
	["gem-polisher"]={["assembling-machine-3"]=2, ["crafters.gem4"]=1},
	["compressor"]={["assembling-machine-2"]=2, ["crafters.gem3"]=1},
	["power-armor-mk3"]={["effectivity-module-3"]=56, ["power-armor-mk2"]=2, ["speed-module-3"]=30, ["armor.modular4"]=1},
	["basic-mining-drill-gem"]={["basic-mining-drill"]=1, ["miners.gems"]=1},
	["basic-laser-defense-equipment-2"]={["speed-module-3"]=2, ["laser-turret-5"]=5, ["armor.laser2"]=1},
	["basic-laser-defense-equipment-3"]={["speed-module-3"]=8, ["laser-turret-8"]=5, ["armor.laser3"]=1},
	["sniper-magazine"]={["ammo.sniper"]=1},
	["sniper-turret"]={["sniper"]=1, ["advanced-circuit"]=25, ["advanced-processing-unit"]=5, ["turrets.sniper"]=1},
	["laser-turret-2"]={["battery"]=6, ["stone-gear-wheel"]=10, ["electronic-circuit"]=10, ["turrets.laser2"]=1},
	["laser-turret-3"]={["battery"]=12, ["stone-gear-wheel"]=20, ["electronic-circuit"]=20, ["turrets.laser3"]=1},
	["laser-turret-4"]={["battery"]=3, ["advanced-circuit"]=5, ["steel-gear-wheel"]=5, ["turrets.laser4"]=1},
	["laser-turret-5"]={["battery"]=6, ["advanced-circuit"]=10, ["steel-gear-wheel"]=10, ["turrets.laser5"]=1},
	["laser-turret-6"]={["battery"]=12, ["advanced-circuit"]=20, ["steel-gear-wheel"]=20, ["turrets.laser6"]=1},
	["laser-turret-7"]={["battery"]=3, ["advanced-processing-unit"]=5, ["steel-gear-wheel"]=5, ["turrets.laser7"]=1},
	["laser-turret-8"]={["battery"]=6, ["advanced-processing-unit"]=10, ["steel-gear-wheel"]=10, ["turrets.laser8"]=1},
	["laser-turret-9"]={["battery"]=12, ["advanced-processing-unit"]=20, ["steel-gear-wheel"]=20, ["turrets.laser9"]=1},
	["laser-turret-sniper-1"]={["battery"]=12, ["electronic-circuit"]=20, ["steel-gear-wheel"]=20, ["turrets.laser10"]=1},
	["laser-turret-sniper=2"]={["battery"]=12, ["advanced-circuit"]=20, ["steel-gear-wheel"]=20, ["turrets.laser11"]=1},
	["laser-turret-sniper=3"]={["battery"]=12, ["advanced-processing-unit"]=20, ["steel-gear-wheel"]=20, ["turrets.laser12"]=1},
}