a = argument0;
with(oBasicBlock){
    instance_destroy();
}
with(oNoInputBlocks){
    instance_destroy();
}
for(var vertical= 0; vertical < 20; vertical++){
    CheckV = y + (32 * vertical);
    for(var horizontal = 0; horizontal < 10; horizontal++){
        CheckH = x + (32 * horizontal) ;
        if ( argument0[vertical,horizontal] = 1){
            instance_create(CheckH, CheckV, oBasicBlock);
        } else if ( argument0[vertical,horizontal] = 0) {
        }
    }
}

return a;
