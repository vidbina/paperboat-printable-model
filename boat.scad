module boat(length=30, width=30, height=10) {
  base = 0;
  rim = 10;

  polyhedron(
    points = [
      [10, 0, rim], [0, -5, rim-5], [-10, 0, rim], [0, 5, rim-5],
      [5, 0, base], [-5, 0, base]
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
