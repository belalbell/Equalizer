function composite_signal=calculate_composite_signal(filtered_signal_1,gain_1,filtered_signal_2,gain_2,filtered_signal_3,gain_3,filtered_signal_4,gain_4,filtered_signal_5,gain_5,filtered_signal_6,gain_6,filtered_signal_7,gain_7,filtered_signal_8,gain_8,filtered_signal_9,gain_9)
composite_signal= filtered_signal_1*gain_1+filtered_signal_2*gain_2+filtered_signal_3*gain_3+filtered_signal_4*gain_4+filtered_signal_5*gain_5+filtered_signal_6*gain_6+filtered_signal_7*gain_7+filtered_signal_8*gain_8+filtered_signal_9*gain_9;