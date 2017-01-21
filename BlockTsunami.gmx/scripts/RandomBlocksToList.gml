RandomBlocks[0] = oBlock1;
RandomBlocks[1] = oBlock2;
RandomBlocks[2] = oBlock3;
RandomBlocks[3] = oBlock4;
RandomBlocks[4] = oBlock5;
RandomBlocks[5] = oBlock6;
aLength = array_length_1d(RandomBlocks);

show_debug_message(aLength);

instance_create(336,128,RandomBlocks[random_range(0,5)]);

