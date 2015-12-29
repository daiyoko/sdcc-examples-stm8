#include "stm8s.h"

int main() {
	int d;
	// Configure pins
	PE_DDR = 0x20;
	PE_CR1 = 0x20;
	// Loop
	do {
		PE_ODR ^= 0x20;
		for(d = 0; d < 10000; d++) { }
	} while(1);
}
