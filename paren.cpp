#include <iostream>
#include<string>
#include<vector>
#include <chrono>
using namespace std;
using namespace std::chrono;



void quicksort(double *a, int lo, int hi) {
    int i = lo;
    int j = hi;
    while (i < hi) {
        double pivot = a[(lo+hi)/2];
        while (i <= j) {
            while (a[i] < pivot) {
                i = i + 1;
            }
            while (a[j] > pivot) {
                j = j - 1;
            }
            if (i <= j) {
                double t = a[i];
                a[i] = a[j];
                a[j] = t;
                i = i + 1;
                j = j - 1;
            }
        }

        // Recursion for quicksort
        if (lo < j) {
            quicksort(a, lo, j);
        }
        lo = i;
        j = hi;
    }
}


int main(){
    
    int tmin = INFINITY;
    double* arr= new double[5000];
    for (int i=0; i<5; ++i) {
        auto start = high_resolution_clock::now();
        
        for(int i = 0; i < 5000; i++){

            arr[i] =  ((double) rand() / (RAND_MAX));
        }  
        quicksort(arr, 0, 5000-1);

        auto stop = high_resolution_clock::now();

        auto duration = duration_cast<microseconds>(stop - start);
        cout<<float(duration.count())/1000000<<endl;
    }
    

    
}
