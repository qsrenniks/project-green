extends RigidBody2D

## lets just say for now the bullets only attack the "first in" units

func determine_target() -> Node2D:
	var play_root: PlayRoot = get_play_root_from_node(self)
	assert(play_root)
	var enemy_controller: EnemyController = play_root.get_enemy_controller()
	assert(enemy_controller)

	if enemy_controller.enemy_units.is_empty():
		return null

	return enemy_controller.enemy_units.front()

func _ready() -> void:
	pass