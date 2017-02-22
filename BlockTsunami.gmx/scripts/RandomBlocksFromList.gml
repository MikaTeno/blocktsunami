// Choose a block from the list


if (global.Wave == 2){
NextBlock = oShowBlock
instance_create(736,144,NextBlock);
NextBlock.image_index = choose(0, 1, 2, 3, 4, 5 ,6 ,7);
global.FirstBlock = false;
}


Blocks [0] = oBlock1
Blocks [1] = oBlock2
Blocks [2] = oBlock3
Blocks [3] = oBlock4
Blocks [4] = oBlock5
Blocks [5] = oBlock6
Blocks [6] = oBlock7
Blocks [7] = oBlock8

TheBlock = Blocks[oShowBlock.image_index];

instance_create(336,80,TheBlock);

NextBlock = oShowBlock
instance_create(736,144,NextBlock);
NextBlock.image_index = choose(0, 1, 2, 3, 4, 5 ,6 ,7);



//TheBlock = choose(oBlock1, oBlock2, oBlock3, oBlock4, oBlock5, oBlock6, oBlock7, oBlock8);

//instance_create(336,80,TheBlock);

