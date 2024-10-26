extends Weapon

func _process(_delta):
	if fireable == true:
		if Input.is_action_pressed("fire"): # Primary fire
			fireable = false
			SoundManager.play("evening_star", "fire")
			anim.play("Fire")
			fire_hitscan(1, Vector2(5, 5), 10, "Plasma")
			await anim.animation_finished
			fireable = true
		else: # Idling
			pass
