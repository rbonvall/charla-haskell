struct node x, y, z;

x.tag = INT;
x.payload = 68;
x.next = &y;

y.tag = STRING;
y.payload = "hola";
y.next = &z;

z.tag = INT;
z.payload = 41;
z.next = NULL;
