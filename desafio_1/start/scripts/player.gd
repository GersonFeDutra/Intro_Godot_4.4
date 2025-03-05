extends Node2D

signal health_changed
signal died

@export var max_health = 18
var health = max_health

# When the character dies, we fade the UI
enum States { ALIVE, DEAD }
var state = States.ALIVE

# Implement stamina as an exercise + solution!
#var max_energy = 18
#var energy = max_energy


func take_damage(count):
	if state == States.DEAD:
		return
	
	health -= count
	if health <= 0:
		health = 0
		state = States.DEAD
		emit_signal("died")
	
	$AnimationPlayer.play("take_hit")
	
	emit_signal("health_changed", health)


func _on_AnimationPlayer_animation_finished( names ):
	if state != States.DEAD:
		return
	if names != "take_hit":
		return
	$AnimationPlayer.play("die")
