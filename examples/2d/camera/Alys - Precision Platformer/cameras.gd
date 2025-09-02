extends Node2D

var current_camera: int = 0
var cameras: Array[Camera2D]


func _ready() -> void:
	for camera in get_children():
		cameras.append(camera)


func _unhandled_input(event: InputEvent) -> void:
	if event.is_echo():
		return
	if Input.is_key_pressed(KEY_ENTER):
		cameras[current_camera].enabled = false
		current_camera += 1
		current_camera %= cameras.size()
		cameras[current_camera].enabled = true
		print_rich("[color=green]%s[/color]" % cameras[current_camera].name)
