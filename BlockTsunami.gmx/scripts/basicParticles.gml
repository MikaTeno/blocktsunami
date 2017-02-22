/*
particle_x = argument[0];
particle_y = argument[1];
*/
alarm[0] = 10;

part1_sys = part_system_create();
part_system_depth(part1_sys, 0);

part1 = part_type_create();
part_type_sprite(part1,sBasicBlock, 1, 0, 0);
part_type_scale(part1,1,1);
part_type_size(part1,0.5,1,-0.01,0);
//part_type_colour2(part1, c_blue, c_white);
part_type_alpha2(part1, 1, 0.75);
part_type_speed(part1, 0.1, 0.5, 0,0);
part_type_direction(part1,0,359,0,0);
part_type_gravity(part1,0.2,270);
part_type_life(part1,room_speed*2,room_speed*4);

part1_emit = part_emitter_create(part1_sys);
part_emitter_region(part1_sys, part1_emit, x-64, x+64, y-64, y+64,ps_shape_ellipse,ps_distr_gaussian);
part_emitter_stream(part1_sys, part1_emit, part1, 4);

