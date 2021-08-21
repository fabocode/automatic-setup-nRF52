# nRF52-setup-in-vs-code-automatically
 I would like to automate an script to setup a repository taked from a previous example folder to build and use in Visual Studio Code

# Requirements
  * - make

    > I suggest to use this: [gnuwin32.sourceforge.net/.../make.htm](http://gnuwin32.sourceforge.net/.../make.htm) Make sure to add C:\Program Files (x86)\GnuWin32\bin to the path.

    make: C:\Program Files (x86)\GnuWin32\bin

    or

    in PATH: C:\Program Files (x86)\GnuWin32\bin

    - nRF Command Line Tools

    > [https://www.nordicsemi.com/Products/Development-tools/nrf-command-line-tools/download](https://www.nordicsemi.com/Products/Development-tools/nrf-command-line-tools/download)

    - GNU Arm Embedded Toolchain (gcc-arm-none-eabi-7-2018-q2-update-win32.exe)

    > [https://www.nordicsemi.com/Products/Development-tools/nrf-command-line-tools/download](https://www.nordicsemi.com/Products/Development-tools/nrf-command-line-tools/download)

    ![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/1b7e99b3-31e8-499d-89c1-de0109c07f04/Untitled.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/1b7e99b3-31e8-499d-89c1-de0109c07f04/Untitled.png)

    - nRF5 SDK (Currently set version to v15.3.0)

    > [https://www.nordicsemi.com/Products/Development-software/nRF5-SDK](https://www.nordicsemi.com/Products/Development-software/nRF5-SDK)

    - VS  Code with C/C++ Extension
    - Setup environment Variables in PATH
        - ARM GCC LOCATION **GNU_GCC**: `C:\Program Files (x86)\GNU Tools Arm Embedded\7 2018-q2-update`
        - nRF52 SDK LOCATION **nRF_SDK**: `C:\nrf5_sdk\nRF5_SDK_15.3.0_59ac345`
        - Setup VS Code to path to call with `code .`
        