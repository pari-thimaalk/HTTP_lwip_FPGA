# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\kpari\final_project\my_workspace\eth_top_with_kbd\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\kpari\final_project\my_workspace\eth_top_with_kbd\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {eth_top_with_kbd}\
-hw {C:\Users\kpari\final_project\hw\eth_top_with_kbd.xsa}\
-out {C:/Users/kpari/final_project/my_workspace}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {lwip_tcp_perf_client}
platform generate -domains 
platform active {eth_top_with_kbd}
platform generate -quick
bsp reload
bsp config phy_link_speed "CONFIG_LINKSPEED_AUTODETECT"
bsp config phy_link_speed "CONFIG_LINKSPEED100"
bsp write
bsp reload
catch {bsp regenerate}
bsp write
platform config -updatehw {C:/Users/kpari/final_project/hw/eth_top_with_kbd.xsa}
bsp reload
bsp reload
platform generate
platform generate -domains standalone_microblaze_0 
platform generate
platform clean
platform generate
platform clean
platform generate
