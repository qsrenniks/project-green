extends Node2D

@export var emit_cooldown_time: float
@export var emit_roots: Array[Node2D]

var _emit_index: int
var _emit_timer: Timer

func get_emitter_root() -> Node2D:
	var emit_index: int = clamp(_emit_index, 0, emit_roots.size()-1)
	return emit_roots[emit_index]

func _increment_emit_index() -> void:
	var final_index: int = _emit_index
	final_index += 1

	if final_index >= emit_roots.size():
		final_index = 0
		
	_emit_index = final_index

func _fire_bullet() -> void:
	_increment_emit_index()


	pass

func _ready() -> void:
	_emit_timer = Timer.new()
	add_child(_emit_timer)
	_emit_timer.one_shot = false
	_emit_timer.timeout.connect(_fire_bullet)
	_emit_timer.start(emit_cooldown_time)




