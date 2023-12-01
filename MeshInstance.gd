extends MeshInstance

# Called when the node enters the scene tree for the first time.
const Map = preload("res://GlobalMap.gd")
var MapHandler = Map.GridHandler.new()
var object_list = []
func _ready():
	for x in MapHandler.getMapList().size():
		for y in MapHandler.getMapList()[x].size():
			print(x, ", ",y)
			var mInstance = MeshInstance.new()
			var b = CubeMesh.new()
			mInstance.mesh=b;
			object_list.append(mInstance)
			mInstance.transform.origin = Vector3(1 * (x-MapHandler.getPlayerPos()[0]), 0, 1* (y-MapHandler.getPlayerPos()[1]))
	for x in object_list:
		print("added ",x)
		add_child(x)
		
	pass # Replace with function body.


func _process(delta):
	

#	for x in object_list:
#		print("added ",x)
#		add_child(x)
#
#	var mInstance = MeshInstance.new()
#	var b	= CubeMesh.new()
#	b.size = Vector3(2,2,2)
#
#	mInstance.mesh = b
#
#	mInstance.transform.origin = Vector3(10 * 3, 0, 10* 3)
#	print("new chidl", mInstance)
#	add_child(mInstance)
	pass
