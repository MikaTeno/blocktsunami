for(var vertical= 0; vertical <= 14; vertical++){
    for(var horizontal = 0; horizontal <=9; horizontal++){
        playfield[vertical,horizontal] = 3;
    }
}
for(var vertical= 0; vertical < 15; vertical++){
    CheckV = 64 + (32 * vertical);
    for(var horizontal = 0; horizontal < 10; horizontal++){
        CheckH = 192 + (32 * horizontal) ;
        if (instance_place(CheckH,CheckV,oPlayerBlocks) or instance_place(CheckH,CheckV,oBasicBlock) or instance_place(CheckH,CheckV,oNoInputBlocks)){
            playfield[vertical,horizontal] = 1;

            // instance_create(CheckH, CheckV, oBasicBlock);


        } else {
            playfield[vertical,horizontal] = 0;
        }
    }
}
DrawBlocks(playfield);
show_debug_message("ennen syöttöä");
show_debug_message(playfield[]);

// rivin tarkistus ja poisto
// var Rivit[];
var Rivi = 0;

for(var a = 0; a < 15; a++){
    var PalikatRivissa = 0;
    for(var b = 0; b < 10; b++){
        if (playfield[a,b] == 1) {
            PalikatRivissa++;
            if(PalikatRivissa == 10){
                show_debug_message("Palikat rivissa:");
                show_debug_message(PalikatRivissa);
                for(var c = 0; c < 10; c++){
                    CheckV = oArrayChecker.y + (32 * a);
                    CheckH = oArrayChecker.x + (32 * c);
                    Tuhottava = instance_place(CheckH,CheckV,oBasicBlock);
                    with(Tuhottava){
                        instance_destroy();
                    }
                    playfield[a,c] = 0;
                }
                for(var d = a; d > 0; d--){
                    for(var e = 0; e < 10; e++){
                        playfield[d,e] = playfield[d-1,e];
                    }
                }
                DrawBlocks(playfield);
                PalikatRivissa = 0;
                //Rivit[Rivi] = a;
                //Rivi++;
            }
        }
        
    }
   
}

show_debug_message(playfield[]);

with(oPlayerBlocks){
    instance_destroy();
}


RandomBlocksFromList();
instance_destroy();

