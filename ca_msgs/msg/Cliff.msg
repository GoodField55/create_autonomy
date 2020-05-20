Header header

# Cliff sensors (Create 2 only) in order from left to right
# Value = true if an obstacle detected
bool is_cliff_left
bool is_cliff_front_left
bool is_cliff_front_right
bool is_cliff_right

# Raw cliff sensor signals
# Values in range [0, 4095]
uint16 cliff_signal_left
uint16 cliff_signal_front_left
uint16 cliff_signal_front_right
uint16 cliff_signal_right
