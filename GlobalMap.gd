extends Node

class GridHandler: 
	var map_list = [
		[1,1,1,1,1],
		[1,0,0,0,0],
		[1,0,0,0,0],
		[1,1,1,1,1]
	]
	var player_pos = [2,2]
	func __init__():
		pass
	func getMapList():
		return map_list
	func getPlayerPos():
		return player_pos
	
