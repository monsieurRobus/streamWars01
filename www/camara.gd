extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var camara = 0
var velocidad = 0;
# Called when the node enters the scene tree for the first time.
func _ready():
	camara = get_child(0)
	camara.rotate_x(20)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
		
	if Input.is_action_pressed("ui_correr"):
		velocidad = delta*4
	else: 
		velocidad = delta*2
		
		
	if Input.is_action_pressed("ui_left"):
		translate(Vector3(2*velocidad,0,0))
		
	if Input.is_action_pressed("ui_right"):
		translate(Vector3(-2*velocidad,0,0))
	
	if Input.is_action_pressed("ui_up"):
		translate(Vector3(0,0,2*velocidad))
		
	if Input.is_action_pressed("ui_down"):
		translate(Vector3(0,0,-2*velocidad))
	
	if Input.is_action_pressed("ui_volar_arriba"):
		translate(Vector3(0,velocidad,0))

	if Input.is_action_pressed("ui_volar_abajo"):
		translate(Vector3(0,-velocidad,0))
		


	pass
