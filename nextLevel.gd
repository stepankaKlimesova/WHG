extends Sprite

func _on_nextLevel_area_entered(area):
		get_tree().change_scene("res://level_" + str(int(get_tree().current_scene.name) + 1 ) + ".tscn")
