extends MeshInstance


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	

	var b	= CubeMesh.new()
	b.size = Vector3(10,10,10)
	

	mesh = b

	self.transform.origin = Vector3(10 * 3, 0, 10* 3)

	


	

	

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
