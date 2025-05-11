extends Control




func _button_pressed_menu() -> void:
	get_tree().change_scene_to_file("res://Escenas/sub_menu.tscn")


func _on_quit_pressed() -> void:
	get_tree().quit()
