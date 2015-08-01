module boat(length=30, width=30, height=10) {
  base = 0;
  polyhedron(
    points = [
      [10, 10, base], [10, -10, base], [-10, -10, base], [-10, 10, base],  // base
      [0, 0, height] // apex
    ], 
    triangles = [
      [0, 1, 4], [1, 2, 4], [2, 3, 4], [3, 0, 4],
      [1, 0, 3], [2, 1, 3]
    ]
  );
  translate([10, 10, 0]) sphere(1);
}

//  SIDE          TOP
//  A---B---C        B
//    D---E       A     C
//                   B

boat();
