#include <iostream>
#include <string>

#define MAX(x, y) ((x) > (y) ? (x) : (y) )

using namespace std;

float sum(float a[], int n) {
    int i;
    /** begin sum **/
    float z = 0.0;
    for (i = 0; i < n; ++i)
        z = z + a[i];
    /** end sum **/
    return z;
}

unsigned int max(unsigned int a[], int n) {
    int i;
    /** begin max **/
    unsigned int z = 0;
    for (i = 0; i < n; ++i)
        z = MAX(z, a[i]);
    /** end max **/
    return z;
}

bool any_even(int a[], int n) {
    int i;
    /** begin anyeven **/
    bool z = false;
    for (i = 0; i < n; ++i)
        z = z || (a[i] % 2 == 0);
    /** end anyeven **/
    return z;
}

string concat(string a[], int n) {
    int i;
    /** begin concat **/
    string z("");
    for (i = 0; i < n; ++i)
        z.append(a[i]);
    /** end concat **/
    return z;
}


int main() {
    float sum_a = {4.3, 1.5, -7.0, 0.4};

}

