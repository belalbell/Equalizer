function filter_order = calculate_filter_order(signal)
%The maximum delay, in samples, used in creating each output sample is called the order of the filter
filter_order = filtord(signal);