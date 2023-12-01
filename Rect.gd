extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var mesh  = MeshInstance.new()



# Called when the node enters the scene tree for the first time.
func _ready():

	mesh.mesh = CubeMesh.new()
	get_tree().root.get_child(0).add_child(mesh)
	print("created the mesh", mesh)
	
#	shape.set_size(Vector3(2,2,2))
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
