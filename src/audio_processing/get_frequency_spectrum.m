% get frequency spectrum
function set_of_spectrums = get_frequency_spectrum(set_of_windows_signals, sampling)

    % allocate struct to spectrum
    set_of_spectrums = {};
    sampling = sampling/21;

    for part_signal_iterator = 1:5
    	% make downsample to put frequency max in 1050 Hz
        signal = downsample(set_of_windows_signals{part_signal_iterator}, 21);
        % doing fourier transform
        frequencies=(0:length(signal)-1)*sampling/length(signal);
        module_fft = abs(fft(signal));
        f_round = round(frequencies);
        frequencies_energy(max(f_round)) = 0;
        for slot = 2:length(f_round)
            frequencies_energy(f_round(slot)) = module_fft(slot);
        end
        frequency_spectrum_part = frequencies_energy(1:fix(end/2));
        set_of_spectrums{part_signal_iterator} = frequency_spectrum_part;
    end