class_name PlayRoot extends Node

@export var player_game_board: PlayerGameBoard

# feeling like these should both be considered "game boards" 
# both keep track of how many units each thing has but not worried about the naming right now
@export var enemy_controller: EnemyController

func get_player_units() -> Array[PlayerUnit]:
	return player_game_board.get_player_units()