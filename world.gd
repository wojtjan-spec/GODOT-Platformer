extends Node

@onready var level_completed: ColorRect = $CanvasLayer/LevelCompleted

func _ready():
	RenderingServer.set_default_clear_color("black")
	# Assing viusal polygon to the collision polygon
	Events.level_completed.connect(show_level_completed)
	
func show_level_completed():
	level_completed.show()
	get_tree().paused = true
