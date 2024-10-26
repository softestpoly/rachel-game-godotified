extends Area3D

class_name Player_GenericProjectile

@export var damage : int = 0
@export var damageType : String = "None"


func _physics_process(delta: float) -> void:
	position += global_transform.basis * delta * Vector3(0, 0, -10)

func _on_body_entered(body: Node3D) -> void:
	# Hitting an enemy
	if body.has_method("damage"):
		body.damage(damage, damageType)
	queue_free()
