clear('all');
close 'all';

cd ../src

[chords_time, chord_key] = main('../example/musics_wav/music_piano.wav');

disp('Chords over time: ');
disp(chords_time);

disp('Chord key: ');
disp(chord_key);

cd ../example