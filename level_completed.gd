extends ColorRect

@onready var retry_button: Button = %RetryButton
@onready var next_level_button: Button = %NextLevelButton

signal retry()
signal next_level()

func _on_retry_button_pressed() -> void:
	retry.emit()

func _on_next_level_button_pressed() -> void:
	next_level.emit()
