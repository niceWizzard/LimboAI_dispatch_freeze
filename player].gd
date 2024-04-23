extends CharacterBody2D

@export var speed := 200.0
@export var hsm: LimboHSM
@export var standing: LimboState
@export var crouching: LimboState

func _ready() -> void:
	initialize_state()

func initialize_state():
	hsm.add_transition(standing, crouching, "crouch_start")
	hsm.add_transition(crouching, standing, "crouch_end")
	hsm.initialize(self)
	hsm.set_active(true)
