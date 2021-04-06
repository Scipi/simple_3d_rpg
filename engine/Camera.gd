extends Camera


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var init_position = self.global_transform

func _physics_process(delta):
	self.global_transform = get_parent().global_transform
	self.global_translate(Vector3(0.0, 10.0, 10.0))
	
	
	self.look_at(get_parent().translation, Vector3.UP)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
