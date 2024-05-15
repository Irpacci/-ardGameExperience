extends EnemyAction

@export var damage := 8

func perform_action() -> void:
	if not enemy or not target:
		return
	var tween := create_tween().set_trans(Tween.TRANS_QUINT)
	var start := enemy.global_position
	var end := target.global_position + Vector2.RIGHT * 32
	var damage_effect := DamageEffect.new()
	var target_array: Array[Node] = [target]
	damage_effect.amount = damage
	damage_effect.sound = sound
	tween.tween_property(enemy, "global_position", end, 0.15)
	tween.tween_callback(damage_effect.execute.bind(target_array))
	tween.tween_interval(0.1)
	tween.tween_property(enemy, "global_position", start, 0.22)
	tween.finished.connect(
		func():
		Events.enemy_action_completed.emit(enemy)
	)
