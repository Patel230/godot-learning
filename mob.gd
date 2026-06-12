extends Area2D

var speed: float
var direction: Vector2
var screen_size: Vector2

func _ready():
    add_to_group("mobs")
    screen_size = get_viewport_rect().size
    var edge = randi() % 4
    match edge:
        0:
            position = Vector2(randf_range(0, screen_size.x), -50)
            direction = Vector2.DOWN.rotated(randf_range(-PI / 6, PI / 6))
        1:
            position = Vector2(randf_range(0, screen_size.x), screen_size.y + 50)
            direction = Vector2.UP.rotated(randf_range(-PI / 6, PI / 6))
        2:
            position = Vector2(-50, randf_range(0, screen_size.y))
            direction = Vector2.RIGHT.rotated(randf_range(-PI / 6, PI / 6))
        3:
            position = Vector2(screen_size.x + 50, randf_range(0, screen_size.y))
            direction = Vector2.LEFT.rotated(randf_range(-PI / 6, PI / 6))
    speed = randf_range(150, 300)
    rotation = direction.angle()

func _process(delta):
    position += direction * speed * delta
    if position.x < -200 or position.x > screen_size.x + 200 or position.y < -200 or position.y > screen_size.y + 200:
        queue_free()

func _draw():
    draw_rect(Rect2(-20, -20, 40, 40), Color(0.8, 0.2, 0.2))
    draw_rect(Rect2(-15, -15, 30, 30), Color(0.9, 0.3, 0.3))
