#include <iostream>
#include <limits>
#include <cstdint>

// ��������� ������� � ����������� cdecl
extern "C" int Make_Any(uint16_t b, uint16_t c, uint16_t a);

int main()
{
    // ���������� uint16_t ��� 16-������ ����������� ����� �����
    uint16_t b, c, a;

    // ����� ��������� �������� ��� uint16_t
    std::cout << "������� �������� ��� uint16_t (����������� 16-������ �����):\n";
    std::cout << "�������� ��� uint16_t: " << std::numeric_limits<uint16_t>::min()
        << " �� " << std::numeric_limits<uint16_t>::max() << "\n";

    std::cout << "������� b: ";
    std::cin >> b;
    std::cout << "������� c: ";
    std::cin >> c;
    std::cout << "������� a: ";
    std::cin >> a;

    // �������� ������� �� 0
    if (a == 0) {
        std::cout << "������: ������� �� ���� (a) ����������!" << std::endl;
        return 1;
    }

    if ((30 + b) == 0) {
        std::cout << "������: ������� �� ���� (30 + b) ����������!" << std::endl;
        return 1;
    }

    uint16_t result = Make_Any(b, c, a);

    std::cout << "���������: " << result << std::endl;

    return 0;
}
