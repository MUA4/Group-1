extends Area2D

@onready var timer = $Timer
signal Dead

func _on_body_entered(body):
	Engine.time_scale = 0.5
	emit_signal("Dead")
	timer.start()
	
func _on_timer_timeout():
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()