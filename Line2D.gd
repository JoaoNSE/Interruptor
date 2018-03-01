extends Line2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_process(true)
	

func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	set_point_position(0, Vector2(get_parent().get_node("BOla").position.x, get_parent().get_node("BOla").position.y))
	set_point_position(1, Vector2(get_parent().get_node("StaticBody2D").position.x, get_parent().get_node("StaticBody2D").position.y))
