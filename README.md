Use this for whatever, commercial or not.

Functions guide
{
1. move_to_object(Object,Speed)
{
This simply moves the object to a different object.
Object = Target Destination
Speed = How fast the object moves to said destination
Example: "
if(!being_looked_at)
{
move_to_object(obj_player,5)
}
"
}
2. move_to_location(X,Y,Speed)
{
This simply moves the object to the Location defined.
X = Target x value
Y = Target y value
Speed = How fast the object moves to said destination
Example: "
if(!intro_cutscene || start_of_game = true)
{
move_to_location(500,500,4)
}
"
}
3. go_to_random_location()
{
sets the objects position to a random one within the rooms size.
Example: "
if(clicked)
{
go_to_random_location()
}
"
}
4. constrain_to_room()
{
makes it so the object can not go out of bounds, the object cannot leave the bounds of the room and will be
blocked off at the edges simmilar to a wall.
Example: "
if(room == rm_world_map)
{
constrain_to_room
}
"
}
5. rotate_to(X,Y)
{
Rotates the sprite to face a location.
X = x value of where it should look
Y = y value of where it should look
Example: "
if(action_complete)
{
rotate_to(300,300)
}
"
}
6. rotate_to_object(Object)
{
Rotates the sprite to face another object.
Object = The object it should face.
Example: "
rotate_to_object(obj_player)
"
}
7. face_random_direction()
{
Makes the object face a random direction
Example: "
if(insane)
{
face_random_direction()
}
"
}
8. set_size(Size)
{
Sets the general size of the object.
Size = the scale of the objects sprite and hitbox (1 is default size)
Example: "
if(touching_mouse)
{
set_size(1.5)
}
else
set_size(1)
"
}
9. change_size_by(Amount)
{
Changes the general size of the object.
Amount = Changes the general scale of the object.
Example: "
if(touching_mouse)
{
if(size != 1.5)
{
change_size_by(0.1)
}
else if(size != 1)
{
change_size_by(-0.1)
}
"
}
10. set_fps_cap(Cap)
{
Sets a hard cap on the FPS (Frames Per Second) not letting it go past that amount.
Cap = The maximum value the FPS can achieve 
Example: "
if(global.FPS_Cap = 2)
{
set_fps_cap(60)
}
"
}
11. simple_camera_goto_position(X,Y,CameraID)
{
Rigidly sets the camera in your room's position.
X = camera's target x
Y = camera's target y
CameraID = the camera in your rooms ID
Example: "
if(jumpscare)
{
simple_camera_goto_position((room_width/2),(room_height/2),0)
}
"
}
12. smooth_camera_goto_position(X,Y,CameraID,Speed)
{
Smoothly sets the camera in your room's position.
X = camera's target x
Y = camera's target y
CameraID = the camera in your rooms ID
Speed = how fast the camera travels to the position
Example: "
if(summoning_cutscene == 5)
{
smooth_camera_goto_position(300,300,0,5)
}
"
}
13. simple_camera_follow_object(Object,CameraID)
{
Rigidly makes the camera follow an object.
Object = the object the camera should follow
CameraID = the camera in your rooms ID
Example: "
simple_camera_follow_object(obj_player,0)
"
}
14. smooth_camera_follow_object(Object,CameraID,Speed)
{
Smoothly makes the camera follow an object.
Object = the object the camera should follow
CameraID = the camera in your rooms ID
Speed = how fast the camera follows the object
Example: "
smooth_camera_follow_object(obj_player,0,2)
"
}
15. rick_roll()
{
I'm not explaining this one.
}
16. create_topdown_projectile_at_position(ProjectileObject,X,Y,Direction,Size,Speed,Layer)
{
Creates a topdown projectile at a location that is fired at a direction.
ProjectilObject = The object created (the projectile itself)
X = the x value its created at
Y = the y value its created at
Direction = the direction its fired in
Size = the size of the projectile
Speed = the speed at which the projectile goes
Layer = the layer its created on
}
17. create_topdown_projectile_at_object(ObjectFiredFrom,ProjectileObject,Direction,Size,Speed,Layer)
{
Creates a topdown projectile at a object that is fired at a direction.
ObjectFiredFrom = The object where its created at
ProjectilObject = The object created (the projectile itself)
Direction = the direction its fired in
Size = the size of the projectile
Speed = the speed at which the projectile goes
Layer = the layer its created on
}
18. shoot_topdown_projectile_at_object_from_object(ObjectFiredFrom,ProjectileObject,ObjectToShootAt,Size,Speed,Layer)
{
Creates a topdown projectile at a object that is fired at a direction.
ObjectFiredFrom = The object where its created at
ProjectilObject = The object created (the projectile itself)
ObjectToShootAt = the object to be shot at
Size = the size of the projectile
Speed = the speed at which the projectile goes
Layer = the layer its created on
}
19. shoot_topdown_projectile_at_object_from_position(X,Y,ProjectileObject,ObjectToShootAt,Size,Speed,Layer)
{
Creates a topdown projectile at a object that is fired at a direction.
X = The x value where its created at
Y = The y value where its created at
ProjectilObject = The object created (the projectile itself)
ObjectToShootAt = the object to be shot at
Size = the size of the projectile
Speed = the speed at which the projectile goes
Layer = the layer its created on
}
20. shoot_topdown_projectile_at_position_from_object(ObjectFiredFrom,ProjectileObject,X,Y,Size,Speed,Layer)
{
Creates a topdown projectile at a object that is fired at a direction.
ObjectFiredFrom = The object where its created at
ProjectilObject = The object created (the projectile itself)
ObjectToShootAt = the object to be shot at
Size = the size of the projectile
Speed = the speed at which the projectile goes
Layer = the layer its created on
}
21. shoot_topdown_projectile_at_position_from_position(XCreate,YCreate,ProjectileObject,XTarget,YTarget,Size,Speed,Layer)
{
Creates a topdown projectile at a object that is fired at a direction.
XCreate = The x value where its created at
YCreate = The y value where its created at
ProjectilObject = The object created (the projectile itself)
XTarget = the x value targeted
YTarget = the y value targeted
Size = the size of the projectile
Speed = the speed at which the projectile goes
Layer = the layer its created on
}

22. is_mouse_touching(Object)
{
Object = the object its checking.
}

23. set_resolution(Width,Height)
{
Width = resolution width
Height = resolution width
}

24. play_random_sound(Group,Priority,Loops,Min,Max)
{
Group = when making randomized sounds the group is ""_1 the number is the id of the sound and the "" is where
you put the group so for example Car_1, for example play_random_sound("Car",0,false,1,3).
priority doesnt matter, min is the lowest value so for the example
1 and max is the highest value so 3 for the example, and the rest is self explanatory.
}

25. play_random_sound_advanced_(Group,Priority,Loops,Gain,Offset,Pitch,ListenerMask,Min,Max)
{
same as play_random_sound with added more advanced settings
}
26. move_in_direction(Direction, Speed)
{
pick a direction to move in at a certain speed
}
27. wander_randomly(minspeed,maxspeed)
{
Makes the object wander around randomly within a speed range.
minspeed = Minimum speed at which the object will wander.
maxspeed = Maximum speed at which the object will wander.
Example:
if(game_state == "exploration")
{
    wander_randomly(2, 5)
}
}
28. fade_in(Object,Speed)
{
Gradually increases the opacity of the specified object until it is fully visible.
Object = The object to fade in.
Speed = How fast the object fades in.
Example:
if(player_enters_room)
{
    fade_in(obj_npc, 3)
}
}
29. fade_out(Object,Speed)
{
Gradually decreases the opacity of the specified object until it is invisible.
Object = The object to fade out.
Speed = How fast the object fades out.
Example:
if(player_enters_room)
{
    fade_out(obj_npc, 3)
}
}
30. get_random_point_in_circle(radius)
{
Generates a random point within a circle of the given radius.
radius = The radius of the circle within which the point is generated.
Example:
var point = get_random_point_in_circle(100)
move_to_location(point.x, point.y, 4)
}
31. is_in_view(Object, Margin)
{
Checks if the specified object is within the viewable area, considering the given margin.
Object = The object to check.
Margin = The margin around the viewable area.
Example:
if(is_in_view(obj_enemy, 10))
{
    alert_player = true;
}
32. orbit_around_object(Object, Distance, Speed)
{
Makes the object orbit around another specified object at a given distance and speed.
Object = The object to orbit around.
Distance = The distance from the object to maintain while orbiting.
Speed = The speed of the orbiting movement.
Example:
if(planet_mode)
{
    orbit_around_object(obj_star, 200, 1)
}
33. destroy_if_outside_room
Destroys the object if it goes outside the boundaries of the room.
Example:
if(binding_curse)
{
    destroy_if_outside_room()
}
34. wrap_around_screen()
{
Makes the object wrap around the screen edges, reappearing on the opposite side when it goes off-screen.
Example:
if(pacman_mode)
{
    wrap_around_screen()
}
}
35. create_object_at_random_position(Object, Layer)
{
Creates an instance of the specified object at a random position within the room on the given layer.
Object = The object to be created.
Layer = The layer on which the object is created.
Example:
if(spawn_enemies)
{
    create_object_at_random_position(obj_enemy, 1)
}
}

Shader Guide
{
SHADERS MUST BE PUT IN DRAW EVENT!!!

//RAINBOW EFFECTS!!!!
{
YIQ (recommended) sprite should be red, other colors are fine but red works best (BLACK IN WHITE CANT WORK)
var _shift = pi; // shifting set
_shift = current_time / 2000; // timer
shader_set(shdr_YIQ); 
shader_set_uniform_f(shader_get_uniform(shdr_YIQ, "shift"), -_shift); // setting up the shader 
draw_self(); // draw
shader_reset(); // reset to redo processes

HSV sprite should be red, other colors are fine but red works best (BLACK IN WHITE CANT WORK)
var _shift = pi; // shifting set
_shift = current_time / 2000; // timer
shader_set(shdr_HSV); 
shader_set_uniform_f(shader_get_uniform(shdr_HSV, "shift"), -_shift); // setting up the shader 
draw_self(); // draw
shader_reset(); // reset to redo processes

RGB sprite should be red, other colors are fine but red works best (BLACK IN WHITE CANT WORK)
var _shift = pi; // shifting set
_shift = current_time / 2000; // timer
shader_set(shdr_RGB); 
shader_set_uniform_f(shader_get_uniform(shdr_RGB, "shift"), -_shift); // setting up the shader 
draw_self(); // draw
shader_reset(); // reset to redo processes
}
}
