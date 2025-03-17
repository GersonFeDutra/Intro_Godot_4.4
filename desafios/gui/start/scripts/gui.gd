@tool
extends MarginContainer

@export var number_label: Label:
	set(value):
		number_label = value
		update_configuration_warnings()
@export var bar: TextureProgressBar:
	set(value):
		bar = value
		update_configuration_warnings()

var animated_health = 0:
	set(value):
		animated_health = value
		var round_value = round(animated_health)
		number_label.text = str(round_value)
		bar.value = round_value


func _get_configuration_warnings() -> PackedStringArray:
	var warnings := PackedStringArray()
	
	if not number_label:
		warnings.append("Number Label not set.")
	
	if not bar:
		warnings.append("Bar not set.")
	
	return warnings

func _ready():
	if not number_label and has_node(^"Bars/LifeBar/Count/Background/Number"):
		number_label = $Bars/LifeBar/Count/Background/Number
	if not bar and has_node(^"Bars/LifeBar/TextureProgress"):
		bar = $Bars/LifeBar/TextureProgress
	
	var player_max_health = $"../Characters/Player".max_health
	
	
	bar.max_value = player_max_health
	update_health(player_max_health)


func _on_Player_health_changed(player_health):
	update_health(player_health)


func update_health(new_value):
	var tween := get_tree().create_tween()
	tween.tween_property(self, ":animated_health", new_value, 0.6)
	tween.set_trans(Tween.TRANS_LINEAR)
	tween.set_ease(Tween.EASE_IN)
	tween.play()


func _on_Player_died():
	#var start_color = Color(1.0, 1.0, 1.0, 1.0)
	var end_color = Color(1.0, 1.0, 1.0, 0.0)
	var tween := get_tree().create_tween()
	tween.tween_property(self, ":modulate", end_color, 1.0)
	tween.set_trans(Tween.TRANS_LINEAR)
	tween.set_ease(Tween.EASE_IN)
	tween.play()
