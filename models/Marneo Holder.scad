bw = 20;
bl = 40;
ht = 8;
bt = 1.7;
w = 2;
o = 1.6;

difference() {
   cube([bw+w*2,bl,ht]);
   union() {
      translate([w,0,ht-bt-2]) cube([bw,bl+1,bt]);
      translate([w*1.5,0,ht-bt-4]) cube([bw-w,bl+1,ht]);
      hull() {
         translate([w,0,ht]) cube([bw,bl+1,0.1]);
         translate([w+o/2,0,ht-2.1]) cube([bw-o,bl+1,bt]);
      }
   }
}