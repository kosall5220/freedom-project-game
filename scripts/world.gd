extends Node2D

var scene = load("res://scene/enemy_1.tscn")
@onready var time = $spawntimer

func _ready() -> void:
	time.start()

func _on_spawntimer_timeout() -> void:
	var b
	b = scene.instantiate()
	b.global_position = %Marker2D.position
	add_child(b)
	time.start()
