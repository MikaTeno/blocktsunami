/*for(var vertical= 0; vertical <= 14; vertical++){
    for(var horizontal = 0; horizontal <=9; horizontal++){
        playfield[vertical,horizontal] = 3;
    }
}
for(var vertical= 0; vertical < 15; vertical++){
    CheckV = oArrayChecker.y + (32 * vertical);
    for(var horizontal = 0; horizontal < 10; horizontal++){
        CheckH = oArrayChecker.x + (32 * horizontal) ;
        if (instance_place(CheckH,CheckV,oPlayerBlocks)){
            playfield[vertical,horizontal] = 1;
            instance_create(CheckH, CheckV, oBasicBlock);
        } else {
            playfield[vertical,horizontal] = 0;
        }
    }
}


show_debug_message(playfield[]);
instance_destroy();
*/
