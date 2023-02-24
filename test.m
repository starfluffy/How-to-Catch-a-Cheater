f1 = [10 30 20; 2 4 7];
f2 = [30 40 30 10; 1 3 5 7];
f3 = [21 50 60; 1 4 7];

[p1,p2] = FindMatchPositions(f1,f2)
[p3,p4] = FindMatchPositions(f1,f1)
[p5,p6] = FindMatchPositions(f1,f3)