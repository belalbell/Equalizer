function calculate_filter_phase(filtered_signal)
%unwrap Corrects phase angles to produce smoother phase plot
%stem Plots discrete sequence data
%angle returns the phase angles, in radians, for each element of array filtered_signal
%stem(unwrap(angle(filtered_signal)));
fvtool(filtered_signal);
