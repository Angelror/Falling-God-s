extends Control


func _on_quit_pressed() -> void:
	$Play/AnimationPlayer.play("move_left")
	$Quit/AnimationPlayer.play("left")
	$Title/AnimationPlayer.play("title_left")
	await ($Play/AnimationPlayer.animation_finished)
	await ($Quit/AnimationPlayer.animation_finished)
	await ($Title/AnimationPlayer.animation_finished)
	get_tree().quit()


func _on_play_pressed() -> void:
	$Play/AnimationPlayer.play("move_left")
	$Quit/AnimationPlayer.play("left")
	$Title/AnimationPlayer.play("title_left")
	await ($Play/AnimationPlayer.animation_finished)
	await ($Quit/AnimationPlayer.animation_finished)
	await ($Title/AnimationPlayer.animation_finished)
	get_tree().change_scene_to_file("res://Escenas/sub_menu.tscn")
