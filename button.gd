extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var atualAnimation = "Idle"
var nextAnimation = "Idle"

var holding = false

var animPlayer

var luz

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_process(true)
	animPlayer = get_node("AnimationPlayer")
	luz = get_parent().get_node("Luz/Light2D")

func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	if (atualAnimation != nextAnimation):
		animPlayer.play(nextAnimation)
		atualAnimation = nextAnimation


func _on_Clickable_mouse_entered():
	nextAnimation = "Hover"


func _on_Clickable_mouse_exited():
	nextAnimation = "Idle"


func _on_Clickable_input_event(viewport, event, shape_idx):
	if (event.is_action_pressed("Clique")):
		holding = true
		nextAnimation = "Pressed"
	if (event.is_action_released("Clique")):
		holding = false
		nextAnimation = "Hover"
		luz.enabled = !luz.enabled
		
	if event is InputEventMouseMotion and holding:
		position.x = event.position.x
		position.y = event.position.y
