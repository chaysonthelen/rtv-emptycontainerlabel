extends "res://Scripts/LootContainer.gd"

var searched = false

func Interact():
    super()
    if !locked:
        searched = true

func UpdateTooltip():
    if locked:
        gameData.tooltip = containerName + " [Locked]"
    else:
        if searched and loot.is_empty() and storage.is_empty():
            gameData.tooltip = containerName + " [Empty]"
        else:
            gameData.tooltip = containerName + " [Open Gay Ass]"