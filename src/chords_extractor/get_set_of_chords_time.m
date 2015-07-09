function set_of_chords_time = get_set_of_chords_time(set_of_notes_time)
	load_chords_tone;

	set_of_chords_time = {};
	for set = 1:5
		notes_time = set_of_notes_time{set};
		time_total = length(notes_time(:,1));
		chords_time(1:time_total) = 0;

		for time = 1:time_total
			
			notes_energy_tone(12) = 0;
			for note = 1:12
				notes_energy_tone(note) = notes_time(time, note) + notes_time(time, note + 12) ...
					+ notes_time(time, note + 2*12) + notes_time(time, note + 3*12) ...
						+ notes_time(time, note + 4*12);
			end

			energy_chords(1:48) = 0;
		    for chord = 1:48
		        energy_chords(chord) = sum((notes_energy_tone.*chords_tone_mask(:, chord)').^2);
		    end
		    
		    max_chord = find(energy_chords==max(energy_chords));

		    chords_time(time) = max_chord(1);
		end

		set_of_chords_time{set} = chords_time;
	end
end