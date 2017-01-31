// Tätä käytetään kun piirretään GUI

Score = "Score: " + string(global.Score);
Wave = "Wave: " + string(global.WaveAtPlay);
BlocksLeft = "Blocks Left: " + string(global.Wave - global.Order);

draw_text(576,64,Score);

draw_text(576,48, Wave);

draw_text(576,28, BlocksLeft)

