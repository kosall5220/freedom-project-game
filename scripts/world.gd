extends Node2D

var scene = load("res://scene/enemy_1.tscn")
var coins = load("res://scene/snack.tscn")
@onready var time = $spawntimer

func _ready() -> void:
	time.start()

func _on_spawntimer_timeout() -> void:
	var b
	b = coins.instantiate()
	b.global_position = %Marker2D.position
	add_child(b)
	time.start()


#func _on_coinspawn_timeout() -> void:
	#var b
	#b = coins.instantiate()
	#b.global_position = %Marker2D2.position
	#add_child(b)
	#time.start()
