extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	var viewportWidth = get_viewport().size.x
	var scale = viewportWidth / $TextureRect.texture.get_size().x
	$TextureRect.set_scale(Vector2(scale, scale))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://scenes/map.tscn")


func _on_quit_button_pressed():
	get_tree().quit()
