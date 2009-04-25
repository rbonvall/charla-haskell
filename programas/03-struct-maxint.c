unsigned int max_int(struct node *n) {
    if (n == NULL)
        return 0;
    switch (n->tag) {
        case STRING:
            return max_int(n->next);
        case INT:
            return max(max_int(n->next),
                       n->payload.i);
        default:
            assert(0);
    }
}
