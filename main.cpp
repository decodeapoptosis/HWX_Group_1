#include <iostream>
#include <vector>
#include <string>

using namespace std;

// Forward Declaration
struct Node;

// Airport Details
struct Airport {
    string code;
    string location;
    string phone;
};

// Represents a link with the value of the link and a vector of nodes or node point to the Airports.
struct Flight {
    int value;
    Node* destination = nullptr;
};

// Represents Airport Node
struct Node {
    Airport airport_info;
    vector<Flight> flights;
};

// Main
int main() {
    cout << "Hello World" << endl;
    return 0;
}
