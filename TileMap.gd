extends TileMap

var noise := OpenSimplexNoise.new()

func create_noise(x_pos,y_pos,width,height):
	for x in range(width):
		for y in range(height):
			set_cell(x+x_pos,y+y_pos,noise.get_noise_2d(x+x_pos,y+y_pos)*2+2)
			
func _ready():
	create_noise(-30,-30,60,60)
