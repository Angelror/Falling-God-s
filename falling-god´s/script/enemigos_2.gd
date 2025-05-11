extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var style = StyleBoxTexture.new()
	style.texture = preload("res://Assets/Hoja rota.jpg")
	$PopupMenu.add_theme_stylebox_override("panel", style)
	$PopupMenu.add_item("Opcion 1", 0)
	$PopupMenu.add_item("Opcion 2", 1)
	$PopupMenu.add_item("Opcion 3", 2)


func _on_mouse_entered() -> void:
	$PopupMenu.popup()
