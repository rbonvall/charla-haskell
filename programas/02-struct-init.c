struct node x, y, z;

x.tag = INT;
x.payload.i = 68;
x.next = &y;

y.tag = STRING;
y.payload.s = "hola";
y.next = &z;

z.tag = INT;
z.payload.i = 41;
z.next = NULL;
