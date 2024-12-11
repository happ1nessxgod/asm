#include <iostream>
#include <limits>
#include <cstdint>

// ��������� ������������ ������� � ����������� cdecl
extern "C" int Make_Any(int b, int c, int a);

int main()
{
    // ���������� int32_t ��� ������������ 32-������ �����������
    int32_t b, c, a;

    // ����� ��������� �������� ��� int32_t
    std::cout << "������� �������� ���������� (int32_t):\n";
    std::cout << "�������� ��� int32_t: " << std::numeric_limits<int32_t>::min()
        << " �� " << std::numeric_limits<int32_t>::max() << "\n";

    std::cout << "������� b: ";
    std::cin >> b;
    std::cout << "������� c: ";
    std::cin >> c;
    std::cout << "������� a: ";
    std::cin >> a;

    // �������� ������� �� ���� ��� a
    if (a == 0) {
        std::cout << "������: ������� �� ���� (a) ����������!" << std::endl;
        return 1;
    }

    // �������� ������� �� ���� ��� (30 + b)
    if ((30 + b) == 0) {
        std::cout << "������: ������� �� ���� (30 + b) ����������!" << std::endl;
        return 1;
    }

    int32_t result = Make_Any(b, c, a);

    std::cout << "���������: " << result << std::endl;

    return 0;
}
