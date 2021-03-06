module hull(length=20, width=10, height=10) {
  base = 0;
  rim = 10;

  polyhedron(
    points = [
      [length/2, 0, height], [0, -width/2, height/2], [-length/2, 0, height], [0, width/2, height/2],
      [length/4, 0, base], [-length/4, 0, base]
    ],
    faces = [
      [0, 4, 1], [1, 4, 5], [2, 1, 5], // side
      [0, 3, 4], [3, 5, 4], [2, 5, 3], // side
      [0, 1, 3], [2, 3, 1] // cover
    ]
  )
  translate([10, 10, 0]) sphere(1);
}

module tower(width=2.5, height=15, length=5) {
  polyhedron(
    points = [
      [0, 0, height],  // top
      [length, 0, 0], [-length, 0, 0], // edges
      [0, width, 0], [0, -width, 0]  // sides
    ],
    faces = [
      [0, 3, 1], [0, 1, 4], [0, 2, 3], [0, 4, 2],
      [1, 3, 2], [1, 2, 4] // bottom
    ]
  );
}

module boat(tower=5, length=20, rim=10) {
  hull(length=length, width=length/2, height=rim);
  translate([0, 0, -1+rim/2]) tower(width=length/8, height=tower+1, length=length/4);
}

boat();
