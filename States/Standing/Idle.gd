extends LimboState

func _update(delta: float) -> void:
	var input_dir := Input.get_vector("move_left", "move_right", "move_up", "move_down")
	if input_dir.length() > 0:
		dispatch("walk_start")
		return
	agent.velocity = Vector2.ZERO
	agent.move_and_slide()
