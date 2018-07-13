# Adapter PCB to connect a [rpi802154-r1](http://openlabs.co/OSHW/Raspberry-Pi-802.15.4-radio) or [MRF24J40MA](http://www.microchip.com/wwwproducts/en/MRF24J40MA) module to nucleo / arduino boards

This simple shield can be used to connect the aforementioned radio modules to STM32 based boards like the [Nucleo-64 family](http://www.st.com/resource/en/user_manual/dm00105823.pdf) or various other boards that come with the well known arduino header.

The main reason for creating this shield is that I need a switch to disconnect the modules from their power supply in order to get rid of small leakage currents that occur even in sleep mode. This is done using a low side n-channel mosfet. Another point is that I need to do this for a few devices and I want them to have a more sturdy connection than the usual (error prone) breadboard and jumper wire tinkering. Think: plug&play instead of fiddling with loose wires and always looking up pin configurations again.

While tossing together a custom shield, why not add some little features that can be used for demo applications? For this there are two LEDs (D_PWR_1 and D_ACT1) connected to the radio's supply voltage and the CS pin to display if the device is powered and active. This allows to easily visualize duty-cycling applications.
Keeping in mind the initial purpose (low-power) the LEDs can be disconnected using the jumpers JP1 and JP2.

As a quick reference this is how the pins are connected:

| rpi802154-r1    | MRF24J40MA    | Nucleo Pin (name / connector) | Arduino Pin Name  |
|-----------------|---------------|-------------------------------|-------------------|
| +3.3V (2)       | Vin (10)      | +3V3 / CN6[4]                 | +3V3              |
| GND (6,10)      | GND (1,11,12) | *GND  / CN6[6,7], CN5[7]**    | GND               |
| MISO (4)        | SDO (7)       | PA6  / CN5[5]                 | D12               |
| MOSI (3)        | SDI (5)       | PA7  / CN5[4]                 | D11               |
| AT86_SEL (8)    | CS  (8)       | PB6  / CN5[3]                 | D10               |
| AT96_IRQ (12)   | INT (4)       | PA8  / CN9[8]                 | D7                |
| AT96_SLP_TR (9) | WAKE (3)      | PB10 / CN9[7]                 | D6                |
| AT96_RST (11)   | RESET (2)     | PB4  / CN9[6]                 | D5                |
| SCK (5)         | SCK (6)       | PA5  / CN5[6]                 | D13               |

\* The GND of the radios are actually connected to the drain pad of the FET which in turn has its source pad connected to GND of the board.

| Additional function      | Nucleo Pin (name / connector) | Arduino Pin Name  |
|--------------------------|-------------------------------|-------------------|
| FET drain (SOT-23 pad 1) | PA4  / CN8[3]                 | A2                |

---
## BOM

Below is the bill of materials for equipping the pcb. Obviously you can choose to use other parts as long as they have the same footprint and properties. For the lazy ones: you may want to look at [this pre-filled shopping cart at Mouser](https://www.mouser.com/ProjectManager/ProjectDetail.aspx?AccessID=bb2e666ecb) which contains all the parts needed to equip a single PCB.
The bare PCB can be ordered ad PCBs.io:
<a href="https://PCBs.io/share/8RMjO"><img src="https://s3.amazonaws.com/pcbs.io/share.png" alt="Order from PCBs.io"></img></a>

| Component identifier      | Part                               | cnt. | Mouser Link                                                                      |
|---------------------------|------------------------------------|------|----------------------------------------------------------------------------------|
| J1, J2                    | 1x6 Pin Header 2.54mm pitch female | 2    | [855-M20-7820646](https://www.mouser.de/ProductDetail/855-M20-7820646)           |
| J3, J5                    | 1x8 Pin Header 2.54mm pitch male   | 2    | [538-22-28-0080](https://www.mouser.de/ProductDetail/538-22-28-0080)             |
| J4                        | 1x10 Pin Header 2.54mm pitch male  | 1    | [538-22-28-4102](https://www.mouser.de/ProductDetail/538-22-28-4102)             |
| J6                        | 1x6 Pin Header 2.54mm pitch male   | 1    | [538-22-28-4062](https://www.mouser.de/ProductDetail/538-22-28-4062)             |
| J7                        | 2x6 Pin Header 2.54mm pitch male   | 1    | [571-1037776](https://www.mouser.de/ProductDetail/571-1037776)                   |
| JP1, JP2                  | 1x2 Pin Header 2.54mm pitch male   | 2    | [571-826936-2](https://www.mouser.de/ProductDetail/571-826936-2)                 |
| -                         | Jumpers for JP1 and JP2            | 2    | [151-8010-E](https://www.mouser.de/ProductDetail/151-8010-E)                     |
| Q1                        | SOT-23 n-channel MOSFET            | 1    | [771-PMV20XNEAR](https://www.mouser.de/ProductDetail/771-PMV20XNEAR)             |
| R1, R2                    | 470R 0805 SMD resistor             | 2    | [652-CR0805FX-4700ELF ](https://www.mouser.de/ProductDetail/652-CR0805FX-1501ELF)|
| R3                        | 8.2k 0805 SMD resistor             | 1    | [652-CR0805JW-822ELF](https://www.mouser.de/ProductDetail/652-CR0805JW-822ELF)   |
| R4 or R5 (only 1 needed)  | 47k 0805 SMD resistor              | 1    | [71-CRCW0805-47K-E3](https://www.mouser.de/ProductDetail/71-CRCW0805-47K-E3)     |
| D_PWR_1                   | 0805 SMD LED (red)                 | 1    | [604-AP2012EC](https://www.mouser.de/ProductDetail/604-AP2012EC)                 |
| D_ACT_1                   | 0805 SMD LED (blue)                | 1    | [710-150080BS75000](https://www.mouser.de/ProductDetail/710-150080BS75000)       |

---
## Configuration

To define your prefered default state of the supply switch you can either fit a pull-up resistor to R5 or a pull-down to R4. While this is true for the FET listed in the BOM above, using another FET might reverse the logic and/or need other resistor values to work properly.

| Setting                   | Configuration             |
|---------------------------|---------------------------|
| Radio powered by default  | R4=not fitted / R5=47k    |
| Radio disabled by default | R4=47k / R5=not fitted    |
| LED D_PWR_1 disabled      | JP1=open                  |
| LED D_ACT1 disabled       | JP2=open                  |





---
### Using this shield with [RIOT](https://github.com/RIOT-OS/RIOT)
Depending on which module you want to use, copy one of the the following blocks to your applications Makefile.

**Note:**  Currently RIOT (more specifically it's radio driver(s)) doesn't handle power enable pins for the radios.
Using RIOT's auto-init feature together with "radio disabled by default" configuration will not work out of the box unless you add the needed power-on functionality to the beginning of the drivers init-function. As an alternative you can also just disable auto_init. This implies that you need to take care of enabling/disabling (and by that also initializing) the radio *manually*, wehen the R4/R5 pull resistors are configured to disable the supply by default.

**Note:**  On some boards the CS pin is shared with an LED and the [board_init](https://github.com/RIOT-OS/RIOT/blob/master/boards/common/nucleo/board.c) may overwrite the pin configuration. In this case you need to disable the initialization of the LED.

#### nucleo-l476rg (and maybe others)
##### mrf24j40
```
USEMODULE += mrf24j40
CFLAGS += -DMRF24J40_PARAM_SPI=SPI_DEV\(0\)
CFLAGS += -DMRF24J40_PARAM_SPI_CLK=SPI_CLK_5MHZ
CFLAGS += -DMRF24J40_PARAM_CS=GPIO_PIN\(1,6\)
CFLAGS += -DMRF24J40_PARAM_INT=GPIO_PIN\(0,8\)
CFLAGS += -DMRF24J40_PARAM_RESET=GPIO_PIN\(1,4\)

CFLAGS += -DRADIO_SUPPLY_SWITCH_PINT=GPIO_PIN\(0,4\)
```

##### at86rf2xx
```
USEMODULE += at86rf2xx
CFLAGS += -DAT86RF2XX_PARAM_SPI=SPI_DEV\(0\)
CFLAGS += -DAT86RF2XX_PARAM_SPI_CLK=SPI_CLK_5MHZ
CFLAGS += -DAT86RF2XX_PARAM_CS=GPIO_PIN\(1,6\)
CFLAGS += -DAT86RF2XX_PARAM_INT=GPIO_PIN\(0,8\)
CFLAGS += -DAT86RF2XX_PARAM_SLEEP=GPIO_PIN\(1,10\)
CFLAGS += -DAT86RF2XX_PARAM_RESET=GPIO_PIN\(1,4\)

CFLAGS += -DRADIO_SUPPLY_SWITCH_PINT=GPIO_PIN\(0,4\)
```

#### nucleo144-f446ze (and maybe others)
##### mrf24j40
```
USEMODULE += mrf24j40
CFLAGS += -DMRF24J40_PARAM_SPI=SPI_DEV\(0\)
CFLAGS += -DMRF24J40_PARAM_SPI_CLK=SPI_CLK_5MHZ
CFLAGS += -DMRF24J40_PARAM_CS=GPIO_PIN\(3,14\)
CFLAGS += -DMRF24J40_PARAM_INT=GPIO_PIN\(5,13\)
CFLAGS += -DMRF24J40_PARAM_RESET=GPIO_PIN\(4,11\)

CFLAGS += -DRADIO_SUPPLY_SWITCH_PINT=GPIO_PIN\(0,4\)
```

##### at86rf2xx
```
USEMODULE += at86rf2xx
CFLAGS += -DAT86RF2XX_PARAM_SPI=SPI_DEV\(0\)
CFLAGS += -DAT86RF2XX_PARAM_SPI_CLK=SPI_CLK_5MHZ
CFLAGS += -DAT86RF2XX_PARAM_CS=GPIO_PIN\(3,14\)
CFLAGS += -DAT86RF2XX_PARAM_INT=GPIO_PIN\(5,13\)
CFLAGS += -DAT86RF2XX_PARAM_SLEEP=GPIO_PIN\(4,9\)
CFLAGS += -DAT86RF2XX_PARAM_RESET=GPIO_PIN\(4,11\)

CFLAGS += -DRADIO_SUPPLY_SWITCH_PIN=GPIO_PIN\(2,3\)
```

---

(c) by Michel Rottleuthner
The files in this repository are licensed under a Creative Commons Attribution 4.0 International License.
You should have received a copy of the license along with this work. If not, see [![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/).
