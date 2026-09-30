extends RigidBody2D

## lets just say for now the bullets only attack the "first in" units
@export var bullet_speed: float = 50.0

func determine_target() -> Node2D:
	var play_root: PlayRoot = PlayRoot.get_play_root_from_node(self)
	assert(play_root)
	var enemy_controller: EnemyController = play_root.get_enemy_controller()
	assert(enemy_controller)

	if enemy_controller.enemy_units.is_empty():
		return null

	return enemy_controller.enemy_units.front()

func on_collision(body: Node) -> void:
	queue_free()

func _ready() -> void:
	var target_node: Node2D = determine_target()
	linear_velocity = (target_node.global_position - global_position).normalized() * bullet_speed

	body_entered.connect(on_collision)
