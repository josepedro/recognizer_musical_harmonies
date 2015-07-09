function set_of_notes_time = binarize_notes(set_of_notes_time, time_seconds_total)

	% binarize set of notes
	for set = 1:5
	    notes_time = set_of_notes_time{set};
	    
	    for time = 1:time_seconds_total
	        for note = 1:60
	            if notes_time(time, note) < max(max(notes_time))/180
	                notes_time(time, note) = 0;
	            else
	                notes_time(time, note) = 1;
	            end
	        end
	    end

	    set_of_notes_time{set} = notes_time;
	end