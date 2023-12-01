extends Node


class GridHandler: 
	func apply_texture(mesh_instance_node, texture_path):
		var texture = ImageTexture.new()
		var image = Image.new()
		image.load(texture_path)
		texture.create_from_image(image)
		if mesh_instance_node.material_override:
			mesh_instance_node.material_override.albedo_texture = texture  
	func no_op():
		pass
	func brickDrawer():
		var m = MeshInstance.new()
		m.mesh = CubeMesh.new();
		apply_texture(m, 'Icon.png')
		return m;
		
	#private functions above...
	var map_list = [
		[1,1,1,1,1],
		[1,0,0,0,0],
		[1,0,0,0,0],
		[1,1,1,1,1]
	]
	var map_handler ={
		0 : funcref(self,'no_op'),
		1 : funcref(self, "brickDrawer")
			
	}
	var player_pos = [2,2]
	func __init__():
		pass
	func getMapList():
		return map_list
	func getMapHandler():
		return map_handler
	func getPlayerPos():
		return player_pos
	
	
