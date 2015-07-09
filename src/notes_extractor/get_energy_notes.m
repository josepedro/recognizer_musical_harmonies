function set_of_notes_time = get_energy_notes(set_of_spectrums, set_of_notes_time, time)
	
	% load data notes
	load_notes;

	for set = 1:5
		respfreq = set_of_spectrums{set};
		notes_time = set_of_notes_time{set};

		% this case works in one case
		respfreq = [respfreq zeros(1, length(notes(1,:)) - length(respfreq))];
		for note = 1:60
	        notes_time(time, note) = sum((respfreq.*notes(note,:)).^2);    
		end	

		set_of_notes_time{set} = notes_time;
	end

	