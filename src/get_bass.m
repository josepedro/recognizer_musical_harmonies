function bass_time = get_bass(set_of_notes_time)

	notes_time_A = set_of_notes_time{1};
	notes_time_B = set_of_notes_time{2};
	notes_time_C = set_of_notes_time{3};
	notes_time_D = set_of_notes_time{4};
	notes_time_E = set_of_notes_time{5};

	total_seconds = length(notes_time_A(:,1));
	notes_time(total_seconds, 60) = 0;
	for time = 1:total_seconds
		for note = 1:60
			notes_to_analyse = [notes_time_A(time, note) notes_time_B(time, note) ...
		 notes_time_C(time, note) notes_time_D(time, note) notes_time_E(time, note)];
			notes_time(time, note) = mode(notes_to_analyse);
		end
	end

    bass_time(1:total_seconds) = 0;
	for time = 1:total_seconds
		maxs = find(notes_time(time,:)==max(notes_time(time,:)));
		bass_time(time) = maxs(1);
	end

	for bass = 1:length(bass_time)
		bass_time(bass) = mod(bass_time(bass) - 1, 12) + 1;
	end

end