// lcd_size=[24, 34, 9];
lcd_size=[38, 56, 11.2];

battery_size=[50, 36, 12];
box_size=[95, 70, 25];
board_size=[lcd_size[0] * 2 + 1, box_size[1]-5, 3];
knob_h=15;
knob_r=12.5;
encoder_size=[15, 15, 15];
buzzer_r=8;
buzzer_h=10;

// battery
translate([-box_size[0]/2, box_size[1]/2 - battery_size[1], 0]) {
    color("black", 0.2) cube(battery_size);
}

// lcd
translate([-lcd_size[0], -lcd_size[1] / 2, box_size[2] - lcd_size[2]]) {
    translate([0 - 0.5, 0, 0]) color("white", 0.5) cube(lcd_size);
    translate([lcd_size[0] + 0.5, 0, 0]) color("white", 0.5) cube(lcd_size);
}

// board
translate([-board_size[0]/2, -board_size[1]/2, box_size[2] - lcd_size[2] - board_size[2]]) {
    color("green", 0.2) cube(board_size);
}

// knob
translate([box_size[0]/2, 0, box_size[2]/2 - 3]) {
    color("red", 0.1) rotate([0, 90, 0]) cylinder(knob_h, knob_r, knob_r);
    color("black") translate([-encoder_size[0], -encoder_size[1]/2 , -encoder_size[2]/2]) cube(encoder_size);
}

// buzzer
translate([0, -box_size[1]/2 + buzzer_r + 5, box_size[2] - lcd_size[2] - board_size[2] - buzzer_h]) {
    color("black", 0.2) cylinder(buzzer_h, buzzer_r, buzzer_r);
}

// box
translate([-box_size[0]/2, -box_size[1]/2, -3]) {
    color("blue", 0.1) cube(box_size);
}