extends KinematicBody

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocity = Vector3()
var gravity = 150
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
    velocity.y += gravity * delta
    velocity = move_and_slide(-velocity, Vector3(0,1,0))