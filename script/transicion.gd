extends CanvasLayer

signal on_trancition_finish

@onready var color_rect = $ColorRect
@onready var animation_play = $AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	color_rect.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	animation_play.play("Fade_in_out")
	await (animation_play.animation_finished)
