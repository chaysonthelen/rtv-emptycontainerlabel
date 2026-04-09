extends "res://Scripts/LootContainer.gd"

var searched = false
var isCabin = false
var current_scene: Node

func _ready():
    super()

    current_scene = get_tree().current_scene
    isCabin = current_scene.name == "Cabin"

func Interact():

    if !locked:
        var UIManager = get_tree().current_scene.get_node("/root/Map/Core/UI")
        UIManager.OpenContainer(self)
        ContainerAudio()
        searched = true

func UpdateTooltip():
    if locked:
        gameData.tooltip = containerName + " [Locked]"
    elif isCabin:
        if loot.is_empty() and storage.is_empty():
            gameData.tooltip = containerName + " [Empty]"
        else:
            gameData.tooltip = containerName + " [Open]"
    else:
        if searched and loot.is_empty() and storage.is_empty():
            gameData.tooltip = containerName + " [Empty]"
        else:
            gameData.tooltip = containerName + " [Open]"