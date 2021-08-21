Write-Host "Congratulations! Your first script executed successfully"

$c_cpp_json = @'
{
    "configurations": [
        {
            "name": "ARMGCC",
            "includePath": [
                "${workspaceFolder}/**",
                "${env:GNU_GCC}/arm-none-eabi/include",
                "${env:nRF_SDK}/modules/**",
                "${env:nRF_SDK}/components/**"
            ],
            "defines": [
                "_DEBUG",
                "UNICODE",
                "_UNICODE",
                "BOARD_PCA10056",
                "BSP_DEFINES_ONLY",
                "CONFIG_GPIO_AS_PINRESET",
                "FLOAT_ABI_HARD",
                "NRF52840_XXAA",
                "DCONFIG_NFCT_PINS_AS_GPIOS"
            ],
            "windowsSdkVersion": "10.0.19041.0",
            "compilerPath": "${env:GNU_GCC}/bin/arm-none-eabi-gcc.exe",
            "cStandard": "c11",
            "cppStandard": "c++17",
            "intelliSenseMode": "clang-x64"
        }
    ],
    "version": 4
}
'@
ConvertTo-Json $c_cpp_json

