function chords_with_bass = get_chords_bass(chords_number, bass_time)

 load_dictionary_chords;

 % build chords with bass to translate to dictionary
 chords_with_bass_number = {};
 chord_iterator = 1;
 for chord = 1:48
 	for bass = 1:12
 		chords_with_bass_number{chord_iterator} = [chord, bass];
 		chord_iterator = chord_iterator + 1;
 	end
 end

 %---------------------------------------------------------
 chords_with_bass = {};
 for time = 1:length(chords_number)
 	 for chord = 1:length(chords_with_bass_number)
 	 	peer_chord = chords_with_bass_number{chord};
 	 	if peer_chord(1) == chords_number(time) && peer_chord(2) == bass_time(time)
 	 		chords_with_bass{time} = dictionary_chords{chord};
 	 	end
 	 end
 end

end