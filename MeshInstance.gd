extends MeshInstance

# Called when the node enters the scene tree for the first time.
const Map = preload("res://GlobalMap.gd")
var MapHandler = Map.GridHandler.new()
var object_list = []
func _ready():
	for x in MapHandler.getMapList().size():
		for y in MapHandler.getMapList()[x].size():
			var handler = MapHandler.getMapHandler()
			var handler_key = MapHandler.getMapList()[x][y]
			var instance = handler[handler_key].call_func()
			if instance != null:
				object_list.append(instance)
				instance.transform.origin = Vector3((x-MapHandler.getPlayerPos()[0])*2 , 0, (y-MapHandler.getPlayerPos()[1])*2)
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
