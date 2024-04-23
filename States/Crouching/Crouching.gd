extends LimboHSM

@export var idle: LimboState
@export var walking: LimboState

func _setup():
	initialize_state()

func initialize_state():
	add_transition(idle, walking, "walk_start")
	add_transition(walking, idle, "walk_end")
	