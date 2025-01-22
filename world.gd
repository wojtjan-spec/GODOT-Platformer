extends Node

@onready var collision_polygon_2d: CollisionPolygon2D = $StaticBody2D/CollisionPolygon2D
@onready var polygon_2d: Polygon2D = $StaticBody2D/CollisionPolygon2D/Polygon2D

func _ready():
	RenderingServer.set_default_clear_color("black")
	# Assing viusal polygon to the collision polygon
	polygon_2d.polygon = collision_polygon_2d.polygon
