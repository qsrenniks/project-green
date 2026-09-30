class_name PlayRoot extends Node

@export var player_game_board: PlayerGameBoard

# feeling like these should both be considered "game boards" 
# both keep track of how many units each thing has but not worried about the naming right now
@export var enemy_controller: EnemyController

static func get_play_root_from_node(node: Node) -> PlayRoot:
	var parent: Node = node.get_parent()
	while parent:
		if parent is PlayRoot:
			return parent
		parent = parent.get_parent()
	return null

func get_enemy_controller() -> EnemyController:
	return enemy_controller

func get_player_units() -> Array[PlayerUnit]:
	return player_game_board.get_player_units()