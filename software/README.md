## Building Buildroot
```
git submodule update --init
cd buildroot
make BR2_EXTERNAL=$PWD/../bsp nybble_defconfig
make
```

## Flashing ESP
```
pip install esptool
wget https://github.com/espressif/esp-hosted/releases/download/release%2Fng-v1.0.2/ESP-Hosted-NG_release_v1.0.2.tgz
tar xvf ESP-Hosted-NG-release_1.x.y.tgz
cd ESP-Hosted-NG-release_1.x.y/
cd esp32
cd spi_only
```
