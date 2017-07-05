clipw = 10.5;
clipt = 1.5;
clipl = 25;
screwsp = 32;
screwd = 3;

w = screwsp-screwd*4;

$fn=18;

difference() {
   union() {
      hull() {
         translate([-screwsp/2,0,0]) cylinder(d=screwd*2, h=4);
         translate([screwsp/2,0,0]) cylinder(d=screwd*2, h=4);
      }
      translate([-w/2,-screwd,0]) cube([w, screwd*2, clipl]);
      hull() {
         translate([-w/2,-screwd,clipl-1]) cube([w, screwd*2, 1]);
         translate([-w/2,-clipw,clipl+clipw])
            rotate([0,90,0]) 
            cylinder(d=screwd*2,h=w);
      }
   }
   union() {
      translate([-screwsp/2,0,0]) cylinder(d=screwd, h=5);
      translate([screwsp/2,0,0]) cylinder(d=screwd, h=5);
      
      // zip tie holes
      translate([w/2-5,-screwd*2,clipl-1])
         rotate([-45,0,0]) cube([5,2,clipw*2],center=true);
      translate([-w/2+5,-screwd*2,clipl-1])
         rotate([-45,0,0]) cube([5,2,clipw*2],center=true);
      translate([w/2-5,-screwd*2,clipl+clipw+3])
         rotate([-45,0,0]) cube([5,2,clipw*2],center=true);
      translate([-w/2+5,-screwd*2,clipl+clipw+3])
         rotate([-45,0,0]) cube([5,2,clipw*2],center=true);
   }
}