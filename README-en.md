# SNES celeste.smc by Mimen in 14:41.885

[Chinese(中文)](./README.md)

English(英语)

> The English version of the instruction file uses machine translation. If you know Chinese, you can view the Chinese version of the instruction file

This is the TAS file repository for celeste.smc

This TAS is used for the revision of Super Mario World, with Celeste as the reference ROM hack

## This TAS

- TAS created using BizHawk

- Quick clearance game

- Using shortcut routes

## Some information about this TAS

|/|information|
|-|-|
|system|Super Nintendo Entertainment System|
|Emulators|BizHawk 2.6.1|
|Rerecord Count|25670|
|Frame Count|53000|
|Frame Rate|60.0984755|
|Game|celeste.smc|
|Game version|celeste[v1.0].smc|
|ROM Filename|celeste.smc|
|ROM SHA-1|09A145A2E7EE861C1A0CEEA9B717EBF83B0D4964|
|Authors|default user|
|core|Snes9x|

> The author shows the default user here, but in fact, I am the only one who created this TAS, and the author is actually Mimen here

## Route referenced during TAS production

The route I referenced is based on the old RTA world record

Reference link: <https://www.youtube.com/watch?v=Wt1ychGZyYQ>

I also did some route optimization when referring to the route

### Why not refer to the latest world records?

Because my network is in Chinese Mainland, the network in Chinese Mainland cannot link to Youtube and Twitch

I can refer to this old world record because someone reposted videos from Youthde to Chinese video websites

## The new operation methods added to this game

Some of the skills in this game are the same as the original Super Mario World, such as maintaining speed while in the air without pressing the arrow keys. But the techniques in celeste cannot be used

The game has added sprints and wall jumping in celeste (without climbing the wall, but can slide down the wall)

Sprinting will allow players to move at 3.9375 pixels per frame, allowing them to sprint in 8 directions. After the sprint, there is a 10 frame cooldown time during which players cannot operate the direction. If on the ground, players can use jumping to sprint jump `(after the sprint, there needs to be a frame interval before using the sprint and jump, otherwise it will be jumping in place)`. After the jump, the player will regain control of the direction

When the sprint cools down, players will not lose their speed when they hit a brick. In some cases, this mechanism can be used to advance the sprint

When using Sprint Jump, the player's movement speed will lose 0.0625 pixels, resulting in a speed of 3.875 pixels per frame. After the sprint jump, the player will restore the number of sprints and can sprint again in the air

During sprint jumping, players will jump higher than in place because the player's acceleration during sprint jumping is the maximum (acceleration is the normal situation in the original game when pressing the acceleration button to accelerate to full)

When clinging to the wall, players need to press the direction key towards the wall and slide down. Here, players can use the wall jumping technique, but cannot climb the wall. When using wall jumping, the player's horizontal speed is 2 pixels per frame (-2 pixels when moving left), and the vertical speed is -4.5 pixels

When jumping on the wall, the player's lateral speed can accelerate to 2.3125 pixels per frame, but there is a limit to deceleration. It is invalid to operate in the direction of the wall within 15 frames and cannot control the speed. To slow down, you need to hold down the opposite direction key facing the wall `(do not press the acceleration key)`, which can slow down to a maximum of 1.1875 pixels per frame

The vertical starting speed of the player when jumping on the wall is -4.5 pixels, and the starting speed for both regular and spin jumps is -4.5 pixels

## Level

### Prologue

Preface level cannot use sprint, but can use wall jumping

### Forsaken City

Starting from this level, sprints can be used, and horizontal springs and green crystals have also appeared

The horizontal spring will give players speed. When the spring is triggered, the horizontal speed is 5 pixels (-5 pixels if moving to the left) and the vertical speed is -5 pixels

Green crystal can allow players to recover their sprint count. When players use green crystals, they will not be able to use them for a period of time

### Old Site

This level features Dream Blocks and Circular Switches. In the second half of the level, there are player shadows chasing players

The dream blocks in the game are a bit different from Celeste's dream blocks. Players cannot jump out once after breaking out of the Dream Cube. When rushing diagonally into the Dream Cube, hitting the wall will not kill, but sliding out along the wall. The same thing as Celeste is that sprinting out of Dream Blocks will restore sprint

I actually chose the name of the circular switch casually, and I am not clear about the original name. This switch is used in celeste to set a certain number of paths that can be opened later. In this game, the function is the same as the mechanism of the red and blue box switches, but it is one-time, and the player will automatically use and disappear after touching it

In the second half of the level, there will be a player's shadow chasing the player, and the behavior mode of the shadow is to imitate the player's previous actions to chase the player. Players will be judged dead when encountering shadows

### Celestial Resort

This level has dust elves, keys, and doors

Players will die when encountering dust elves. There are three types of dust elves: stationary, moving along a fixed path, and generated

The moving dust elf is easy to understand. In addition, the detection range of this dust sprite is smaller than that of the texture, and it appears to have been touched, but actually it has not been touched

In the game, there are long furry walls and floors, and when players touch these hairs and leave, they will generate dust elves

### Golden Ridge

This level has green bubbles and wind direction mechanism

Players can move in the specified direction while inside the green bubble, with a speed of 4 pixels. Bubbles will automatically disappear after moving for a period of time. When inside a bubble, the bubble will wait for a period of time before moving, and players can sprint to make the bubble move immediately

During the process of bubble movement, players can actively burst out of the bubble. After actively bursting out of the bubble, the bubble will disappear, and the player's speed will change to the speed during the sprint (3.9375 pixels) instead of the 4 pixel speed after the bubble automatically disappears

The wind direction mechanism will have an impact on the player's speed. Moving with the wind will be 1 pixel faster, and moving against the wind will be 1 pixel slower. Players will be swayed by the wind when there is no movement in place or in the air

### Mirror Temple

A red bubble appeared at this level, and in the last scene of the level, Theo, who was trapped in the crystal, needs to be transported

The mechanism of red bubbles is slightly different from that of green bubbles. Most of the same, they can be moved in a specified direction at a speed of 4 pixels. The difference is that green bubbles will disappear after a period of time, while red bubbles will not. Red bubbles will continue to move until they hit a wall or the player actively rushes out of the bubble

When transporting the Theo, the player's handling method is the same as grasping the turtle shell. Players cannot jump on the wall while holding Theo. Because jumping on the wall requires the player's action to stick to the wall and slide down before using it, holding Theo cannot trigger the stick to the wall

The mechanism when holding Theo is mostly the same as when holding a turtle shell. The difference is that Theo cannot slide or step on the ground

When Theo dies, it will also cause the player to die, and Theo's Abyss Fall Judgment is higher than the player's. When a player falls into the bottom of a level, there is a certain grace distance from the death judgment. Players can sprint out within this grace distance, but Theo cannot. Theo's judgment touches the edge at the bottom of the level and is considered dead

This level has empty turtle shells and Yaoxi. In the final scene, Theo can be thrown in a safe position and Yaoxi can have wings to fly over difficult areas using turtle shells

> The thorns of this game are different from the original game, and the priority of judgment is higher than bricks. Also, when Yaoxi encounters a round spike, the player will be judged dead
>
> Theo will not die when encountering thorns, and will also pass through when encountering round thorns

### Reflection

This level has feathers and Kevin blocks, and in the latter half of the level, it needs to face Madeline's negative (i.e. Badeline) opponent

Feather allows players to fly in the air for a period of time and control the flying angle during the flight

Due to the lack of a joystick, the angle of flight is controlled by the directional key, and when the directional key is released, it will not slow down like a feather in the celeste

During flight, there are a total of 24 directions in which the angle can be moved, and the diagonal direction is the slowest in terms of movement speed. The horizontal and vertical speeds are only 2 pixels per frame. At least one direction in other angles has a speed of 3 pixels per frame

The Kevin block will move after the player makes a sprint impact, in the direction of the player's impact

The movement speed of Kevin's block gradually accelerates, with a full speed of 3 pixels

The horizontal determination of Kevin's blocks is larger than the vertical determination, and sprinting on top of Kevin's blocks can easily cause angry blocks to move horizontally

When facing Badeline, players can launch an attack by touching Badeline, and after receiving damage, Badeline will move to a fixed position

After attacking Badeline, the player jumps up with a vertical speed of -6 pixels, and the horizontal speed is determined based on the position of Badeline to give a speed of 6 pixels per frame (if no speed is given, the player's current speed is the default)

Badeline's attack method is the same as celeste, firing a ball or laser to attack

### The Summit

Players at this level can sprint twice in a row and take further shortcuts. Additionally, players need to go through previously encountered levels

Players who pass through previously encountered levels are represented by meters in celeste, and successfully pass through a level to increase by 500 meters

Unlike Celeste, the game starts directly from 500 meters, which means starting from Forsaken City

> The 0 meter position is the Reflection level, and in Celeste, the Reflection level is located in a cave at the foot of the mountain

## RAM Watch

The following are the memory addresses that I monitored when creating TAS

|memory address|describe|size|Display method|
|-|-|-|-|
|0x000094|X position|2 byte|signed|
|0x000096|Y position|2 byte|signed|
|0x0013DA|X position(sub-pixel)|1 byte|hex|
|0x0013DC|Y postiton(sub-pixel)|1 byte|hex|
|0x00007B|X speed|1 byte|signed|
|0x00007D|Y speed|1 byte|signed|
|0x0013E4|acceleration|1 byte|unsigned|
|0x0018C5|dash count|1 byte|unsigned|
|0x0018C6|dash cooling|1 byte|unsigned|

> I may not have been able to pinpoint the speed value because there was no external change in the speed value in the Golden Ridge level when there was wind, but there was indeed an impact on speed

## Possible optimization points

- 6200 frame

  Changing the skip key may be faster

- 12700 frame

  Vertical springs may be able to be stepped on earlier

- 13910 frame

  This may not require a second wall jump to step on the shellless turtle

- 18770 frame

  This is an area that can be optimized and requires proper deceleration (the optimization point for this wind direction is only noticed when it is almost complete)

- 19185 frame

  Same as above

- 19590 frame

  If the position is slightly to the right and does not touch the individual thorn on the wall, then it can be faster

- 19715 frame

  Avoiding the spike and jumping on the wall did not slow down properly

- 20915 frame

  Failure to decelerate correctly after jumping on the wall

- 21025 frame

  Same as above

- 21320 frame

  If the green bubble here moves directly to the bottom right, it may be possible to use a sprint to hit the second bubble

- 23955 frame

  If the bubbles burst out later here, it may be faster

- 26440 frame

  Moving faster when stepping on the slow turtle here may save some time

- 34900 frame

  If this is faster than Kevin's blocks and can recover sprints, it may be faster

- 41140 frame

  The jumping height here can be optimized

- 44780 frame

  It's possible to jump earlier here

- 45460 frame

  It may be faster to use turtle shells here

- 46100 frame

  It may be faster to use sprints here to retain two sprints. It would be even better if we could directly pass through the rugby players

- 49200 frame

  It may be possible to reach the second platform above earlier here

- 51990 frame

  Using sprint jumping here may be faster
