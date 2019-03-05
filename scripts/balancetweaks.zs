# BEGIN SCRIPT
print("Sephs Modpack Balance Adjustment Script Loaded");
print("Initialising variables...");
var iron = <minecraft:iron_ingot>;
print("Iron... OK!");
var stone1 = <minecraft:stone>;
var stone2 = <minecraft:cobblestone>;
print("Stone... OK!");
var wood = <ore:plankWood>;
print("Wood... OK!");

# DISABLE SOME VANILLA RECIPES
print("Removing Vanilla Iron/Gold/Diamond tools and armor recipes...");
recipes.remove(<minecraft:diamond_pickaxe>);
recipes.remove(<minecraft:diamond_axe>);
recipes.remove(<minecraft:diamond_shovel>);
recipes.remove(<minecraft:diamond_sword>);
recipes.remove(<minecraft:diamond_helmet>);
recipes.remove(<minecraft:diamond_chestplate>);
recipes.remove(<minecraft:diamond_leggings>);
recipes.remove(<minecraft:diamond_boots>);
recipes.remove(<minecraft:iron_helmet>);
recipes.remove(<minecraft:iron_chestplate>);
recipes.remove(<minecraft:iron_leggings>);
recipes.remove(<minecraft:iron_boots>);
recipes.remove(<minecraft:golden_helmet>);
recipes.remove(<minecraft:golden_chestplate>);
recipes.remove(<minecraft:golden_leggings>);
recipes.remove(<minecraft:golden_boots>);

# DISABLE SLIME BOOTS RECIPES
print("Removing Slime Boots recipes...");
recipes.remove(<tconstruct:slime_boots:*>);

print("Recipes removed!");

# ADD SPONGE EXCHANGE RECIPE (from OpenBlocks to Vanilla)
print("Adding Sponge Exchange Recipe...");
recipes.addShapeless(<minecraft:sponge>, [<openblocks:sponge>]);

print("OpenBlocks to Minecraft Sponge exchange now available!");

# FIX STONE SWORD RECIPE (removed by another mod)
print("Applying Vanilla Stone Sword Fix...");
recipes.remove(<minecraft:stone_sword>);
recipes.addShaped(<minecraft:stone_sword>,
 [[null, stone1, null],
  [null, stone1, null],
  [null, <minecraft:stick>, null]]);
recipes.addShaped(<minecraft:stone_sword>,
 [[null, stone2, null],
  [null, stone2, null],
  [null, <minecraft:stick>, null]]);
  
  print("Recipe fixed!");

# ADD CHAINMAIL RECIPES TO COMPENSATE
print("Creating Vanilla Chainmail armor recipes...");
recipes.addShaped(<minecraft:chainmail_chestplate>,
 [[iron, null, iron],
  [wood, iron, wood],
  [wood, iron, wood]]);
recipes.addShaped(<minecraft:chainmail_leggings>,
 [[wood, wood, wood],
  [iron, null, iron],
  [iron, null, iron]]);
recipes.addShaped(<minecraft:chainmail_helmet>,
 [[null, null, null],
  [wood, iron, wood],
  [iron, wood, iron]]);
recipes.addShaped(<minecraft:chainmail_boots>,
 [[null, null, null],
  [wood, null, wood],
  [iron, null, iron]]);
  
print("Recipes added!");

# MODIFY SHIELD RECIPE
print("Modifying Vanilla Shield recipe...");
recipes.remove(<minecraft:shield>);
recipes.addShaped(<minecraft:shield>,
 [[iron, wood, iron],
  [iron, wood, iron],
  [iron, wood, iron]]);

print("Shield recipe modified!");

# MODIFY QUARRY RECIPE (BuildCraft) - Changes required Pickaxe and Cogs due to non-craftable tools.
print("Modifying BuildCraft Quarry recipe...");
recipes.remove(<buildcraftbuilders:quarry>);
recipes.addShaped(<buildcraftbuilders:quarry>,
 [[<buildcraftcore:gear_iron>, <minecraft:redstone>, <buildcraftcore:gear_iron>],
  [<buildcraftcore:gear_diamond>, <buildcraftcore:gear_gold>, <buildcraftcore:gear_diamond>],
  [<buildcraftcore:gear_gold>, <minecraft:iron_pickaxe>, <buildcraftcore:gear_gold>]]);

print("Quarry recipe modified!");

# END SCRIPT
print("Sephs Modpack Balance Adjustment Script Completed!");