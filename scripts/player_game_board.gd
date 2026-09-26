class_name PlayerGameBoard extends Node

var _player_units: Array[PlayerUnit]

func get_player_units() -> Array[PlayerUnit]:
	return _player_units

# normally they are placed in the game, but if the board is pre-setup we have to walk the children to find them
static func _gather_player_units(parent: Node, units: Array[PlayerUnit]) -> void:

	for child: Node in children():
		if child is PlayerUnit:
			units.push_back(child)
		
		_gather_player_units(child, units)

	return units

func _ready() -> void:
	_gather_player_units(self, _player_units)


