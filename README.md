# Zelon
 
<br />
<p align="center">
  <a href="https://github.com/TinsaeK/Zelon">
    <img src="players2.png" alt="Logo" width="226" height="416">
  </a>

  <h1 align="center">Zelon</h1>

  <p align="center">
    A Maze Runner Game
    <br />
  </p>
</p>

<h3> About The Project</h3>
This project was initially meant to be a game that offers the player a maze that they have to navigate through in dim lighting, while avoiding enemies with their own behavior trees. however i had to make changes and instead implemented a perlin noise background on the title screen. here is the video with the gameplay.
<a href="https://youtu.be/tnhgFXnAku0">Watch Demo Here</a>

<h3> Components</h3>
There are various components to this game. The maze layout was manually done, here is what a zoomed out view of the whole maze looks like
<img src="https://github.com/TinsaeK/Zelon/blob/main/mazelayout.PNG">
 The Sprite for the character is the image above the title. The noise is generated using <a href="https://github.com/TinsaeK/Zelon/blob/main/perlin.gd">this code</a> and the tileset below
<img src="https://github.com/TinsaeK/Zelon/blob/main/tileses.png">
I also used the image below to darken all areas farther from the player. 
<img src="https://github.com/TinsaeK/Zelon/blob/main/light.png">
<h3> Road Map</h3>
I had first included the enemies using this sprite
<img src="https://github.com/TinsaeK/Zelon/blob/main/warbler.gif">
however i realized theres not enough space for the enemies to navigate in different ways and have different behaviors given the narrow spacings of the maze, so instead i decided to implement perlin noise on both the title screen and in the game. Here is an example of the title screen perlin pattern.

however i decided to remove the second implementation of perlin in the game itself because it takes a significant amount off time for the procedural generation to complete and i didnt want the player to have to wait twice as long to play the game.
