enum tag_type {INT, STRING};

struct node {
    enum tag_type tag;
    union {
        unsigned int i;
        char *s;
    } payload;
    struct node *next;
};

