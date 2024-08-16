include <../roundedcube.scad> 
$fn=100;

module pinnit() {
  difference(){
    roundedcube([16.6,5,3],radius=0.7);
    for (x = [2.2:2.25:2*7])
      { translate([x,2.3,0]) cylinder(d=1.8,h=4);
      }
  }
}

module runko() {
  difference() {
    roundedcube([36,10,5],radius=1);
    translate([4,5,0])cylinder(d=3,h=10);
    translate([4,5,2.5])cylinder(d=6,h=10);
    translate([9,5-2.5-0.1,-2])roundedcube([16.6+0.2,5+0.2,10],radius=0.7);
    translate([25,3,2])cube([12,4,3]);
    translate([0,0,2])cube([40,1.2,1.2]);
    translate([0,9,2])cube([40,1.2,1.2]);
  }
  translate([32.5,(10-2.5)/2,-2.5])cube([3,2.5,2.5]);
  translate([33,(10-2.5)/2,-4])cube([3.5,2.5,1.5]);
}

module hattu(){
  difference(){
    union(){
      roundedcube([40,12.4,10],radius=2);
      translate([10,2.4,3]) roundedcube([30,8,10],radius=2);
    }
    translate([1,0.7,1.2])roundedcube([38,11,8],radius=1);
    cube([40,20,5]);
    translate([36,0,0])cube([10,15,20]);
    translate([5,6.3,0])cylinder(d=3,h=10);
    translate([11,3.4,4]) roundedcube([28,6,8],radius=1);
  }
  translate([5,0.5,5.8])cube([28,1,1]);
  translate([5,10.8,5.8])cube([28,1,1]);
}

module koossa() {
  difference(){
    union(){
      color("RED") runko();
      translate([-1,-1,-3.8]) hattu();
    }
    translate([-1,-1,0])cube(6);
  }
}

module printtaus() {
translate([0,13,13])rotate([180,0,0])hattu();
translate([0,0,5])rotate([180,0,0])runko();
 translate([0,14,0])pinnit();
}

//koossa();

printtaus();

