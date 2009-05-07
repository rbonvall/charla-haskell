#include <iostream>
#include <functional>
#include <numeric>
#include <vector>
#include <string>

#define MAX(x, y) ((x) > (y) ? (x) : (y) )

using namespace std;

float sum(float a[], int n) {
    int i;
    float z = 0.0;
    for (i = 0; i < n; ++i)
        z = z + a[i];
    return z;
}

unsigned int max(unsigned int a[], int n) {
    int i;
    unsigned int z = 0;
    for (i = 0; i < n; ++i)
        z = MAX(z, a[i]);
    return z;
}

bool any_even(int a[], int n) {
    int i;
    bool z = false;
    for (i = 0; i < n; ++i)
        z = z || (a[i] % 2 == 0);
    return z;
}

string concat(string a[], int n) {
    int i;
    string z("");
    for (i = 0; i < n; ++i)
        z.append(a[i]);
    return z;
}


int main() {
    float sum_a[] = {4.3, 1.5, -7.0, 0.4};
    vector<float> a(&sum_a[0], &sum_a[5]);
    float init = 0.0;
    float sum_result = accumulate(a.begin(), a.end(),
                                  init, plus<float>());
    cout << sum_result << endl;
}

