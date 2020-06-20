// Vincent Moeykens, 2020

echo(version=version());

baseX = 25;
baseY = 25;
baseZ = 1;
shaftHeight = 3;
shaftDiameter = 4;
buttonHeight = 2;
buttonDiameter = 9;

// simple 2D -> 3D extrusion of a rectangle
color("red")
linear_extrude(height = baseZ)
square([baseX, baseY], center = true);
translate([0, 0, baseZ])
    linear_extrude(height = shaftHeight)
        circle(d=shaftDiameter, $fn=50);
translate([0, 0, baseZ + shaftHeight])
    linear_extrude(height = buttonHeight)
        circle(d=buttonDiameter, $fn=100);