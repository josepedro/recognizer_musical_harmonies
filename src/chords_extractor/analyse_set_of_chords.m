function chords = analyse_set_of_chords(set_of_chords)

	set_of_chords_A = set_of_chords{1};
	set_of_chords_B = set_of_chords{2};
	set_of_chords_C = set_of_chords{3};
	set_of_chords_D = set_of_chords{4};
	set_of_chords_E = set_of_chords{5};

	total_seconds = length(set_of_chords_A);
	chords(1:total_seconds) = 0;
	for time = 1:total_seconds
		chords_to_analyse = [set_of_chords_A(time) set_of_chords_B(time) ...
		 set_of_chords_C(time) set_of_chords_D(time) set_of_chords_E(time)];
		chords(time) = mode(chords_to_analyse);
	end
end
