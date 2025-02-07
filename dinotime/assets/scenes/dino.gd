extends CharacterBody2D	

const JUMP_VELOCITY = -500.0

@onready var jumpsfx = $JumpSFX
@onready var animator = $AnimatedSprite2D
func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		jumpsfx.play()
		animator.play("jump")
	elif is_on_floor():
		animator.play("run")

	move_and_slide()
