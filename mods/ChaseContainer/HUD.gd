extends "res://Scripts/HUD.gd"

func _physics_process(delta):
    super(delta)  # let the full chain run first

    if tooltip.visible:
        label.text = base.replace("FUCK YOU")