function [chord_pitch, chord_pitch_number] = get_chord_pitch(notes_time, time_seconds_total, chords)
	
	dictionary_chords = { 'C', 'Cm', 'Caum', 'Cdim', ...
     'C#', 'C#m', 'C#aum', 'C#dim', 'D', 'Dm', 'Daum', 'Ddim', ...
     'Eb', 'Ebm', 'Ebaum', 'Ebdim', 'E', 'Em', 'Eaum', 'Edim', ...
     'F', 'Fm', 'Faum', 'Fdim', 'F#', 'F#m', 'F#aum', 'F#dim', ...
     'G', 'Gm', 'Gaum', 'Gdim', 'G#', 'G#m', 'G#aum', 'G#dim', ...
     'A', 'Am', 'Aaum', 'Adim', 'Bb', 'Bbm', 'Bbaum', 'Bbdim', ...
     'B', 'Bm', 'Baum', 'Bdim' };

	notes_energy_total(60) = 0;
	for note = 1:60
		notes_energy_total(note) = sum([notes_time(:,note)]);
	end

	% discover tone music
	notes_energy_tone(12) = 0;
	for note = 1:12
		notes_energy_tone(note) = notes_energy_total(note) + notes_energy_total(note + 12) ...
			+ notes_energy_total(note + 2*12) + notes_energy_total(note + 3*12) ...
				+ notes_energy_total(note + 4*12);
	end


	% find chord tone
	load_chords_tone;
	chords_tone(48) = 0;
	for chord = 1:48
		chords_tone(chord) = sum((notes_energy_tone.*chords_tone_mask(:, chord)'.^2));
	end

	chord_pitch_number = find(chords_tone==max(chords_tone));
	chord_pitch = dictionary_chords{chord_pitch_number};