module boat(length=20, width=10, height=10) {
  base = 0;
  rim = 10;

  polyhedron(
    points = [
      [length/2, 0, height], [0, -width/2, height/2], [-length/2, 0, height], [0, width/2, height/2],
      [length/4, 0, base], [-length/4, 0, base]
    ],
    triangles = [
      [0, 4, 1], [1, 4, 5], [2, 1, 5], // side
      [0, 4, 3], [3, 4, 5], [2, 3, 5], // side
      [0, 1, 3], [2, 1, 3] // cover
    ]
  )
  translate([10, 10, 0]) sphere(1);
}

//  SIDE          TOP
//  A---B---C        B
//    D---E       A     C
//                   B

boat();
tower();
