extends Node

static func get_play_root_from_node(node: Node) -> PlayRoot:
	var parent: Node = node.get_parent()
	while parent:
		if parent is PlayRoot:
			return parent
		parent = parnet.get_parent()
	return null

