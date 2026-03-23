<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="com.autoesl.autopilot.project" name="cv_accel" top="image_passthrough">
  <files>
    <file name="../../input_bits.txt" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false" csimflags=" -Wno-unknown-pragmas"/>
    <file name="../../../PL/image_passthrough_tb.cpp" sc="0" tb="1" cflags=" -I/misc/scratch/sp02-senior-design/augmented-reality-glasses/fpga_software/PL/Vitis_Libraries/vision/L1/include  -std=c++14 -Wno-unknown-pragmas" blackbox="false" csimflags=" -Wno-unknown-pragmas"/>
    <file name="../PL/image_passthrough.cpp" sc="0" tb="false" cflags="-I/misc/scratch/sp02-senior-design/augmented-reality-glasses/fpga_software/PL/Vitis_Libraries/vision/L1/include -std=c++14" blackbox="false" csimflags=""/>
  </files>
  <solutions>
    <solution name="solution1" status="active"/>
  </solutions>
  <includePaths/>
  <libraryPaths/>
  <Simulation>
    <SimFlow askAgain="false" name="csim" clean="true" csimMode="0" lastCsimMode="0"/>
  </Simulation>
</project>
