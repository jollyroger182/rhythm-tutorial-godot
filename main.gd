extends Node2D

var notes = [
	[2, 7],
	[3, 8],
	[4, 9],
	[5, 10]
]


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	queue_redraw()


func _draw() -> void:
	for i in 5:
		var start = Vector2(100 * i + 200, 0)
		var end = Vector2(100 * i + 200, 720)
		draw_line(start, end, Color.WHITE)
		if i < 4:
			var label_pos = Vector2(100 * (i+0.5) + 200, 620 + 30)
			draw_string(ThemeDB.fallback_font, label_pos, str(i+1), HORIZONTAL_ALIGNMENT_CENTER)
	
	var judge_start = Vector2(200, 620)
	var judge_end = Vector2(100 * 4 + 200, 620)
	draw_line(judge_start, judge_end, Color.WHITE)
	
	for i in 4:
		for note in notes[i]:
			var y = 620 + 100 * ($Conductor.beat - note)
			var start = Vector2(100 * i + 200, y)
			var end = Vector2(100 * (i+1) + 200, y)
			draw_line(start, end, Color.WHITE, 5)
