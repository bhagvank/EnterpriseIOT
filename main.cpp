#include "converter.h"

int main(int argc, char *argv[])
{
	class converter *tempconv;
	int rc;

	mosqpp::lib_init();

	tempconv = new converter("tempconv", "localhost", 1883);
	
	while(1){
		rc = tempconv->loop();
		if(rc){
			tempconv->reconnect();
		}
	}

	mosqpp::lib_cleanup();

	return 0;
}