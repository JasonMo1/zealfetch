/*
zealfetch v0.0.5
Powered by jasonmo,jasonmo2009@hotmail.com .
opensourced with apache 2.0 licence.
*/

#include<stdio.h>
#include "zos_errors.h"
#include "zos_vfs.h"
#include "zos_sys.h"
 
int main()
{
    printf(" .------------------------------------. \n");
	printf(".--:..                              :-- \n");
    printf(".--:                                :-- \n");
    printf(" .---.      .   ..  ..   .        .---. \n");
    printf("   :---.    .::.  ... .:-.      .---.   \n");
    printf("     :---.     ...   .:.      .---.     \n");
    printf("       :---:   .:. .:.      .---.       \n");
    printf("         ::. .:. .:.      .---.         \n");
    printf("           .:. .:.      .---.           \n");
    printf("         .:. .:.      .---.  ..         \n");
    printf("       .:. .:.      .---.  .-..:.       \n");
    printf("     .:. .:.      .---:     .:  .:.     \n");
    printf("   .:. .:.      .-------:     .:  .:.   \n");
    printf("  :. .:.       .:::::::::.      .:  .:  \n");
    printf(".:  :.                            .:  :.\n");
    printf("-  -.                              .- .:\n");
    printf(":. .................................. ::\n");
    printf(" `..................................../ \n\n\n");
    
    const char* vinfo = (char*) 0x2f3;
    printf("Zeal-8-bit-OS version:\n\n");
    printf(vinfo,"\n");

	return 0;
}