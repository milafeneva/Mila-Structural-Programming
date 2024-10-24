//Благ број е број што е составен само од парни цифри (0, 2, 4, 6, 8). 
Во зададен опсег (почетокот m и крајот на опегот n се цели броеви чија вредност се внесува од тастатура), да се најде и испечати најмалиот „благ број“. Ако не постои таков број, да се испечати NE.

#include <iostream>
using namespace std;

int main() {
    int m,n;
    cin>>m>>n;
    int bigflag=1;
    for(int i=m; i<=n; i++) {
        int number = i;
        int flag = 1;
        while(number != 0) {
            if(number%2!=0) {
                flag = 0;
                break;
            }
            number/=10;
        }
        if(flag) {
            bigflag=0;
            cout<<i<<endl;
            return 0;
        }
    }
    if(bigflag){
        cout<<"NE";
    }
}
