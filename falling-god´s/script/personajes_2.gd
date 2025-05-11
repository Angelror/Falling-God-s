extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var style = StyleBoxTexture.new()
	style.texture = preload("res://Assets/Hoja rota.jpg")
	$Personajes2.add_theme_stylebox_override("panel", style)
	$Personajes2.add_item("Opcion 1", 0)
	$Personajes2.add_item("Opcion 2", 1)
	$Personajes2.add_item("Opcion 3", 2)

func _on_mouse_entered() -> void:
	print("EL mouse entro al area")
	$Personajes2.popup()
