extends Area2D

func snack():
	pass
	

func _on_area_entered(area: Area2D) -> void:
	queue_free()
