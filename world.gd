extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var mesh = PrimitiveMesh
# Called when the node enters the scene tree for the first time.
func _ready():
	mesh.new()

	add_child(mesh)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
