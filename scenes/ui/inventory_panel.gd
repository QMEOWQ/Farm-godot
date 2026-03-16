extends PanelContainer

@onready var log_label: Label = $MarginContainer/VBoxContainer/TreeLogs/TreeLogLabel
@onready var stone_label: Label = $MarginContainer/VBoxContainer/Stones/StoneLabel
@onready var corn_label: Label = $MarginContainer/VBoxContainer/Corns/CornLabel
@onready var tomato_label: Label = $MarginContainer/VBoxContainer/Tomatos/TomatoLabel
@onready var egg_label: Label = $MarginContainer/VBoxContainer/Eggs/EggLabel
@onready var milk_label: Label = $MarginContainer/VBoxContainer/Milk/MilkLabel

func _ready() -> void:
	InventoryManager.inventory_changed.connect(on_inventory_changed)

func on_inventory_changed() -> void:
	var inventory = InventoryManager.inventory

	if inventory.has("tree_log"):
		log_label.text = str(inventory["tree_log"])
	
	if inventory.has("stone"):
		stone_label.text = str(inventory["stone"])
		
	if inventory.has("corn_harvest"):
		corn_label.text = str(inventory["corn_harvest"])
		
	if inventory.has("tomato_harvest"):
		tomato_label.text = str(inventory["tomato_harvest"])
		
	if inventory.has("egg"):
		egg_label.text = str(inventory["egg"])
	
	if inventory.has("milk"):
		milk_label.text = str(inventory["milk"])