extends Node3D

@onready var platform = $bread
@export var speed = 1.0
@export var _rotation_amount = 0.35

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	_handle_input(delta)
	

func _handle_input(delta:float):
		var velocity:Vector2 = Input.get_vector("TiltRight", "TiltLeft", "TiltDown", "TiltUp") 
		var _platRotation = Vector3(velocity.y * _rotation_amount, 0, velocity.x * _rotation_amount)
		platform.rotation = _platRotation
