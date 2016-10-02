/// This is the logic implementation for the serial interface.  This should be completely hardware independent.


#include "serial.h"

#include "core.h"
#include "defines.h"


namespace jgLedCube {
    namespace serial {

        // CommandPatternLength = LED_CUBE_COMMAND_PACKET_SIZE
        // TransportPattern = A, A, CommandPattern, ~CP[0], Z

        // Data Life Cycle = args -> commandPacket -> transportPacket

        // How to send data
        // encode_*() -  receives "args" and bakes them into an array that meets the commandPacket spec.
        // sendCommand() - takes the commandPacket and send it down the serial line, meeting the transportPacket spec.

        // How to get data
        // listenForCommand() scrubs the serial input detecting the transportPacket pattern and extracts the commandPacket component.
        // decodeCommand() takes that commandPacket, expands it into args and calls the appropriate function.

        /// Buffers
        uint8_t serialInput[12] = {};
        uint8_t encodeCommandPacket[LED_CUBE_COMMAND_PACKET_SIZE] = {};
        uint8_t decodeCommandPacket[LED_CUBE_COMMAND_PACKET_SIZE] = {};


        /// setLed() Command Format
        ///  CMD ID    X        Y    Z        R    G        B    /
        /// [ xxxx   xxxx ] [ xxxx xxxx ] [ xxxx xxxx ] [ xxxx xxxx ]
        void encode_setLed(uint8_t outCmdPacket[LED_CUBE_COMMAND_PACKET_SIZE], uint8_t x, uint8_t y, uint8_t z, uint8_t r, uint8_t g, uint8_t b){
            outCmdPacket[0] = (x << 4) ^ (LED_CUBE_CMD_SET_LED & 15);
            outCmdPacket[1] = (z << 4) ^ (y & 15);
            outCmdPacket[2] = (g << 4) ^ (r & 15);
            outCmdPacket[3] = 0 ^ (b & 15);
        }
        void decode_setLed(uint8_t inCmdPacket[LED_CUBE_COMMAND_PACKET_SIZE], uint8_t outArgs[6]){
            outArgs[0] = (inCmdPacket[0] & 240) >> 4;
            outArgs[1] = inCmdPacket[1] & 15;
            outArgs[2] = (inCmdPacket[1] & 240) >> 4;
            outArgs[3] = inCmdPacket[2] & 15;
            outArgs[4] = (inCmdPacket[2] & 240) >> 4;
            outArgs[5] = inCmdPacket[3] & 15;
        }


        /// getLed()
        void encode_getLed(uint8_t outCmdPacket[LED_CUBE_COMMAND_PACKET_SIZE], uint8_t x, uint8_t y, uint8_t z){
            outCmdPacket[0] = (x << 4) ^ (LED_CUBE_CMD_GET_LED & 15);
            outCmdPacket[1] = (z << 4) ^ (y & 15);
            outCmdPacket[2] = 0;
            outCmdPacket[3] = 0;
        }
        void decode_getLed(uint8_t inCmdPacket[LED_CUBE_COMMAND_PACKET_SIZE], uint8_t outArgs[3]){
            outArgs[0] = (inCmdPacket[0] & 240) >> 4;
            outArgs[1] = inCmdPacket[1] & 15;
            outArgs[2] = (inCmdPacket[1] & 240) >> 4;
        }


        /// getLed() Return
        void encode_getLedReturn(uint8_t outCmdPacket[LED_CUBE_COMMAND_PACKET_SIZE], uint8_t r, uint8_t g, uint8_t b){
            outCmdPacket[0] = (r << 4) ^ (LED_CUBE_CMD_GET_LED & 15);
            outCmdPacket[1] = (b << 4) ^ (g & 15);
            outCmdPacket[2] = 0;
            outCmdPacket[3] = 0;
        }
        void decode_getLedReturn(uint8_t inCmdPacket[LED_CUBE_COMMAND_PACKET_SIZE], uint8_t outArgs[3]){
            outArgs[0] = (inCmdPacket[0] & 240) >> 4;
            outArgs[1] = inCmdPacket[1] & 15;
            outArgs[2] = (inCmdPacket[1] & 240) >> 4;
        }
    }
}