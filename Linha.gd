extends StaticBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var linha


func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	linha = get_node("Line2D")
	set_process(true)

func _process(delta):
	linha.set_point_position(0, Vector2(get_parent().get_node("BOla").position.x, get_parent().get_node("BOla2").position.y))
	linha.set_point_position(1, Vector2(position.x, position.y))
	
	
