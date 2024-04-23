extends LimboState

func _update(delta: float) -> void:
	var input_dir := Input.get_vector("move_left", "move_right", "move_up", "move_down")
	if input_dir.is_zero_approx():
		dispatch("walk_end")
		return
	agent.velocity = input_dir.normalized() * agent.speed
	agent.move_and_slide()
