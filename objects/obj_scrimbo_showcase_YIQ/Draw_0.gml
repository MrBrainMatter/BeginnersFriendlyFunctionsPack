var _shift = pi; // shifting set
_shift = current_time / 2000; // timer
shader_set(shdr_YIQ); 
shader_set_uniform_f(shader_get_uniform(shdr_YIQ, "shift"), -_shift); // setting up the shader 
draw_self(); // draw
shader_reset(); // reset to redo processes\
draw_text(x,y,"YIQ")