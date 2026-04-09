extends Node
func _ready():
	var script = load("res://mods/ChaseContainer/LootContainer.gd")
	script.reload() # compile the script
	var parentScript = script.get_base_script()
	script.take_over_path(parentScript.resource_path)