extends TileMap

var wall

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	var randRangeTop = randi_range(1,15)
	
	for i in range(randRangeTop):
		set_cell(0, Vector2i(6,i), 0, Vector2i(0,1), 0)
		
	set_cell(0, Vector2i(6,randRangeTop), 0, Vector2i(0,1), 0)
	set_cell(0, Vector2i(6,randRangeTop + 1), 0, Vector2i(0,2), 0)
	
	#set_cell()
	
	#set bottom pipe
	#set_cell(0, Vector2i(6,randRangeTop + 8), 0, Vector2i(0,0), 0)
	set_cell(0, Vector2i(6,randRangeTop + 7), 0, Vector2i(0,0), 0)
	
	for i in (15):
		set_cell(0, Vector2i(6,randRangeTop+8+i), 0, Vector2i(0,1), 0)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x -= 60*delta
	
	
func _on_area_2d_area_entered(area):
	if "Bird" in area.name:
		Global.Points = 100
