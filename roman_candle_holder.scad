module roman_candle_holder(hole_radius=9) {
    $fn = 360;
    height=120;
    base=60;
    
    difference(){
        cylinder(height, base);
  
        // Candle Hole
        translate([0,0,-0.1])
        cylinder(height+0.2, hole_radius, hole_radius);
        
        // Carve out Bottom
        color("red")
        translate([0,0,-0.1])
        cylinder(height/2, base-10, 9);
    }
}

color("grey")
roman_candle_holder(9.5);