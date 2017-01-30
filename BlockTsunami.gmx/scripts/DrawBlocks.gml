// Tämä piirtää ruudulle palikat argumenttina annetun taulukon mukaan. 
// Tämän taulukon (array) nimi on yleensä playfield.

a = argument0;
// poistetaan kaikki palikat (myös oBasicBlock) ruudulta, koska tässä vaiheessa ne korvataan oBasicBlockeilla.
// HUOM! myös oBasicBlock poistetaan, jotta niitä ei jää turhaan tulevien oBasicBlockien alle.
with(oBasicBlock){
    instance_destroy();
}
with(oNoInputBlocks){
    instance_destroy();
}

// käydään läpi argumenttina tullut taulukko rivi riviltä (rivejä on 20)
for(var vertical= 0; vertical < 20; vertical++){
    // CheckV on tällä hetkellä käsiteltävänä olevan palikat y(eli vertikaalinen sijainti).
    // CheckV = y(oArrayCheckin sijainti) + 32 * vertical (tämän hetkinen rivi), joten ensimmäinen arvo on oArrayCheckin sijainnin y:n arvo.
    CheckV = y + (32 * vertical);
    // Tässä käydään tällä taulukon tämän rivin sarakkeet(?) läpi (sarakkeita on 10)
    for(var horizontal = 0; horizontal < 10; horizontal++){
        // sama kuin yllä, mutta X:lle
        CheckH = x + (32 * horizontal);
        // argument0[y,x] on argumenttina annettu taulukko, jos tässä kohdassa (esim. argument[1,3]) on 1 ajetaan alla oleva koodi
        // muutoin ei tehdä mitään.
        // HUOM! tässä voisi olla myös pelkkä else, koska yhdessä paikassa voi olla vain joko palikka tai ei mitään (1 tai 0).
        if ( argument0[vertical,horizontal] == 1){
            instance_create(CheckH, CheckV, oBasicBlock);
        } else if ( argument0[vertical,horizontal] = 0) {
        }
    }
}

return a;
