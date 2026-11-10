# Sthymuli motherboard: connection map

Generated from the KiCad netlist of `Sthymuli-motherboard.kicad_sch` (2026-11-10). Net names are the schematic labels.

## ESP32-S3-WROOM-1 (U17)

| Pin | GPIO | Net | Connected to |
|---|---|---|---|
| 1 | GND | `GND` | GND |
| 2 | 3V3 | `+3V3` | +3V3 |
| 3 | EN | `EN` | C10.1 (1uF), R4.2 (10kΩ) |
| 4 | IO4 | `IR_analog` | - |
| 5 | IO5 | `ESP_CHG_TMP_ADC` | R70.2 (10k 1%), TH3.1 (NTC 10k B3950) |
| 6 | IO6 | `ESP_VBAT_ADC` | C25.1 (100nF), R75.2 (100k 1%), R79.1 (100k 1%) |
| 7 | IO7 | `EXT_GPIO_1` | U4.5 (HC-RJ45-5224-1-6) |
| 8 | IO15 | `I2S1_DOUT` | U3.4 SDATA (NS4168_C910588) |
| 9 | IO16 | `I2S_MCLK` | U2.5 MCLK (ES7210) |
| 10 | IO17 | `ACC_INT_SOUTH` | FPC2.15 (1.0K-GT-15PB) |
| 11 | IO18 | `ACC_INT_EAST` | FPC1.15 (1.0K-GT-15PB) |
| 12 | IO8 | `EXT_GPIO_2` | U4.6 (HC-RJ45-5224-1-6) |
| 13 | USB_D- | `ESP_D-` | D33.1 K (LESD5D5.0C11G), J1.A7 D- (Connector, USB-TYPE-C-16P), J1.B7 D- (Connector, USB-TYPE-C-16P) |
| 14 | USB_D+ | `ESP_D+` | D32.1 K (LESD5D5.0C11G), J1.A6 D+ (Connector, USB-TYPE-C-16P), J1.B6 D+ (Connector, USB-TYPE-C-16P) |
| 15 | IO3 | `ACC_INT_NORTH` | FPC4.15 (1.0K-GT-15PB) |
| 16 | IO46 | `SPK_EN` | R10.1 (1kΩ) |
| 17 | IO9 | `WS2812_DIN` | D35.4 DIN (WS2812B) |
| 18 | IO10 | `IR_MODULATION` | - |
| 19 | IO11 | `IR_receiver` | U9.3 OUT (IRM-H6xxT) |
| 20 | IO12 | `I2S_SCLK` | U2.9 SCLK (ES7210) |
| 21 | IO13 | `I2S_LCLK` | U2.10 LRCK (ES7210) |
| 22 | IO14 | `I2S_DSIN` | U2.11 SDOUT1/TDMOUT (ES7210) |
| 23 | IO21 | `ESP_PWR_HOLD` | D9.2 (BAT54WS) |
| 24 | IO47 | `SCL` | R77.1 (2K2), U2.4 CCLK (ES7210), U5.22 SCL (TCA9548APWR) |
| 25 | IO48 | `SDA` | R78.1 (2K2), U2.3 CDATA (ES7210), U5.23 SDA (TCA9548APWR) |
| 26 | IO45 | `ESP_CHG_OFF` | R63.1 (1k) |
| 27 | IO0 | `BOOT_MODE` | C54.1 (100nF), R6.2 (10kΩ), SW2.2 (SW_Push) |
| 28 | IO35 | not connected (octal PSRAM) |  |
| 29 | IO36 | not connected (octal PSRAM) |  |
| 30 | IO37 | not connected (octal PSRAM) |  |
| 31 | IO38 | `I2S1_BCLK` | U3.3 BCLK (NS4168_C910588) |
| 32 | IO39 | `I2S1_WS` | U3.2 LRCLK (NS4168_C910588) |
| 33 | IO40 | `ACC_INT_WEST` | FPC3.15 (1.0K-GT-15PB) |
| 34 | IO41 | `PWR_BTN` | Q10.3 D (NX7002AK) |
| 35 | IO42 | `EXT_GPIO_3` | U4.7 (HC-RJ45-5224-1-6) |
| 36 | RXD0 | `Net-(U17-RXD0)` | TP2.1 (RXD0) |
| 37 | TXD0 | `Net-(U17-TXD0)` | TP1.1 (TXD0) |
| 38 | IO2 | `ESP_CHG_DONE` | D1.1 K (LED), R68.2 (10k), U18.4 ~{DONE} (CN3801) |
| 39 | IO1 | `ESP_CHG_CHRG` | D2.1 K (LED), R69.2 (10k), U18.3 ~{CHRG} (CN3801) |

## TCA9548A I2C mux, address 0x70 (U5)

| Pin | Function | Net | Connected to |
|---|---|---|---|
| 1 | A0 | `GND` | GND |
| 2 | A1 | `GND` | GND |
| 3 | ~{RESET} | `Net-(U5-~{RESET})` | R95.2 (10kΩ) |
| 4 | SD0 | `SDA_EAST` | FPC1.13 (1.0K-GT-15PB), R97.2 (4.7kΩ) |
| 5 | SC0 | `SCL_EAST` | FPC1.14 (1.0K-GT-15PB), R98.2 (4.7kΩ) |
| 6 | SD1 | `SDA_SOUTH` | FPC2.13 (1.0K-GT-15PB), R99.2 (4.7kΩ) |
| 7 | SC1 | `SCL_SOUTH` | FPC2.14 (1.0K-GT-15PB), R100.2 (4.7kΩ) |
| 8 | SD2 | `SDA_WEST` | FPC3.13 (1.0K-GT-15PB), R101.2 (4.7kΩ) |
| 9 | SC2 | `SCL_WEST` | FPC3.14 (1.0K-GT-15PB), R102.2 (4.7kΩ) |
| 10 | SD3 | `SDA_NORTH` | FPC4.13 (1.0K-GT-15PB), R103.2 (4.7kΩ) |
| 11 | SC3 | `SCL_NORTH` | FPC4.14 (1.0K-GT-15PB), R104.2 (4.7kΩ) |
| 12 | GND | `GND` | GND |
| 13 | SD4 | `SDA_EXT` | R105.2 (4.7kΩ), U4.3 (HC-RJ45-5224-1-6) |
| 14 | SC4 | `SCL_EXT` | R106.2 (4.7kΩ), U4.4 (HC-RJ45-5224-1-6) |
| 15 | SD5 | not connected |  |
| 16 | SC5 | not connected |  |
| 17 | SD6 | not connected |  |
| 18 | SC6 | not connected |  |
| 19 | SD7 | not connected |  |
| 20 | SC7 | not connected |  |
| 21 | A2 | `GND` | GND |
| 22 | SCL | `SCL` | R77.1 (2K2), U17.24 IO47 (ESP32-S3-WROOM-1), U2.4 CCLK (ES7210) |
| 23 | SDA | `SDA` | R78.1 (2K2), U17.25 IO48 (ESP32-S3-WROOM-1), U2.3 CDATA (ES7210) |
| 24 | VCC | `+3V3` | +3V3 |

## ES7210 mic ADC, address 0x40 (U2)

| Pin | Function | Net | Connected to |
|---|---|---|---|
| 1 | AD0 | `GND` | GND |
| 2 | AD1 | `GND` | GND |
| 3 | CDATA | `SDA` | R78.1 (2K2), U17.25 IO48 (ESP32-S3-WROOM-1), U5.23 SDA (TCA9548APWR) |
| 4 | CCLK | `SCL` | R77.1 (2K2), U17.24 IO47 (ESP32-S3-WROOM-1), U5.22 SCL (TCA9548APWR) |
| 5 | MCLK | `I2S_MCLK` | U17.9 IO16 (ESP32-S3-WROOM-1) |
| 6 | VDDP | `+3V3` | +3V3 |
| 7 | VDDD | `+3V3` | +3V3 |
| 8 | GNDD | `GND` | GND |
| 9 | SCLK | `I2S_SCLK` | U17.20 IO12 (ESP32-S3-WROOM-1) |
| 10 | LRCK | `I2S_LCLK` | U17.21 IO13 (ESP32-S3-WROOM-1) |
| 11 | SDOUT1/TDMOUT | `I2S_DSIN` | U17.22 IO14 (ESP32-S3-WROOM-1) |
| 12 | SDOUT2/TDMIN | `Net-(U2-SDOUT2{slash}TDMIN)` | R96.2 (100kΩ) |
| 13 | INT | not connected |  |
| 14 | DMIC_CLK | not connected |  |
| 15 | MIC1N | `Net-(U2-MIC1N)` | C16.2 (1uF) |
| 16 | MIC1P | `Net-(U2-MIC1P)` | C17.2 (1uF) |
| 17 | REFP12 | `Net-(U2-REFP12)` | C14.1 (1uF) |
| 18 | REFQ12 | `Net-(U2-REFQ12)` | C13.1 (1uF) |
| 19 | MIC2P | `Net-(U2-MIC2P)` | C19.1 (1uF) |
| 20 | MIC2N | `Net-(U2-MIC2N)` | C18.1 (1uF) |
| 21 | GNDA | `GND` | GND |
| 22 | VDDA | `+3V3` | +3V3 |
| 23 | VDDM | `+3V3` | +3V3 |
| 24 | MICBIAS12 | `/MICBIAS12` | R11.2 (2.2kΩ), R12.2 (2.2kΩ) |
| 25 | REFQM | `Net-(U2-REFQM)` | C15.1 (1uF) |
| 26 | MICBIAS34 | `/MICBIAS34` | R13.2 (2.2kΩ), R14.2 (2.2kΩ) |
| 27 | MIC4N | `Net-(U2-MIC4N)` | C32.1 (1uF) |
| 28 | MIC4P | `Net-(U2-MIC4P)` | C31.1 (1uF) |
| 29 | REFP34 | `Net-(U2-REFP34)` | C12.1 (1uF) |
| 30 | REFQ34 | `Net-(U2-REFQ34)` | C11.1 (1uF) |
| 31 | MIC3P | `Net-(U2-MIC3P)` | C30.1 (1uF) |
| 32 | MIC3N | `Net-(U2-MIC3N)` | C29.1 (1uF) |
| 33 | EP | `GND` | GND |

## NS4168 speaker amp (U3)

| Pin | Function | Net | Connected to |
|---|---|---|---|
| 1 | CTRL | `Net-(U3-CTRL)` | R10.2 (1kΩ), R8.1 (100kΩ) |
| 2 | LRCLK | `I2S1_WS` | U17.32 IO39 (ESP32-S3-WROOM-1) |
| 3 | BCLK | `I2S1_BCLK` | U17.31 IO38 (ESP32-S3-WROOM-1) |
| 4 | SDATA | `I2S1_DOUT` | U17.8 IO15 (ESP32-S3-WROOM-1) |
| 5 | VON | `Net-(U3-VON)` | LS1.2 (Speaker) |
| 6 | VDD | `+5V` | +5V |
| 7 | GND | `GND` | GND |
| 8 | VOP | `Net-(U3-VOP)` | LS1.1 (Speaker) |
| 9 | EP | `GND` | GND |

## Cardinal board EAST (FPC1)

| Pin | Function | Net | Connected to |
|---|---|---|---|
| 1 | 1 | `+5V` | +5V |
| 2 | 2 | `+3V3` | +3V3 |
| 3 | 3 | `BAT+EAST` | F11.2 (PTC ~5A hold 2920 (part to pick)), FPC1.4 (1.0K-GT-15PB) |
| 4 | 4 | `BAT+EAST` | F11.2 (PTC ~5A hold 2920 (part to pick)), FPC1.3 (1.0K-GT-15PB) |
| 5 | 5 | `BAT-WEST` | C24.2 (100nF), FPC1.6 (1.0K-GT-15PB), FPC2.5 (1.0K-GT-15PB), FPC2.6 (1.0K-GT-15PB), FPC3.5 (1.0K-GT-15PB), FPC3.6 (1.0K-GT-15PB), FPC4.5 (1.0K-GT-15PB), FPC4.6 (1.0K-GT-15PB) |
| 6 | 6 | `BAT-WEST` | C24.2 (100nF), FPC1.5 (1.0K-GT-15PB), FPC2.5 (1.0K-GT-15PB), FPC2.6 (1.0K-GT-15PB), FPC3.5 (1.0K-GT-15PB), FPC3.6 (1.0K-GT-15PB), FPC4.5 (1.0K-GT-15PB), FPC4.6 (1.0K-GT-15PB) |
| 7 | 7 | `GND` | GND |
| 8 | 8 | `MK_EAST_N` | C16.1 (1uF) |
| 9 | 9 | `MK_EAST_P` | C17.1 (1uF), R12.1 (2.2kΩ) |
| 10 | 10 | `GND` | GND |
| 11 | 11 | `WS2812_MB_EA` | D36.2 DOUT (WS2812B) |
| 12 | 12 | `WS2812_EA_SO` | FPC2.11 (1.0K-GT-15PB) |
| 13 | 13 | `SDA_EAST` | R97.2 (4.7kΩ), U5.4 SD0 (TCA9548APWR) |
| 14 | 14 | `SCL_EAST` | R98.2 (4.7kΩ), U5.5 SC0 (TCA9548APWR) |
| 15 | 15 | `ACC_INT_EAST` | U17.11 IO18 (ESP32-S3-WROOM-1) |

## Cardinal board SOUTH (FPC2)

| Pin | Function | Net | Connected to |
|---|---|---|---|
| 1 | 1 | `+5V` | +5V |
| 2 | 2 | `+3V3` | +3V3 |
| 3 | 3 | `BAT+SOUTH` | F12.2 (PTC ~5A hold 2920 (part to pick)), FPC2.4 (1.0K-GT-15PB) |
| 4 | 4 | `BAT+SOUTH` | F12.2 (PTC ~5A hold 2920 (part to pick)), FPC2.3 (1.0K-GT-15PB) |
| 5 | 5 | `BAT-WEST` | C24.2 (100nF), FPC1.5 (1.0K-GT-15PB), FPC1.6 (1.0K-GT-15PB), FPC2.6 (1.0K-GT-15PB), FPC3.5 (1.0K-GT-15PB), FPC3.6 (1.0K-GT-15PB), FPC4.5 (1.0K-GT-15PB), FPC4.6 (1.0K-GT-15PB) |
| 6 | 6 | `BAT-WEST` | C24.2 (100nF), FPC1.5 (1.0K-GT-15PB), FPC1.6 (1.0K-GT-15PB), FPC2.5 (1.0K-GT-15PB), FPC3.5 (1.0K-GT-15PB), FPC3.6 (1.0K-GT-15PB), FPC4.5 (1.0K-GT-15PB), FPC4.6 (1.0K-GT-15PB) |
| 7 | 7 | `GND` | GND |
| 8 | 8 | `MK_SOUTH_N` | C18.2 (1uF) |
| 9 | 9 | `MK_SOUTH_P` | C19.2 (1uF), R11.1 (2.2kΩ) |
| 10 | 10 | `GND` | GND |
| 11 | 11 | `WS2812_EA_SO` | FPC1.12 (1.0K-GT-15PB) |
| 12 | 12 | `WS2812_SO_WE` | FPC3.11 (1.0K-GT-15PB) |
| 13 | 13 | `SDA_SOUTH` | R99.2 (4.7kΩ), U5.6 SD1 (TCA9548APWR) |
| 14 | 14 | `SCL_SOUTH` | R100.2 (4.7kΩ), U5.7 SC1 (TCA9548APWR) |
| 15 | 15 | `ACC_INT_SOUTH` | U17.10 IO17 (ESP32-S3-WROOM-1) |

## Cardinal board WEST (FPC3)

| Pin | Function | Net | Connected to |
|---|---|---|---|
| 1 | 1 | `+5V` | +5V |
| 2 | 2 | `+3V3` | +3V3 |
| 3 | 3 | `BAT+WEST` | F13.2 (PTC ~5A hold 2920 (part to pick)), FPC3.4 (1.0K-GT-15PB) |
| 4 | 4 | `BAT+WEST` | F13.2 (PTC ~5A hold 2920 (part to pick)), FPC3.3 (1.0K-GT-15PB) |
| 5 | 5 | `BAT-WEST` | C24.2 (100nF), FPC1.5 (1.0K-GT-15PB), FPC1.6 (1.0K-GT-15PB), FPC2.5 (1.0K-GT-15PB), FPC2.6 (1.0K-GT-15PB), FPC3.6 (1.0K-GT-15PB), FPC4.5 (1.0K-GT-15PB), FPC4.6 (1.0K-GT-15PB) |
| 6 | 6 | `BAT-WEST` | C24.2 (100nF), FPC1.5 (1.0K-GT-15PB), FPC1.6 (1.0K-GT-15PB), FPC2.5 (1.0K-GT-15PB), FPC2.6 (1.0K-GT-15PB), FPC3.5 (1.0K-GT-15PB), FPC4.5 (1.0K-GT-15PB), FPC4.6 (1.0K-GT-15PB) |
| 7 | 7 | `GND` | GND |
| 8 | 8 | `MK_WEST_N` | C29.2 (1uF) |
| 9 | 9 | `MK_WEST_P` | C30.2 (1uF), R14.1 (2.2kΩ) |
| 10 | 10 | `GND` | GND |
| 11 | 11 | `WS2812_SO_WE` | FPC2.12 (1.0K-GT-15PB) |
| 12 | 12 | `WS2812_WE_NO` | FPC4.11 (1.0K-GT-15PB) |
| 13 | 13 | `SDA_WEST` | R101.2 (4.7kΩ), U5.8 SD2 (TCA9548APWR) |
| 14 | 14 | `SCL_WEST` | R102.2 (4.7kΩ), U5.9 SC2 (TCA9548APWR) |
| 15 | 15 | `ACC_INT_WEST` | U17.33 IO40 (ESP32-S3-WROOM-1) |

## Cardinal board NORTH (FPC4)

| Pin | Function | Net | Connected to |
|---|---|---|---|
| 1 | 1 | `+5V` | +5V |
| 2 | 2 | `+3V3` | +3V3 |
| 3 | 3 | `BAT+NORTH` | F10.2 (PTC ~5A hold 2920 (part to pick)), FPC4.4 (1.0K-GT-15PB) |
| 4 | 4 | `BAT+NORTH` | F10.2 (PTC ~5A hold 2920 (part to pick)), FPC4.3 (1.0K-GT-15PB) |
| 5 | 5 | `BAT-WEST` | C24.2 (100nF), FPC1.5 (1.0K-GT-15PB), FPC1.6 (1.0K-GT-15PB), FPC2.5 (1.0K-GT-15PB), FPC2.6 (1.0K-GT-15PB), FPC3.5 (1.0K-GT-15PB), FPC3.6 (1.0K-GT-15PB), FPC4.6 (1.0K-GT-15PB) |
| 6 | 6 | `BAT-WEST` | C24.2 (100nF), FPC1.5 (1.0K-GT-15PB), FPC1.6 (1.0K-GT-15PB), FPC2.5 (1.0K-GT-15PB), FPC2.6 (1.0K-GT-15PB), FPC3.5 (1.0K-GT-15PB), FPC3.6 (1.0K-GT-15PB), FPC4.5 (1.0K-GT-15PB) |
| 7 | 7 | `GND` | GND |
| 8 | 8 | `MK_NORTH_N` | C32.2 (1uF) |
| 9 | 9 | `MK_NORTH_P` | C31.2 (1uF), R13.1 (2.2kΩ) |
| 10 | 10 | `GND` | GND |
| 11 | 11 | `WS2812_WE_NO` | FPC3.12 (1.0K-GT-15PB) |
| 12 | 12 | not connected |  |
| 13 | 13 | `SDA_NORTH` | R103.2 (4.7kΩ), U5.10 SD3 (TCA9548APWR) |
| 14 | 14 | `SCL_NORTH` | R104.2 (4.7kΩ), U5.11 SC3 (TCA9548APWR) |
| 15 | 15 | `ACC_INT_NORTH` | U17.15 IO3 (ESP32-S3-WROOM-1) |

## RJ45 add-on connector (U4)

| Pin | Function | Net | Connected to |
|---|---|---|---|
| 1 | 1 | `+5V` | +5V |
| 2 | 2 | `+3V3` | +3V3 |
| 3 | 3 | `SDA_EXT` | R105.2 (4.7kΩ), U5.13 SD4 (TCA9548APWR) |
| 4 | 4 | `SCL_EXT` | R106.2 (4.7kΩ), U5.14 SC4 (TCA9548APWR) |
| 5 | 5 | `EXT_GPIO_1` | U17.7 IO7 (ESP32-S3-WROOM-1) |
| 6 | 6 | `EXT_GPIO_2` | U17.12 IO8 (ESP32-S3-WROOM-1) |
| 7 | 7 | `EXT_GPIO_3` | U17.35 IO42 (ESP32-S3-WROOM-1) |
| 8 | 8 | `GND` | GND |

## I2C buses

| Bus | Pull-ups | Devices |
|---|---|---|
| `SDA` | R78 2K2 | U17.IO48, U2.CDATA, U5.SDA |
| `SCL` | R77 2K2 | U17.IO47, U2.CCLK, U5.SCL |
| `SDA_EAST` | R97 4.7kΩ | FPC1.13, U5.SD0 |
| `SCL_EAST` | R98 4.7kΩ | FPC1.14, U5.SC0 |
| `SDA_SOUTH` | R99 4.7kΩ | FPC2.13, U5.SD1 |
| `SCL_SOUTH` | R100 4.7kΩ | FPC2.14, U5.SC1 |
| `SDA_WEST` | R101 4.7kΩ | FPC3.13, U5.SD2 |
| `SCL_WEST` | R102 4.7kΩ | FPC3.14, U5.SC2 |
| `SDA_NORTH` | R103 4.7kΩ | FPC4.13, U5.SD3 |
| `SCL_NORTH` | R104 4.7kΩ | FPC4.14, U5.SC3 |
| `SDA_EXT` | R105 4.7kΩ | U4.3, U5.SD4 |
| `SCL_EXT` | R106 4.7kΩ | U4.4, U5.SC4 |
