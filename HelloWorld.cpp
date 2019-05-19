#include <iostream>
#include <fstream>
using namespace std;

int main()
{
    cout << "Hello world" << endl;
    cout << "From a C++ Program" << endl;

    int n = 0;
    {
        ifstream in("data.txt");
        in >> n;
        cout << "n = " << n << endl;
    }

    {
        ofstream out("data.txt");
        out << n + 1;
    }

    return 0;
}