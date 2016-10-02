///  Stores the id numbers of commands and modes to be shared across all cube implementations

#ifndef JGLEDCUBE_DEFINES_H
#define JGLEDCUBE_DEFINES_H

// ============== CMD SETTERS ============== //
#define LED_CUBE_CMD_SET_LED 1
#define LED_CUBE_CMD_SET_MODE 2

// ============== CMD GETTERS ============== //
#define LED_CUBE_CMD_GET_CONFIG 3
#define LED_CUBE_CMD_GET_LED 4
#define LED_CUBE_CMD_GET_MODES 5
#define LED_CUBE_CMD_GET_MODE 6

// ============== CMD RETURNS ============== //
#define LED_CUBE_CMD_GET_LED_RETURN 7
#define LED_CUBE_CMD_GET_CONFIG_RETURN 8
#define LED_CUBE_CMD_GET_MODES_RETURN 9
#define LED_CUBE_CMD_GET_MODE_RETURN 10

// ============== MODE IDS ============== //
#define LED_CUBE_MODE_SERIAL_LISTEN 100

#endif //JGLEDCUBE_DEFINES_H