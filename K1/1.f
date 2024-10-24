// Од стандарден влез се чита еден природен број n, по што се читаат n цели броеви. Да се најде 
најголемата разлика помеѓу два броја, од вака внесени броеви: 
input: 
10 
1 2 3 4 5 6 7 8 9 10
output: Najgolema razlika: 9

#include <iostream>
using namespace std;

int main() {
    int n, min, max, current;
    cin >> n;
    cin >> current;
    min = max = current;
    for (int i = 1; i < n; i++) {
        cin>>current;
        if (current > max) max = current;
        else if (current < min) min = current;
    }
    cout << max - min << endl;
}
