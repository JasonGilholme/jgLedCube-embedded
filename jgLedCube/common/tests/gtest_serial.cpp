#include <gtest/gtest.h>

#include <jgLedCube/common/defines.h>
#include <jgLedCube/common/serial.h>

TEST(Serial, EncodeSetLed) {
    // Encode the command
    uint8_t encodedCommand[LED_CUBE_COMMAND_PACKET_SIZE] = {};
    jgLedCube::serial::encode_setLed(encodedCommand, 2, 4, 6, 15, 13, 9);

    // Decode the command
    uint8_t decodedArgs[6] = {};
    uint8_t decodedCommandID = jgLedCube::serial::decode_commandId(encodedCommand);
    jgLedCube::serial::decode_setLed(encodedCommand, decodedArgs);

    // Check that the decoded args match the inputs when created.
    EXPECT_EQ(decodedCommandID, LED_CUBE_CMD_SET_LED);
    EXPECT_EQ(decodedArgs[0], 2);
    EXPECT_EQ(decodedArgs[1], 4);
    EXPECT_EQ(decodedArgs[2], 6);
    EXPECT_EQ(decodedArgs[3], 15);
    EXPECT_EQ(decodedArgs[4], 13);
    EXPECT_EQ(decodedArgs[5], 9);
}

TEST(Serial, EncodeGetLed) {
    // Encode the command
    uint8_t encodedCommand[LED_CUBE_COMMAND_PACKET_SIZE] = {};
    jgLedCube::serial::encode_getLed(encodedCommand, 3, 6, 9);

    // Decode the command
    uint8_t decodedArgs[3] = {};
    uint8_t decodedCommandID = jgLedCube::serial::decode_commandId(encodedCommand);
    jgLedCube::serial::decode_getLed(encodedCommand, decodedArgs);

    // Check that the decoded args match the inputs when created.
    EXPECT_EQ(decodedCommandID, LED_CUBE_CMD_GET_LED);
    EXPECT_EQ(decodedArgs[0], 3);
    EXPECT_EQ(decodedArgs[1], 6);
    EXPECT_EQ(decodedArgs[2], 9);
}

TEST(Serial, EncodeGetLedReturn) {
    // Encode the command
    uint8_t encodedCommand[LED_CUBE_COMMAND_PACKET_SIZE] = {};
    jgLedCube::serial::encode_getLedReturn(encodedCommand, 14, 12, 13);

    // Decode the command
    uint8_t decodedArgs[3] = {};
    uint8_t decodedCommandID = jgLedCube::serial::decode_commandId(encodedCommand);
    jgLedCube::serial::decode_getLedReturn(encodedCommand, decodedArgs);

    // Check that the decoded args match the inputs when created.
    EXPECT_EQ(decodedCommandID, LED_CUBE_CMD_GET_LED_RETURN);
    EXPECT_EQ(decodedArgs[0], 14);
    EXPECT_EQ(decodedArgs[1], 12);
    EXPECT_EQ(decodedArgs[2], 13);
}

TEST(Serial, EncodeGetConfig) {
    // Encode the command
    uint8_t encodedCommand[LED_CUBE_COMMAND_PACKET_SIZE] = {};
    jgLedCube::serial::encode_getConfig(encodedCommand);

    // Decode the command
    uint8_t decodedCommandID = jgLedCube::serial::decode_commandId(encodedCommand);

    // Check that the decoded args match the inputs when created.
    EXPECT_EQ(decodedCommandID, LED_CUBE_CMD_GET_CONFIG);
}

// TODO: Move this to embedded
//TEST(Serial, EncodeGetConfigReturn) {
//    // Encode the command
//    uint8_t encodedCommand[LED_CUBE_COMMAND_PACKET_SIZE] = {};
//    jgLedCube::serial::encode_getConfigReturn(encodedCommand);
//
//    // Decode the command
//    uint8_t decodedArgs[3] = {};
//    uint8_t decodedCommandID = jgLedCube::serial::decode_commandId(encodedCommand);
//    jgLedCube::serial::decode_getConfigReturn(encodedCommand, decodedArgs);
//
//    // Check that the decoded args match the inputs when created.
//    EXPECT_EQ(decodedCommandID, LED_CUBE_CMD_GET_CONFIG_RETURN);
//    EXPECT_EQ(decodedArgs[0], LED_CUBE_X_DIMENSION);
//    EXPECT_EQ(decodedArgs[1], LED_CUBE_Y_DIMENSION);
//    EXPECT_EQ(decodedArgs[2], LED_CUBE_Z_DIMENSION);
//    EXPECT_EQ(decodedArgs[3], LED_CUBE_N_CHANNELS);
//    EXPECT_EQ(decodedArgs[4], LED_CUBE_VERSION);
//    EXPECT_EQ(decodedArgs[5], LED_CUBE_UID);
//}

TEST(Serial, EncodeClear) {
    // Encode the command
    uint8_t encodedCommand[LED_CUBE_COMMAND_PACKET_SIZE] = {};
    jgLedCube::serial::encode_clear(encodedCommand);

    // Decode the command
    uint8_t decodedCommandID = jgLedCube::serial::decode_commandId(encodedCommand);

    // Check that the decoded args match the inputs when created.
    EXPECT_EQ(decodedCommandID, LED_CUBE_CMD_CLEAR);
}

// TODO: Move this to embedded
//TEST(Serial, ProcessSetLed) {
//    jgLedCube::core::clear();
//
//    // Encode the command
//    uint8_t encodedCommand[LED_CUBE_COMMAND_PACKET_SIZE] = {};
//    jgLedCube::serial::encode_setLed(encodedCommand, 2, 2, 2, 15, 13, 9);
//
//    jgLedCube::serial::processCommand(encodedCommand);
//
//    uint8_t r = 0;
//    uint8_t g = 0;
//    uint8_t b = 0;
//
//    for (uint8_t z=1; z <= LED_CUBE_Z_DIMENSION; z++){
//        for (uint8_t y=1; y <= LED_CUBE_Y_DIMENSION; y++){
//            for (uint8_t x=1; x <= LED_CUBE_X_DIMENSION; x++){
//                jgLedCube::core::getLed(x, y, z, r, g, b);
//                if (x == 2 && y == 2 && z == 2){
//                    EXPECT_EQ(r, 15);
//                    EXPECT_EQ(g, 13);
//                    EXPECT_EQ(b, 9);
//                }else{
//                    EXPECT_EQ(r, 0);
//                    EXPECT_EQ(g, 0);
//                    EXPECT_EQ(b, 0);
//                }
//            }
//        }
//    }
//}


// TODO: Move this to embedded
//TEST(Serial, ProcessClear) {
//    uint8_t r = 0;
//    uint8_t g = 0;
//    uint8_t b = 0;
//
//    for (uint8_t z=1; z <= LED_CUBE_Z_DIMENSION; z++){
//        for (uint8_t y=1; y <= LED_CUBE_Y_DIMENSION; y++){
//            for (uint8_t x=1; x <= LED_CUBE_X_DIMENSION; x++){
//                jgLedCube::core::setLed(x, y, z, 15, 15, 15);
//            }
//        }
//    }
//
//    for (uint8_t z=1; z <= LED_CUBE_Z_DIMENSION; z++){
//        for (uint8_t y=1; y <= LED_CUBE_Y_DIMENSION; y++){
//            for (uint8_t x=1; x <= LED_CUBE_X_DIMENSION; x++){
//                jgLedCube::core::getLed(x, y, z, r, g, b);
//                EXPECT_EQ(r, 15);
//                EXPECT_EQ(g, 15);
//                EXPECT_EQ(b, 15);
//            }
//        }
//    }
//
//    // Encode the command
//    uint8_t encodedCommand[LED_CUBE_COMMAND_PACKET_SIZE] = {};
//    jgLedCube::serial::encode_clear(encodedCommand);
//
//    jgLedCube::serial::processCommand(encodedCommand);
//
//    for (uint8_t z=1; z <= LED_CUBE_Z_DIMENSION; z++){
//        for (uint8_t y=1; y <= LED_CUBE_Y_DIMENSION; y++){
//            for (uint8_t x=1; x <= LED_CUBE_X_DIMENSION; x++){
//                jgLedCube::core::getLed(x, y, z, r, g, b);
//                EXPECT_EQ(r, 0);
//                EXPECT_EQ(g, 0);
//                EXPECT_EQ(b, 0);
//            }
//        }
//    }
//}

TEST(Serial, TransportCodec){
    // Encode the command
    uint8_t outTransportCommand[LED_CUBE_TRANSPORT_PACKET_SIZE] = {};
    uint8_t encodedCommand[LED_CUBE_COMMAND_PACKET_SIZE] = {};

    uint8_t inTransportCommand[LED_CUBE_TRANSPORT_PACKET_SIZE] = {};
    uint8_t decodedCommand[LED_CUBE_COMMAND_PACKET_SIZE] = {};

    jgLedCube::serial::encode_setLed(encodedCommand, 2, 2, 2, 15, 13, 9);

    // Make a transport packet
    jgLedCube::serial::constructTransportPacket(outTransportCommand, encodedCommand);
    jgLedCube::serial::deconstructTransportPacket(outTransportCommand, decodedCommand);

    // Interogate the output buffer
    EXPECT_EQ(outTransportCommand[0], jgLedCube::serial::transportSB);
    EXPECT_EQ(outTransportCommand[1], jgLedCube::serial::transportSB);

    EXPECT_EQ(outTransportCommand[2], encodedCommand[0]);
    EXPECT_EQ(outTransportCommand[3], encodedCommand[1]);
    EXPECT_EQ(outTransportCommand[4], encodedCommand[2]);
    EXPECT_EQ(outTransportCommand[5], encodedCommand[3]);

    EXPECT_EQ(outTransportCommand[6], (uint8_t)~(uint8_t)encodedCommand[0]);
    EXPECT_EQ(outTransportCommand[7], jgLedCube::serial::transportEB);
}

// todo: only run when mock serial io ports have been defined.
//TEST(Serial, SendReceive) {
//    jgLedCube::serial::init();
//
//    // init buffers
//    uint8_t outCommand[LED_CUBE_COMMAND_PACKET_SIZE];
//    uint8_t outTransport[LED_CUBE_TRANSPORT_PACKET_SIZE];
//    uint8_t inCommand[LED_CUBE_COMMAND_PACKET_SIZE];
//    uint8_t inTransport[LED_CUBE_TRANSPORT_PACKET_SIZE];
//
//    // encode command & transport packets
//    jgLedCube::serial::encode_setLed(outCommand, 5, 5, 8, 12, 13, 5);
//    jgLedCube::serial::constructTransportPacket(outTransport, outCommand);
//
//    // send it
//    jgLedCube::serial::sendTransportPacket(outTransport);
//
//    // receive it
//    bool receivedPacket = jgLedCube::serial::receiveTransportPacket(inTransport);
//
//    // received pack?
//    EXPECT_EQ(receivedPacket, true);
//
//    // successful transport?
//    for (int i = 0; i < LED_CUBE_TRANSPORT_PACKET_SIZE; ++i) {
//        EXPECT_EQ(inTransport[i], outTransport[i]);
//    }
//
//    uint8_t outArgs[6];
//
//    jgLedCube::serial::deconstructTransportPacket(inTransport, inCommand);
//    jgLedCube::serial::decode_setLed(inCommand, outArgs);
//
//    EXPECT_EQ(outArgs[0], 5);
//    EXPECT_EQ(outArgs[1], 5);
//    EXPECT_EQ(outArgs[2], 8);
//    EXPECT_EQ(outArgs[3], 12);
//    EXPECT_EQ(outArgs[4], 13);
//    EXPECT_EQ(outArgs[5], 5);
//}
