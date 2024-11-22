#include <iostream>
#include<string>
#include<vector>
using namespace std;
void doit(int j){
    while(j<=10){
        cout << j << endl;
        j++;
    }
}
int main() {
    string s="Hello World";

    vector<string> st;
    st.push_back("Hello");
    st.push_back("W");
    cout<<st[0][2]<<endl;
    // cout<<st.end()<<endl;
    for(auto i:st){
        cout<<type(i)<<endl;
    }
}