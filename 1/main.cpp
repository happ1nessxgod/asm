#include <iostream>

extern "C" int Make_Any(int b, int c, int a);

int main()
{
    int b, c, a;

   
    std::cout << "������� b: ";
    std::cin >> b;
    std::cout << "������� c: ";
    std::cin >> c;
    std::cout << "������� a: ";
    std::cin >> a;

    if (a == 0) {
        std::cout << "������: ������� �� ���� ����������!" << std::endl;
        return 1;
    }

    int result = Make_Any(b, c, a);

    std::cout << "���������: " << result << std::endl;

    return 0;
}
