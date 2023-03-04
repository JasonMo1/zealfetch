/* SPDX-FileCopyrightText: 2023 Zeal 8-bit Computer - JasonMo <jasonmo2009@hotmail.com>
 *
 * SPDX-License-Identifier: CC0-1.0
 */

//sdcc include
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
//zos include
#include "zos_errors.h"
#include "zos_vfs.h"
#include "zos_sys.h"

char buf[256];

int main () {
    //file create unit

    // O_TRUNC will destroy the file first if it exists
    zos_dev_t dev = open("B:/info.data", O_WRONLY | O_CREAT | O_TRUNC);
    
    //check for errors
    if (dev < 0) {
        printf("Error %d occurred1\n", -dev);
        return 1;
    }

    // Now we can write safely to the file
    char* ver = (char*) 0x2f3;
    char buf[] = " .------------------------------------. \n.--:..                              :-- \n.--:                                :-- \n .---.      .   ..  ..   .        .---. \n   :---.    .::.  ... .:-.      .---.   \n     :---.     ...   .:.      .---.     \n       :---:   .:. .:.      .---.       \n         ::. .:. .:.      .---.         \n           .:. .:.      .---.           \n         .:. .:.      .---.  ..         \n       .:. .:.      .---.  .-..:.       \n     .:. .:.      .---:     .:  .:.     \n   .:. .:.      .-------:     .:  .:.   \n  :. .:.       .:::::::::.      .:  .:  \n.:  :.                            .:  :.\n-  -.                              .- .:\n:. .................................. ::\n `..................................../ \n\n\n";
    
    // You can find details in the header file
    uint16_t size1 = sizeof(buf);
    uint16_t size2 = strlen(ver);
    zos_err_t ret = write(dev, buf, &size1);
    ret = write(dev, ver, &size2);
    //check for errors x2
    if (ret != ERR_SUCCESS) {
        printf("Error %d when writing2\n", ret);
        return 2;
    }

    // Close the file "dev"
    close(dev);


    //file read unit
    zos_dev_t dev2 = open("B:/info.data", O_RDONLY);
    //Check for error
    if (dev2 < 0) {
        printf("Error %d occured3\n", dev2);
        return 1;
    }

    /* Read the file content inside our buffer */
    uint16_t size = 256;

    // /* Read syscall has also updated the size actually read from the file. Write that amount to the screen */
    while (size != 0) {
        ret = read(dev2, buf, &size);
        // check ret
    if (size != 0)
        write(DEV_STDOUT, buf, &size);
    }

    // Close the file "dev2"
    close(dev2);
    return 0;
}


/* Open file example
// O_TRUNC will destroy the file first if it exists
zos_dev_t dev = open("B:/file.txt", O_WRONLY | O_CREAT | O_TRUNC);
if (dev < 0) {
    printf("Error %d occurred\n", -dev);
    return 1;
}
// Now we can write safely to the file
char buf[] = "Small message to write to the file";
// You can find details in the header file
uint16_t size = sizeof(buf);
zos_err_t ret = write(dev, buf, &size);
if (ret != ERR_SUCCESS) {
  printf("Error %d when writing\n", ret);
  return 2;
}
// Close the file when you're done
close(dev);
*/