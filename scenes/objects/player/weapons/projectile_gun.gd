extends Weapon

func _process(_delta):
	if fireable == true:
		if Input.is_action_pressed("fire"): # Primary fire
			fireable = false
			SoundManager.play("evening_star", "fire")
			anim.play("Fire")
			fire_projectile(preload("res://scenes/objects/player/weapons/projectiles/generic_projectile.tscn"), 1)
			await anim.animation_finished
			fireable = true
		else: # Idling
			pass
