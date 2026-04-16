extends AudioStreamPlayer

@export var bpm = 120

var beat := 0.0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	beat = get_playback_position() * bpm / 60
