extends CenterContainer

@onready var start_game_button: Button = %StartGameButton
@onready var quit_game_button: Button = %QuitGameButton

func _ready():
	RenderingServer.set_default_clear_color("black")
	start_game_button.grab_focus( )


func _on_start_game_button_pressed() -> void:
	await LevelTransition.fade_to_black()
	get_tree().change_scene_to_file("res://level_1.tscn")
	LevelTransition.fade_from_black()


func _on_quit_game_button_pressed() -> void:
	get_tree().quit()
