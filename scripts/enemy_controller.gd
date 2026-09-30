class_name EnemyController extends Node

var enemy_units: Array[EnemyUnit]

func _gather_enemy_units() -> void: 
	for child: Node in get_children():
		if child is EnemyUnit:
			enemy_units.push_back(child as EnemyUnit)

func _ready() -> void:
	_gather_enemy_units()
