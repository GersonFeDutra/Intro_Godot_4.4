@tool
extends Node2D

enum States {IDLE, ATTACKING}
var state = States.IDLE

@export var strength = 6

@export var target: Node2D:
	set(value):
		target = value
		update_configuration_warnings()
@export var timer: Timer:
	set(value):
		timer = value
		update_configuration_warnings()
@export var animation_player: AnimationPlayer:
	set(value):
		animation_player = value
		update_configuration_warnings()


func _get_configuration_warnings() -> PackedStringArray:
	var warnings := PackedStringArray()
	
	if not target:
		warnings.append("Timer node not set.")
	
	if not timer:
		warnings.append("Timer node not set.")
	
	if not animation_player:
		warnings.append("Animation player not set.")
	
	return warnings


func _ready() -> void:
	if has_node(^"Timer"):
		timer = $Timer
	if has_node(^"AnimationPlayer"):
		animation_player = $AnimationPlayer


func _on_Timer_timeout():
	if not target:
		timer.stop()
		return

	if state != States.IDLE:
		return

	state = States.ATTACKING
	animation_player.play("anticipate")


func damage_target(who, damage):
	who.take_damage(damage)


func _on_AnimationPlayer_animation_finished( names ):
	if names == "attack":
		state = States.IDLE
	if names == "anticipate":
		$AnimationPlayer.play("attack")
		damage_target(target, strength)


func _on_Player_died():
	target = null
