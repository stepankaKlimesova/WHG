extends Node

var Coin = 0

signal Coin_changed(Coin)

func update_coin(var delta):
	Coin += delta
	
