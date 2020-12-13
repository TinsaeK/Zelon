extends Node2D
const WIDTH =500
const HEIGHT = 500


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const TILES = {
	'tile0': 2,
	'tile1': 0,
	'tile2': 1
}

var open_simplex_noise

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	open_simplex_noise = OpenSimplexNoise.new()
	open_simplex_noise.seed=randi()
	
	open_simplex_noise.octaves=4
	open_simplex_noise.period=15
	open_simplex_noise.lacunarity=1.5
	open_simplex_noise.persistence=0.75
	
	_generate_world()

func _generate_world():
	for x in WIDTH:
		for y in HEIGHT:
			$TileMap.set_cellv(Vector2(x-WIDTH/2,y-HEIGHT/2), _get_tile_index(open_simplex_noise.get_noise_2d(float(x), float(y))))
		$TileMap.update_bitmask_region()

func _get_tile_index(noise_sample):
	if noise_sample <-0.1:
		return TILES.tile2
	if noise_sample <0.4:
		return TILES.tile1
	return TILES.tile0

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
