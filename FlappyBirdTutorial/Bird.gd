extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == 1:
			self.set_linear_velocity(Vector2(0, -150))
			self.set_angular_velocity(0)
			$AnimatedSprite2D.play("Fly")
			


func _on_area_2d_body_entered(body):
	if (body.name == ("Floor")):
		self.queue_free()
		print(body.name)
		
	if "wall" in body:
		self.queue_free()
		
	if (body.name == ("Pipes")):
		self.queue_free()
		print(body.name)
