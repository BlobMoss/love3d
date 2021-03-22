local tri_table = {}

--A table of 256 tables, each corresponding to an unique configuration of triangles
tri_table.triangulation = {
    {},
    { 1, 9, 4 },
    { 1, 2, 10 },
    { 2, 9, 4, 10, 9, 2 },
    { 2, 3, 11 },
    { 1, 9, 4, 2, 3, 11 },
    { 10, 3, 11, 1, 3, 10 },
    { 3, 9, 4, 3, 11, 9, 11, 10, 9 },
    { 4, 12, 3 },
    { 1, 12, 3, 9, 12, 1 },
    { 2, 10, 1, 3, 4, 12 },
    { 2, 12, 3, 2, 10, 12, 10, 9, 12 },
    { 4, 11, 2, 12, 11, 4 },
    { 1, 11, 2, 1, 9, 11, 9, 12, 11 },
    { 4, 10, 1, 4, 12, 10, 12, 11, 10 },
    { 10, 9, 11, 11, 9, 12 },
    { 5, 8, 9 },
    { 5, 4, 1, 8, 4, 5 },
    { 1, 2, 10, 9, 5, 8 },
    { 5, 2, 10, 5, 8, 2, 8, 4, 2 },
    { 2, 3, 11, 9, 5, 8 },
    { 4, 5, 8, 4, 1, 5, 2, 3, 11 },
    { 10, 3, 11, 10, 1, 3, 9, 5, 8 },
    { 3, 11, 10, 3, 10, 8, 3, 8, 4, 8, 10, 5 },
    { 9, 5, 8, 4, 12, 3 },
    { 12, 5, 8, 12, 3, 5, 3, 1, 5 },
    { 10, 1, 2, 9, 5, 8, 3, 4, 12 },
    { 5, 8, 12, 10, 5, 12, 10, 12, 3, 10, 3, 2 },
    { 4, 11, 2, 4, 12, 11, 8, 9, 5 },
    { 2, 12, 11, 2, 5, 12, 2, 1, 5, 8, 12, 5 },
    { 5, 8, 9, 10, 1, 12, 10, 12, 11, 12, 1, 4 },
    { 5, 8, 12, 5, 12, 10, 10, 12, 11 },
    { 10, 6, 5 },
    { 10, 6, 5, 1, 9, 4 },
    { 1, 6, 5, 2, 6, 1 },
    { 9, 6, 5, 9, 4, 6, 4, 2, 6 },
    { 2, 3, 11, 10, 6, 5 },
    { 4, 1, 9, 2, 3, 11, 5, 10, 6 },
    { 6, 3, 11, 6, 5, 3, 5, 1, 3 },
    { 3, 11, 6, 4, 3, 6, 4, 6, 5, 4, 5, 9 },
    { 10, 6, 5, 3, 4, 12 },
    { 1, 12, 3, 1, 9, 12, 5, 10, 6 },
    { 1, 6, 5, 1, 2, 6, 3, 4, 12 },
    { 3, 2, 6, 3, 6, 9, 3, 9, 12, 5, 9, 6 },
    { 11, 4, 12, 11, 2, 4, 10, 6, 5 },
    { 5, 10, 6, 1, 9, 2, 9, 11, 2, 9, 12, 11 },
    { 6, 5, 1, 6, 1, 12, 6, 12, 11, 12, 1, 4 },
    { 6, 5, 9, 6, 9, 11, 11, 9, 12 },
    { 10, 8, 9, 6, 8, 10 },
    { 10, 4, 1, 10, 6, 4, 6, 8, 4 },
    { 1, 8, 9, 1, 2, 8, 2, 6, 8 },
    { 2, 6, 4, 4, 6, 8 },
    { 10, 8, 9, 10, 6, 8, 11, 2, 3 },
    { 11, 2, 3, 10, 6, 1, 6, 4, 1, 6, 8, 4 },
    { 9, 1, 3, 9, 3, 6, 9, 6, 8, 11, 6, 3 },
    { 3, 11, 6, 3, 6, 4, 4, 6, 8 },
    { 8, 10, 6, 8, 9, 10, 4, 12, 3 },
    { 10, 6, 8, 10, 8, 3, 10, 3, 1, 3, 8, 12 },
    { 3, 4, 12, 1, 2, 9, 2, 8, 9, 2, 6, 8 },
    { 12, 3, 2, 12, 2, 8, 8, 2, 6 },
    { 10, 6, 9, 9, 6, 8, 11, 2, 4, 11, 4, 12 },
    { 6, 8, 1, 6, 1, 10, 8, 12, 1, 2, 1, 11, 12, 11, 1 },
    { 12, 11, 1, 12, 1, 4, 11, 6, 1, 9, 1, 8, 6, 8, 1 },
    { 12, 11, 6, 8, 12, 6 },
    { 11, 7, 6 },
    { 1, 9, 4, 6, 11, 7 },
    { 10, 1, 2, 6, 11, 7 },
    { 2, 9, 4, 2, 10, 9, 6, 11, 7 },
    { 2, 7, 6, 3, 7, 2 },
    { 2, 7, 6, 2, 3, 7, 4, 1, 9 },
    { 10, 7, 6, 10, 1, 7, 1, 3, 7 },
    { 6, 10, 9, 6, 9, 3, 6, 3, 7, 4, 3, 9 },
    { 3, 4, 12, 11, 7, 6 },
    { 12, 1, 9, 12, 3, 1, 11, 7, 6 },
    { 1, 2, 10, 3, 4, 12, 6, 11, 7 },
    { 6, 11, 7, 2, 10, 3, 10, 12, 3, 10, 9, 12 },
    { 7, 4, 12, 7, 6, 4, 6, 2, 4 },
    { 1, 9, 12, 1, 12, 6, 1, 6, 2, 6, 12, 7 },
    { 4, 12, 7, 1, 4, 7, 1, 7, 6, 1, 6, 10 },
    { 7, 6, 10, 7, 10, 12, 12, 10, 9 },
    { 6, 11, 7, 5, 8, 9 },
    { 5, 4, 1, 5, 8, 4, 7, 6, 11 },
    { 2, 10, 1, 6, 11, 7, 9, 5, 8 },
    { 11, 7, 6, 2, 10, 8, 2, 8, 4, 8, 10, 5 },
    { 7, 2, 3, 7, 6, 2, 5, 8, 9 },
    { 2, 3, 6, 6, 3, 7, 4, 1, 5, 4, 5, 8 },
    { 9, 5, 8, 10, 1, 6, 1, 7, 6, 1, 3, 7 },
    { 8, 4, 10, 8, 10, 5, 4, 3, 10, 6, 10, 7, 3, 7, 10 },
    { 4, 12, 3, 8, 9, 5, 11, 7, 6 },
    { 6, 11, 7, 5, 8, 3, 5, 3, 1, 3, 8, 12 },
    { 1, 2, 10, 5, 8, 9, 3, 4, 12, 6, 11, 7 },
    { 10, 3, 2, 10, 12, 3, 10, 5, 12, 8, 12, 5, 6, 11, 7 },
    { 9, 5, 8, 4, 12, 6, 4, 6, 2, 6, 12, 7 },
    { 6, 2, 12, 6, 12, 7, 2, 1, 12, 8, 12, 5, 1, 5, 12 },
    { 1, 6, 10, 1, 7, 6, 1, 4, 7, 12, 7, 4, 9, 5, 8 },
    { 7, 6, 10, 7, 10, 12, 5, 8, 10, 8, 12, 10 },
    { 11, 5, 10, 7, 5, 11 },
    { 5, 11, 7, 5, 10, 11, 1, 9, 4 },
    { 11, 1, 2, 11, 7, 1, 7, 5, 1 },
    { 9, 4, 2, 9, 2, 7, 9, 7, 5, 7, 2, 11 },
    { 2, 5, 10, 2, 3, 5, 3, 7, 5 },
    { 4, 1, 9, 2, 3, 10, 3, 5, 10, 3, 7, 5 },
    { 1, 3, 5, 5, 3, 7 },
    { 9, 4, 3, 9, 3, 5, 5, 3, 7 },
    { 11, 5, 10, 11, 7, 5, 12, 3, 4 },
    { 1, 9, 3, 3, 9, 12, 5, 10, 11, 5, 11, 7 },
    { 4, 12, 3, 1, 2, 7, 1, 7, 5, 7, 2, 11 },
    { 7, 5, 2, 7, 2, 11, 5, 9, 2, 3, 2, 12, 9, 12, 2 },
    { 10, 7, 5, 10, 4, 7, 10, 2, 4, 12, 7, 4 },
    { 9, 12, 2, 9, 2, 1, 12, 7, 2, 10, 2, 5, 7, 5, 2 },
    { 4, 12, 7, 4, 7, 1, 1, 7, 5 },
    { 7, 5, 9, 12, 7, 9 },
    { 8, 11, 7, 8, 9, 11, 9, 10, 11 },
    { 1, 8, 4, 1, 11, 8, 1, 10, 11, 7, 8, 11 },
    { 11, 7, 8, 2, 11, 8, 2, 8, 9, 2, 9, 1 },
    { 11, 7, 8, 11, 8, 2, 2, 8, 4 },
    { 2, 3, 7, 2, 7, 9, 2, 9, 10, 9, 7, 8 },
    { 3, 7, 10, 3, 10, 2, 7, 8, 10, 1, 10, 4, 8, 4, 10 },
    { 8, 9, 1, 8, 1, 7, 7, 1, 3 },
    { 8, 4, 3, 7, 8, 3 },
    { 3, 4, 12, 11, 7, 9, 11, 9, 10, 9, 7, 8 },
    { 3, 1, 8, 3, 8, 12, 1, 10, 8, 7, 8, 11, 10, 11, 8 },
    { 2, 9, 1, 2, 8, 9, 2, 11, 8, 7, 8, 11, 3, 4, 12 },
    { 12, 3, 2, 12, 2, 8, 11, 7, 2, 7, 8, 2 },
    { 9, 10, 7, 9, 7, 8, 10, 2, 7, 12, 7, 4, 2, 4, 7 },
    { 1, 10, 2, 12, 7, 8 },
    { 8, 9, 1, 8, 1, 7, 4, 12, 1, 12, 7, 1 },
    { 8, 12, 7 },
    { 8, 7, 12 },
    { 4, 1, 9, 12, 8, 7 },
    { 1, 2, 10, 12, 8, 7 },
    { 9, 2, 10, 9, 4, 2, 12, 8, 7 },
    { 11, 2, 3, 7, 12, 8 },
    { 2, 3, 11, 4, 1, 9, 7, 12, 8 },
    { 3, 10, 1, 3, 11, 10, 7, 12, 8 },
    { 7, 12, 8, 3, 11, 4, 11, 9, 4, 11, 10, 9 },
    { 8, 3, 4, 7, 3, 8 },
    { 8, 1, 9, 8, 7, 1, 7, 3, 1 },
    { 3, 8, 7, 3, 4, 8, 1, 2, 10 },
    { 2, 7, 3, 2, 9, 7, 2, 10, 9, 9, 8, 7 },
    { 11, 8, 7, 11, 2, 8, 2, 4, 8 },
    { 11, 8, 7, 2, 8, 11, 2, 9, 8, 2, 1, 9 },
    { 1, 4, 8, 1, 8, 11, 1, 11, 10, 7, 11, 8 },
    { 8, 7, 11, 8, 11, 9, 9, 11, 10 },
    { 7, 9, 5, 12, 9, 7 },
    { 4, 7, 12, 4, 1, 7, 1, 5, 7 },
    { 9, 7, 12, 9, 5, 7, 10, 1, 2 },
    { 10, 5, 7, 10, 7, 4, 10, 4, 2, 12, 4, 7 },
    { 7, 9, 5, 7, 12, 9, 3, 11, 2 },
    { 2, 3, 11, 4, 1, 12, 1, 7, 12, 1, 5, 7 },
    { 5, 12, 9, 5, 7, 12, 1, 3, 10, 3, 11, 10 },
    { 11, 10, 4, 11, 4, 3, 10, 5, 4, 12, 4, 7, 5, 7, 4 },
    { 9, 3, 4, 9, 5, 3, 5, 7, 3 },
    { 1, 5, 3, 5, 7, 3 },
    { 2, 10, 1, 3, 4, 5, 3, 5, 7, 5, 4, 9 },
    { 2, 10, 5, 2, 5, 3, 3, 5, 7 },
    { 9, 2, 4, 9, 7, 2, 9, 5, 7, 7, 11, 2 },
    { 11, 2, 1, 11, 1, 7, 7, 1, 5 },
    { 5, 7, 4, 5, 4, 9, 7, 11, 4, 1, 4, 10, 11, 10, 4 },
    { 11, 10, 5, 7, 11, 5 },
    { 5, 10, 6, 8, 7, 12 },
    { 1, 9, 4, 5, 10, 6, 12, 8, 7 },
    { 6, 1, 2, 6, 5, 1, 8, 7, 12 },
    { 12, 8, 7, 9, 4, 5, 4, 6, 5, 4, 2, 6 },
    { 10, 6, 5, 11, 2, 3, 8, 7, 12 },
    { 7, 12, 8, 2, 3, 11, 1, 9, 4, 5, 10, 6 },
    { 8, 7, 12, 6, 5, 11, 5, 3, 11, 5, 1, 3 },
    { 4, 5, 9, 4, 6, 5, 4, 3, 6, 11, 6, 3, 12, 8, 7 },
    { 8, 3, 4, 8, 7, 3, 6, 5, 10 },
    { 10, 6, 5, 1, 9, 7, 1, 7, 3, 7, 9, 8 },
    { 4, 7, 3, 4, 8, 7, 2, 6, 1, 6, 5, 1 },
    { 7, 3, 9, 7, 9, 8, 3, 2, 9, 5, 9, 6, 2, 6, 9 },
    { 10, 6, 5, 11, 2, 7, 2, 8, 7, 2, 4, 8 },
    { 2, 7, 11, 2, 8, 7, 2, 1, 8, 9, 8, 1, 10, 6, 5 },
    { 5, 1, 11, 5, 11, 6, 1, 4, 11, 7, 11, 8, 4, 8, 11 },
    { 8, 7, 11, 8, 11, 9, 6, 5, 11, 5, 9, 11 },
    { 7, 10, 6, 7, 12, 10, 12, 9, 10 },
    { 4, 7, 12, 1, 7, 4, 1, 6, 7, 1, 10, 6 },
    { 1, 12, 9, 1, 6, 12, 1, 2, 6, 6, 7, 12 },
    { 7, 12, 4, 7, 4, 6, 6, 4, 2 },
    { 2, 3, 11, 10, 6, 12, 10, 12, 9, 12, 6, 7 },
    { 1, 12, 4, 1, 7, 12, 1, 10, 7, 6, 7, 10, 2, 3, 11 },
    { 12, 9, 6, 12, 6, 7, 9, 1, 6, 11, 6, 3, 1, 3, 6 },
    { 7, 12, 4, 7, 4, 6, 3, 11, 4, 11, 6, 4 },
    { 6, 9, 10, 6, 3, 9, 6, 7, 3, 4, 9, 3 },
    { 10, 6, 7, 10, 7, 1, 1, 7, 3 },
    { 2, 6, 9, 2, 9, 1, 6, 7, 9, 4, 9, 3, 7, 3, 9 },
    { 2, 6, 7, 3, 2, 7 },
    { 2, 4, 7, 2, 7, 11, 4, 9, 7, 6, 7, 10, 9, 10, 7 },
    { 11, 2, 1, 11, 1, 7, 10, 6, 1, 6, 7, 1 },
    { 1, 4, 9, 6, 7, 11 },
    { 11, 6, 7 },
    { 12, 6, 11, 8, 6, 12 },
    { 12, 6, 11, 12, 8, 6, 9, 4, 1 },
    { 6, 12, 8, 6, 11, 12, 2, 10, 1 },
    { 11, 8, 6, 11, 12, 8, 10, 9, 2, 9, 4, 2 },
    { 12, 2, 3, 12, 8, 2, 8, 6, 2 },
    { 1, 9, 4, 2, 3, 8, 2, 8, 6, 8, 3, 12 },
    { 10, 8, 6, 10, 3, 8, 10, 1, 3, 3, 12, 8 },
    { 8, 6, 3, 8, 3, 12, 6, 10, 3, 4, 3, 9, 10, 9, 3 },
    { 3, 6, 11, 3, 4, 6, 4, 8, 6 },
    { 9, 3, 1, 9, 6, 3, 9, 8, 6, 11, 3, 6 },
    { 10, 1, 2, 6, 11, 4, 6, 4, 8, 4, 11, 3 },
    { 10, 9, 3, 10, 3, 2, 9, 8, 3, 11, 3, 6, 8, 6, 3 },
    { 2, 4, 6, 4, 8, 6 },
    { 1, 9, 8, 1, 8, 2, 2, 8, 6 },
    { 10, 1, 4, 10, 4, 6, 6, 4, 8 },
    { 10, 9, 8, 6, 10, 8 },
    { 6, 9, 5, 6, 11, 9, 11, 12, 9 },
    { 6, 1, 5, 6, 12, 1, 6, 11, 12, 12, 4, 1 },
    { 1, 2, 10, 9, 5, 11, 9, 11, 12, 11, 5, 6 },
    { 11, 12, 5, 11, 5, 6, 12, 4, 5, 10, 5, 2, 4, 2, 5 },
    { 3, 6, 2, 3, 9, 6, 3, 12, 9, 5, 6, 9 },
    { 1, 5, 12, 1, 12, 4, 5, 6, 12, 3, 12, 2, 6, 2, 12 },
    { 1, 3, 6, 1, 6, 10, 3, 12, 6, 5, 6, 9, 12, 9, 6 },
    { 10, 5, 6, 3, 12, 4 },
    { 3, 6, 11, 4, 6, 3, 4, 5, 6, 4, 9, 5 },
    { 6, 11, 3, 6, 3, 5, 5, 3, 1 },
    { 4, 11, 3, 4, 6, 11, 4, 9, 6, 5, 6, 9, 1, 2, 10 },
    { 6, 11, 3, 6, 3, 5, 2, 10, 3, 10, 5, 3 },
    { 9, 5, 6, 9, 6, 4, 4, 6, 2 },
    { 1, 5, 6, 2, 1, 6 },
    { 9, 5, 6, 9, 6, 4, 10, 1, 6, 1, 4, 6 },
    { 10, 5, 6 },
    { 5, 12, 8, 5, 10, 12, 10, 11, 12 },
    { 1, 9, 4, 5, 10, 8, 10, 12, 8, 10, 11, 12 },
    { 2, 11, 12, 2, 12, 5, 2, 5, 1, 8, 5, 12 },
    { 4, 2, 5, 4, 5, 9, 2, 11, 5, 8, 5, 12, 11, 12, 5 },
    { 5, 12, 8, 10, 12, 5, 10, 3, 12, 10, 2, 3 },
    { 10, 8, 5, 10, 12, 8, 10, 2, 12, 3, 12, 2, 1, 9, 4 },
    { 12, 8, 5, 12, 5, 3, 3, 5, 1 },
    { 12, 8, 5, 12, 5, 3, 9, 4, 5, 4, 3, 5 },
    { 3, 10, 11, 3, 8, 10, 3, 4, 8, 8, 5, 10 },
    { 10, 11, 8, 10, 8, 5, 11, 3, 8, 9, 8, 1, 3, 1, 8 },
    { 4, 8, 11, 4, 11, 3, 8, 5, 11, 2, 11, 1, 5, 1, 11 },
    { 2, 11, 3, 9, 8, 5 },
    { 5, 10, 2, 5, 2, 8, 8, 2, 4 },
    { 5, 10, 2, 5, 2, 8, 1, 9, 2, 9, 8, 2 },
    { 5, 1, 4, 8, 5, 4 },
    { 5, 9, 8 },
    { 10, 11, 9, 11, 12, 9 },
    { 4, 1, 10, 4, 10, 12, 12, 10, 11 },
    { 1, 2, 11, 1, 11, 9, 9, 11, 12 },
    { 4, 2, 11, 12, 4, 11 },
    { 2, 3, 12, 2, 12, 10, 10, 12, 9 },
    { 4, 1, 10, 4, 10, 12, 2, 3, 10, 3, 12, 10 },
    { 1, 3, 12, 9, 1, 12 },
    { 4, 3, 12 },
    { 3, 4, 9, 3, 9, 11, 11, 9, 10 },
    { 10, 11, 3, 1, 10, 3 },
    { 3, 4, 9, 3, 9, 11, 1, 2, 9, 2, 11, 9 },
    { 2, 11, 3 },
    { 2, 4, 9, 10, 2, 9 },
    { 1, 10, 2 },
    { 1, 4, 9 },
    {}
}

tri_table.cornerIndexAFromEdge = {
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    1,
    2,
    3,
    4
}

tri_table.cornerIndexBFromEdge = {
    2,
    3,
    4,
    1,
    6,
    7,
    8,
    5,
    5,
    6,
    7,
    8
}

return tri_table