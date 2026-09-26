class_name PlayRoot extends Node

@export var player_game_board: PlayerGameBoard

func get_player_units() -> Array[PlayerUnit]:
	return player_game_board.get_player_units()