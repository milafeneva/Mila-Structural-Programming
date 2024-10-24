Eден природен e „интересен“ ако неговиот обратен број е делив со неговиот број на цифри. 
Обратен број е бројот составен од истите цифри, но во обратен редослед (на пример, 653 е обратен број на бројот 356).
Од тастатура се внесува природен број n ( n > 9). Да се најде и отпечати најголемиот природен број помал од n кој што е „интересен“. 
Ако внесениот број не е валиден, да се отпечати соодветна порака (Brojot ne e validen).

#include <iostream>
using namespace std;

int reverse(int n) {
    int reversed = 0;
    while (n != 0) {
        reversed = reversed * 10 + n % 10;
        n = n / 10;
    }
    return reversed;
}
int brojCifri(int n) {
    int counter = 0;
    while (n != 0) {
        counter++;
        n = n / 10;
    }
    return counter;
}

int main() {
    int n;
    cin >> n;
    if (n < 9) {
        cout << "Brojot ne e validen.";
    }
    for (int i = n-1; i >= 0; i--) {
        int reversed = reverse(i);
        int brcifri = brojCifri(i);
        if (reversed % brcifri == 0) {
            cout << i << endl;
            return 0;
        }
    }
}
