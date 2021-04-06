extends Area


export(PackedScene) var text_box_scene
export(String) var text_item

onready var player_in_range = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _unhandled_key_input(event):
	if event.is_action_pressed("interact") and player_in_range:
		var text_box = text_box_scene.instance()
		text_box.get_node("text_area").DIALOG = "Hello!\nWorld!!!"
		get_tree().root.add_child(text_box)
		get_tree().set_input_as_handled()

func player_enters(body):
	player_in_range = true

func player_exits(body):
	player_in_range = false
