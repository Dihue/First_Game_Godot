extends KinematicBody2D


var velocidad = Vector2(150.0,150.0)


func _ready():
	pass


func _physics_process(delta):
	# Velocidad por la direccion se obtiene el movimiento en x
	var movimiento = velocidad * tomar_direccion()
	print(movimiento)
	# Metodo para generar movimiento
	# Requiere: velocidad lineal y direccion vertical
	move_and_slide(movimiento, Vector2.UP)


func tomar_direccion():
	# Generar direccion obteniendo la fuerza de accion
	# En x resta de movimientos: +derecha -izquierda
	# En y, dejar en 0.0 es no tener "gravedad"
	var direccion = Vector2(
		Input.get_action_strength("mov_derecha")
		-Input.get_action_strength("mov_izquierda"),0.0)
	return direccion
