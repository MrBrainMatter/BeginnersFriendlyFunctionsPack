function move_to_object(Object,Speed)
{
	var target_x = Object.x
    var target_y = Object.y
    var dir = point_direction(x, y, target_x, target_y)
    var hspd = lengthdir_x(Speed, dir)
    var vspd = lengthdir_y(Speed, dir)
    x += hspd
    y += vspd
}

function move_to_location(X,Y,Speed)
{
    var dir = point_direction(x, y, X, Y)
    var hspd = lengthdir_x(Speed, dir)
    var vspd = lengthdir_y(Speed, dir)
    x += hspd
    y += vspd
}

function go_to_random_location()
{
	x = random_range(0,room_width)	
	y = random_range(0,room_height)	
}

function constrain_to_room()
{
var minX = sprite_width / 2
var maxX = room_width - sprite_width / 2
var minY = sprite_height / 2
var maxY = room_height - sprite_height / 2
var currentX = x
var currentY = y
if (currentX < minX)
    x = minX
if (currentX > maxX)
    x = maxX
if (currentY < minY)
    y = minY
if (currentY > maxY)
    y = maxY
}

function rotate_to(X,Y)
{
image_angle = point_direction(x,y,X,Y)	
}

function rotate_to_object(Object)
{
image_angle = point_direction(x,y,Object.x,Object.y)	
}

function face_random_direction()
{
image_angle = irandom_range(0,360);
}

function set_size(Size)
{
image_xscale = Size	
image_yscale = Size	
}

function change_size_by(Amount)
{
image_xscale += Amount	
image_yscale += Amount	
}

function set_fps_cap(Cap)
{
room_speed = Cap;	
}

function simple_camera_goto_position(X,Y,CameraID)
{
var camera_x = X;
var camera_y = Y;
var target_cam_x = X - view_wview[0] / 2;
var target_cam_y = Y - view_hview[0] / 2;

camera_x = target_cam_x;
camera_y = target_cam_y;

camera_set_view_pos(view_camera[CameraID], camera_x, camera_y);
}

function smooth_camera_goto_position(X,Y,CameraID,Speed)
{
var lerp_speed = Speed;
var camera_x = X;
var camera_y = Y;
var target_cam_x = X - view_wview[0] / 2;
var target_cam_y = Y - view_hview[0] / 2;

camera_x = lerp(camera_x, target_cam_x, lerp_speed);
camera_y = lerp(camera_y, target_cam_y, lerp_speed);

camera_set_view_pos(view_camera[CameraID], camera_x, camera_y);
}

function simple_camera_follow_object(Object,CameraID)
{
var camera_x = Object.x;
var camera_y = Object.y;
var target_cam_x = Object.x - view_wview[0] / 2;
var target_cam_y = Object.y - view_hview[0] / 2;

camera_x = target_cam_x;
camera_y = target_cam_y;

camera_set_view_pos(view_camera[CameraID], camera_x, camera_y);
}

function smooth_camera_follow_object(Object,CameraID,Speed)
{
var lerp_speed = Speed;
var camera_x = Object.x;
var camera_y = Object.y;
var target_cam_x = Object.x - view_wview[0] / 2;
var target_cam_y = Object.y - view_hview[0] / 2;

camera_x = lerp(camera_x, target_cam_x, lerp_speed);
camera_y = lerp(camera_y, target_cam_y, lerp_speed);

camera_set_view_pos(view_camera[CameraID], camera_x, camera_y);
}

function set_resolution(Width,Height)
{
	 window_set_size(Width, Height)
     surface_resize(application_surface,Width, Height)
}

function rick_roll()
{
url_open("https://www.youtube.com/watch?v=dQw4w9WgXcQ");
}

function create_topdown_projectile_at_position(ProjectileObject,X,Y,Direction,Size,Speed,Layer)
{
 var _proj = instance_create_layer(X, Y, Layer, ProjectileObject)
    _proj.speed = Speed
    _proj.direction = Direction
    _proj.image_angle = Direction
    _proj.image_xscale = Size
    _proj.image_yscale = Size
}

function create_topdown_projectile_at_object(ObjectFiredFrom,ProjectileObject,Direction,Size,Speed,Layer)
{
 var _proj = instance_create_layer(ObjectFiredFrom.x, ObjectFiredFrom.y, Layer, ProjectileObject)
    _proj.speed = Speed
    _proj.direction = Direction
    _proj.image_angle = Direction
    _proj.image_xscale = Size
    _proj.image_yscale = Size
}

function shoot_topdown_projectile_at_object_from_object(ObjectFiredFrom,ProjectileObject,ObjectToShootAt,Size,Speed,Layer)
{
 var _proj = instance_create_layer(ObjectFiredFrom.x, ObjectFiredFrom.y, Layer, ProjectileObject)
    _proj.speed = Speed
    _proj.direction = point_direction(ObjectFiredFrom.x,ObjectFiredFrom.y,ObjectToShootAt.x,ObjectToShootAt.y)
    _proj.image_angle = point_direction(ObjectFiredFrom.x,ObjectFiredFrom.y,ObjectToShootAt.x,ObjectToShootAt.y)
    _proj.image_xscale = Size
    _proj.image_yscale = Size
}

function shoot_topdown_projectile_at_object_from_position(X,Y,ProjectileObject,ObjectToShootAt,Size,Speed,Layer)
{
 var _proj = instance_create_layer(X, Y, Layer, ProjectileObject)
    _proj.speed = Speed
    _proj.direction = point_direction(X,Y,ObjectToShootAt.x,ObjectToShootAt.y)
    _proj.image_angle = point_direction(X,Y,ObjectToShootAt.x,ObjectToShootAt.y)
    _proj.image_xscale = Size
    _proj.image_yscale = Size
}

function shoot_topdown_projectile_at_position_from_object(ObjectFiredFrom,ProjectileObject,X,Y,Size,Speed,Layer)
{
 var _proj = instance_create_layer(ObjectFiredFrom.x, ObjectFiredFrom.y, Layer, ProjectileObject)
    _proj.speed = Speed
    _proj.direction = point_direction(ObjectFiredFrom.x,ObjectFiredFrom.y,X,Y)
    _proj.image_angle = point_direction(ObjectFiredFrom.x,ObjectFiredFrom.y,X,Y)
    _proj.image_xscale = Size
    _proj.image_yscale = Size
}

function shoot_topdown_projectile_at_position_from_position(XCreate,YCreate,ProjectileObject,XTarget,YTarget,Size,Speed,Layer)
{
 var _proj = instance_create_layer(XCreate, YCreate, Layer, ProjectileObject)
    _proj.speed = Speed
    _proj.direction = point_direction(XCreate,YCreate,XTarget,YTarget)
    _proj.image_angle = point_direction(XCreate,YCreate,XTarget,YTarget)
    _proj.image_xscale = Size
    _proj.image_yscale = Size
}

function is_mouse_touching(Object) {
    return instance_position(mouse_x, mouse_y, Object);
}

function play_random_sound(Group,Priority,Loops,Min,Max)
{
    var rand_val = irandom_range(Min,Max);
    var finalsound = asset_get_index(string(Group) + "_" + string(rand_val));
    
    // Check if the sound exists
    if (finalsound != -1)
    {
        audio_play_sound(finalsound, Priority, Loops);
    }
    else
    {
        show_debug_message("Error: Sound " + string(Group) + "_" + string(rand_val) + " does not exist.");
    }
}

function play_random_sound_advanced(Group,Priority,Loops,Gain,Offset,Pitch,ListenerMask,Min,Max)
{
    var rand_val = irandom_range(Min,Max);
    var finalsound = asset_get_index(string(Group) + "_" + string(rand_val));
    
    // Check if the sound exists
    if (finalsound != -1)
    {
        audio_play_sound(finalsound, Priority, Loops,Gain,Offset,Pitch,ListenerMask);
    }
    else
    {
        show_debug_message("Error: Sound " + string(Group) + "_" + string(rand_val) + " does not exist.");
    }
}

function move_in_direction(Direction, Speed) {
    var rad = degtorad(Direction);
    x += lengthdir_x(Speed, rad);
    y += lengthdir_y(Speed, rad);
}

function wander_randomly(minspeed,maxspeed) {
    var random_direction = irandom(359);
    var _speed = irandom_range(minspeed,maxspeed);
    move_in_direction(random_direction, _speed);
}

function fade_in(Object, Speed) {
    if (Object.image_alpha < 1) {
        Object.image_alpha += Speed;
    }
}

function fade_out(Object, Speed) {
    if (Object.image_alpha > 0) {
        Object.image_alpha -= Speed;
    }
}

function get_random_point_in_circle(radius) {
    var angle = irandom_range(0, 360);
    var distance = irandom_range(0, radius);
    return { x: lengthdir_x(distance, angle), y: lengthdir_y(distance, angle) };
}

function is_in_view(object, margin) {
    margin = margin || 0;
    return (object.x > camera_get_view_x(view_camera[0]) - margin &&
            object.x < camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + margin &&
            object.y > camera_get_view_y(view_camera[0]) - margin &&
            object.y < camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) + margin);
}

function orbit_around_object(object, Distance, Speed) {
    var angle = direction + Speed;
    x = object.x + lengthdir_x(Distance, angle);
    y = object.y + lengthdir_y(Distance, angle);
    direction = angle; // Store the current angle in a variable
}

function destroy_if_outside_room() {
    if (x < 0 || x > room_width || y < 0 || y > room_height) {
        instance_destroy();
    }
}

function wrap_around_screen() {
    if (x < 0) x = room_width;
    if (x > room_width) x = 0;
    if (y < 0) y = room_height;
    if (y > room_height) y = 0;
}

function create_object_at_random_position(object, Layer) {
    var rand_x = irandom(room_width);
    var rand_y = irandom(room_height);
    instance_create_layer(rand_x, rand_y, Layer, object);
}