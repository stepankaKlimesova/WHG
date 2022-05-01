extends Area2D

export var speed = 400

func _process(delta):
		var motion = Vector2(1,0) * speed
		position += motion * delta

func _on_horizontal_projectile_body_entered(body):
	speed *= -1

func _on_horizontal_projectile_area_entered(area):
	if area.is_in_group("player"):
		Count.Coin = 0
		get_tree().reload_current_scene()
