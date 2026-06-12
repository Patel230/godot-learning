extends Node

@export var mob_scene: PackedScene
var score: int

func _ready():
    randomize()
    $Player.hit.connect(game_over)
    $HUD.start_game.connect(new_game)

func new_game():
    score = 0
    get_tree().call_group("mobs", "queue_free")
    $Player.start($StartPosition.position)
    $StartTimer.start()
    $HUD.update_score(score)
    $HUD.show_message("Get Ready...")

func game_over():
    $MobTimer.stop()
    $ScoreTimer.stop()
    $StartTimer.stop()
    get_tree().call_group("mobs", "queue_free")
    $HUD.show_game_over()

func _on_mob_timer_timeout():
    var mob = mob_scene.instantiate()
    add_child(mob)

func _on_score_timer_timeout():
    score += 1
    $HUD.update_score(score)

func _on_start_timer_timeout():
    $MobTimer.start()
    $ScoreTimer.start()
