extends Area2D

func _on_Node2D_area_entered(area):
		if area.is_in_group("coin"):
			queue_free()
			Count.update_coin(1)
			
		
