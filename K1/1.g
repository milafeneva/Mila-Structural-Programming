//Од стандарден влез се читаат знаци се додека не се прочита извичник. Во вака внесениот текст се скриени цели броеви (помали од 100). 
Да се напише програма што ќе ги прочита сите знаци и на излез ќе го испечати збирот на сите броеви скриени во текстот.

#include <iostream>
using namespace std;

bool isDigit(char current) {
    for (int i = 0; i <= 10; i++)
        if (current == (char)('0' + i))
            return true;
    return false;
}

int main() {
    char current = '0';
    int zbir = 0;
    int n = 0;

    while (current != '!') {
        cin >> current;

        if (isDigit(current)) {
            n *= 10;
            n += (int)current - '0';
        } else {
            zbir += n;
            n = 0;
        }
    }

    cout << zbir;
    return 0;
}
