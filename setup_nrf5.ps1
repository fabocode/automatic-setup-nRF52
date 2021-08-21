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

$settings_json = @'
{
    "files.associations": {
        "boards.h": "c"
    }
}
'@

$tasks_json = @'
{
    // See https://go.microsoft.com/fwlink/?LinkId=733558
    // for the documentation about the tasks.json format
    "version": "2.0.0",
    "tasks": [
        {
            "label": "build",
            "type": "shell",
            "command": "make",
            "options": {
                "cwd": "${workspaceFolder}/pca10056/blank/armgcc"
            },
            "problemMatcher": [],
            "group": {
                "kind": "build",
                "isDefault": true
            }
        },
        {
            "label": "clean",
            "type": "shell",
            "command": "make clean",
            "options": {
                "cwd": "${workspaceFolder}/pca10056/blank/armgcc"
            },
            "problemMatcher": []
        },
        {
            "label": "flash",
            "type": "shell",
            "command": "make flash",
            "options": {
                "cwd": "${workspaceFolder}/pca10056/blank/armgcc"
            },
            "group": "build",
            "problemMatcher": []
        },
        {
            "label": "flash_softdevice",
            "type": "shell",
            "command": "make flash_softdevice",
            "options": {
                "cwd": "${workspaceFolder}/pca10056/blank/armgcc"
            },
            "problemMatcher": []
        },
        {
            "label": "sdk_config",
            "type": "shell",
            "command": "make sdk_config",
            "options": {
                "cwd": "${workspaceFolder}/pca10056/blank/armgcc"
            },
            "problemMatcher": []
        },
        {
            "label": "erase",
            "type": "shell",
            "command": "make erase",
            "options": {
                "cwd": "${workspaceFolder}/pca10056/blank/armgcc"
            },
            "problemMatcher": []
        }
    ]
}
'@

# create .vscode folder 
$path = "$PWD\.vscode"
New-Item -Path $path -ItemType Directory

