module roman_candle_holder(hole_radius=9) {
    $fn = 360;
    height=60;
    base=30;
    
    difference(){
        cylinder(height, base);
  
        // Candle Hole
        translate([0,0,-0.1])
        cylinder(height+0.2, hole_radius, hole_radius);
        
        // Carve out Bottom
        color("red")
        translate([0,0,-0.1])
        cylinder(height/2, 20, 9);
    }
}

color("grey")
roman_candle_holder(9);