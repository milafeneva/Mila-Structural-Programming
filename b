Од стандарден влез се внесуваат цели броеви А и Р.
Да се испечатат во опаѓачки редослед првите 5 броеви во интервалот (0, А] за коишто важи дека сумата на нивните цифри 
изнесува Р проценти од самиот број. Ако нема такви да се напише Не.
input: 100 10
output:
90
80
70
60
50


#include <iostream>
using namespace std;

int main() {
    int a, p;
    cin >> a >> p;
    int count = 0;
    while (a > 0) {
        int temp = a, sum = 0;
        while (temp != 0) {
            sum += temp % 10;
            temp = temp / 10;
        }
        float procent = sum * 100.0 / a;
        if (procent == p) {
            cout << a << endl;
            ++count;
        }
        if (count == 5) {
            break;
        }
        --a;
    }
    if (count == 0) cout << "Nema";
    return 0;
}
