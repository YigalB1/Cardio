line_w = 2;
line_h = 2;



p1_length = 20;
color("gray") cube([p1_length,line_w, line_h]);

module wave(_start,_step,_angle,_jump,_amplitude,_color="gray") {
    for(i=[0:_step:_angle]) {
        Xsin = _amplitude*sin(i);
        translate([_start+i/_jump,Xsin,0])
            color(_color) cube([_step,line_w, line_h]);
    }
};


p2_amplitude = 20;
p2_start = p1_length;
p2_step = 0.1;
p2_angle = 180;
p2_jump = 5;
wave(p2_start,p2_step,p2_angle,p2_jump,p2_amplitude,"green");

/*
for(i=[0:p2_step:p2_angle]) {
    Xsin = p2_amplitude*sin(i);
    translate([p2_start+i/p2_jump,Xsin,0])
        cube([p2_step,line_w, line_h]);
    }
*/   

p3_start = p1_length+p2_angle/p2_jump;    
p3_length = 20;
translate([p3_start,0,0])
    color("black") cube([p3_length,line_w, line_h]);    

p4_amplitude = -30;
p4_start = p3_start+p3_length;
p4_step = 0.1;
p4_angle = 180;
p4_jump = 20;
wave(p4_start,p4_step,p4_angle,p4_jump,p4_amplitude,"orange");

/*
for(i=[0:p2_step:p4_angle]) {
    Xsin = p4_amplitude*sin(i);
    p4_x = p4_start+i/p4_jump;
    translate([p4_x,Xsin,0])
        cube([p4_step,line_w, line_h]);
} */

p5_amplitude = 90;
p5_start = p4_start+p4_angle/p4_jump;
p5_step = 0.1;
p5_angle = 180;
p5_jump = 20;
wave(p5_start,p5_step,p5_angle,p5_jump,p5_amplitude,"red");
/*
for(i=[0:p5_step:p5_angle]) {
    Xsin = p5_amplitude*sin(i);
    p5_x = p5_start+i/p5_jump;
    translate([p5_x,Xsin,0])
        cube([p5_step,line_w, line_h]);
}*/
    
p6_amplitude = -50;
p6_start = p5_start+p5_angle/p5_jump;
p6_step = 0.1;
p6_angle = 180;
p6_jump = 20;
wave(p6_start,p6_step,p6_angle,p6_jump,p6_amplitude,"purple");
/*
for(i=[0:p6_step:p6_angle]) {
    Xsin = p6_amplitude*sin(i);
    p6_x = p6_start+i/p6_jump;
    translate([p6_x,Xsin,0])
        cube([p6_step,line_w, line_h]);
}*/
    
    
p7_start = p6_start+p6_angle/p6_jump;    
p7_length = 20;
translate([p7_start,0,0])
    color("gray") cube([p7_length,line_w, line_h]);    
    
    
    
    
p8_amplitude = 30;
p8_start = p7_start+p7_length;
p8_step = 0.1;
p8_angle = 180;
p8_jump = 5;
wave(p8_start,p8_step,p8_angle,p8_jump,p8_amplitude,"blue");

/*
for(i=[0:p7_step:p7_angle]) {
    Xsin = p7_amplitude*sin(i);
    translate([p7_start+i/p7_jump,Xsin,0])
        cube([p7_step,line_w, line_h]);
}*/
    
p9_length = 20;
p9_start = p8_start+p8_angle/p8_jump;
translate([p9_start,0,0])
    color("gray") cube([p9_length,line_w, line_h]);   
    
    

