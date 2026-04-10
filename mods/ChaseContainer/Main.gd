extends Node

func _ready() -> void:
	overrideScript("res://mods/ChaseContainer/LootContainer.gd")
	overrideScript("res://mods/ChaseContainer/HUD.gd")

func overrideScript(overrideScriptPath : String):
	var script : Script = load(overrideScriptPath)
	script.reload()
	var parentScript = script.get_base_script()
	script.take_over_path(parentScript.resource_path)