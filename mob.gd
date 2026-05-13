extends RigidBody2D

func _ready() -> void:
	var mob_animations = Array($AnimatedSprite2D.sprite_frames.get_animation_names())
	$AnimatedSprite2D.animation = mob_animations
	$AnimatedSprite2D.play()
