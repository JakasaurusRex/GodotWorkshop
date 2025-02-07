extends Node

var stump_asset = preload("res://assets/scenes/stump.tscn")

@onready var dino = $Dino
@onready var ground = $Ground
@onready var background = $Background
@onready var camera = $Camera2D
@onready var ui = $UI

const DINO_START_POS = Vector2i(103, 497)
const CAM_START_POS = Vector2i(576, 324)

var speed : float 
const START_SPEED = 10.0
const MAX_SPEED = 25
const SPEED_CONST =  100000
var screen_size : Vector2i
var ground_height : int

var stumped : bool
var score : int
var playing : bool
var game_overed : bool
var current_stump 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	screen_size = get_window().size
	ground_height = ground.get_node("Sprite2D").texture.get_height()
	stumped = false
	game_overed = false
	newgame()

func newgame():
	dino.position = DINO_START_POS
	camera.position = CAM_START_POS
	dino.velocity = Vector2i(0,0)
	ground.position = Vector2i(0,0)
	
	stumped = false
	if(current_stump):
		current_stump.queue_free()
		current_stump = null
	
	ui.get_node("Start").text = "Press Enter to Play"
	ui.get_node("Start").show()
	dino.animator.play("idle")
		
	speed = START_SPEED
	score = 0 
	update_score()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if playing:
		speed  = min(START_SPEED + score/SPEED_CONST, MAX_SPEED)
		
		if stumped:
			if(current_stump.position.x < dino.position.x):
				stumped = false
		else:
			create_stump()
		
		dino.position.x += speed
		camera.position.x += speed
		
		score += speed
		
		update_score()
		
		if camera.position.x - ground.position.x > screen_size.x * 1.5:
			ground.position.x += screen_size.x
	elif(game_overed):
		if Input.is_action_just_pressed("ui_accept"):
			newgame()
			game_overed = false
	else:
		if Input.is_action_just_pressed("ui_accept"):
			playing = true
			ui.get_node("Start").hide()
		
func create_stump():
	var stump = stump_asset.instantiate()
	var stump_height = stump.get_node("Sprite2D").texture.get_height()
	var stump_scale = stump.get_node("Sprite2D").scale
	var stump_x = screen_size.x + score + randi_range(400, 600)
	var stump_y = screen_size.y - ground_height - (stump_height * stump_scale.y * 4) + 12
	stump.position = Vector2i(stump_x, stump_y)
	stumped = true
	stump.body_entered.connect(hit_stump)
	add_child(stump)
	current_stump = stump
	
func hit_stump(body):
	if(body.name == "Dino"):
		game_over()
		
func game_over():
	playing = false
	game_overed = true
	ui.get_node("Start").text = "GAME OVER - press enter to start over"
	ui.get_node("Start").show()
	
func update_score():
	ui.get_node("Score").text = "SCORE: " + str(score)
	
