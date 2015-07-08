
function set_of_windows_signals = build_window_short_fft(signal, time, fs)
	signal = [signal(:)];

    % part A
    time_start_A = round(1+((time-1)*fs));
    time_end_A = round(time*fs);
    signal_time_A = signal(time_start_A:time_end_A);
    window = blackman(length(signal_time_A));
    signal_time_A = window.*signal_time_A;

    % part B (displacement = + 0.2 seconds)
    time_start_B = round(1+((time-1)*fs+0.2*fs));
    time_end_B = round((time+0.2)*fs);
    if time_start_B < length(signal) && time_end_B <= length(signal)
        signal_time_B = signal(time_start_B:time_end_B);
        window = blackman(length(signal_time_B));
        signal_time_B = window.*signal_time_B;
    else
        signal_time_B(length(signal)) = 0;
    end

    % part C (displacement = + 0.4 seconds)
    time_start_C = round(1+((time-1)*fs+0.4*fs));
    time_end_C = round((time+0.4)*fs);
    if time_start_C < length(signal) && time_end_C <= length(signal)
        signal_time_C = signal(time_start_C:time_end_C);
        window = blackman(length(signal_time_C));
        signal_time_C = window.*signal_time_C;
    else
        signal_time_C(length(signal)) = 0;
    end

    % part D (displacement = + 0.6 seconds)
    time_start_D = round(1+((time-1)*fs+0.6*fs));
    time_end_D = round((time+0.6)*fs);
    if time_start_D < length(signal) && time_end_D <= length(signal)
        signal_time_D = signal(time_start_D:time_end_D);
        window = blackman(length(signal_time_D));
        signal_time_D = window.*signal_time_D;
    else
        signal_time_D(length(signal)) = 0;
    end

    % part E (displacement = + 0.8 seconds)
    time_start_E = round(1+((time-1)*fs+0.8*fs));
    time_end_E = round((time+0.8)*fs);
    if time_start_E < length(signal) && time_end_E <= length(signal)
        signal_time_E = signal(time_start_E:time_end_E);
        window = blackman(length(signal_time_E));
        signal_time_E = window.*signal_time_E;
    else
        signal_time_E(length(signal)) = 0;
    end

    set_of_windows_signals = {};
    if length(signal_time_A) == length(signal_time_B) && ...
        length(signal_time_A) == length(signal_time_C) && ...
         length(signal_time_A) == length(signal_time_D) &&  ...
          length(signal_time_A) == length(signal_time_E)
        set_of_windows_signals{1} = signal_time_A;
        set_of_windows_signals{2} = signal_time_B;
        set_of_windows_signals{3} = signal_time_C;
        set_of_windows_signals{4} = signal_time_D;
        set_of_windows_signals{5} = signal_time_E;
    else
        set_of_windows_signals{1} = signal_time_A;
        set_of_windows_signals{2} = signal_time_A;
        set_of_windows_signals{3} = signal_time_A;
        set_of_windows_signals{4} = signal_time_A;
        set_of_windows_signals{5} = signal_time_A;
    end