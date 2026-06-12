extends Area2D

signal hit

@export var speed = 400
var screen_size: Vector2

func _ready():
    screen_size = get_viewport_rect().size
    area_entered.connect(_on_area_entered)

func _process(delta):
    var velocity = Vector2.ZERO
    if Input.is_key_pressed(KEY_RIGHT) or Input.is_key_pressed(KEY_D):
        velocity.x += 1
    if Input.is_key_pressed(KEY_LEFT) or Input.is_key_pressed(KEY_A):
        velocity.x -= 1
    if Input.is_key_pressed(KEY_DOWN) or Input.is_key_pressed(KEY_S):
        velocity.y += 1
    if Input.is_key_pressed(KEY_UP) or Input.is_key_pressed(KEY_W):
        velocity.y -= 1
    position += velocity * speed * delta
    position = position.clamp(Vector2.ZERO, screen_size)

func start(pos: Vector2):
    position = pos
    show()
    $CollisionShape2D.disabled = false

func _on_area_entered(area):
    hide()
    $CollisionShape2D.set_deferred("disabled", true)
    hit.emit()

func _draw():
    draw_circle(Vector2.ZERO, 28, Color(0.2, 0.8, 0.2))
    draw_circle(Vector2.ZERO, 18, Color(0.3, 0.9, 0.3))
