<project xmlns="com.autoesl.autopilot.project" top="image_passthrough" name="cv_accel">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" clean="true" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../../../PL/image_passthrough_tb.cpp" sc="0" tb="1" cflags=" -I/misc/scratch/sp02-senior-design/augmented-reality-glasses/fpga_software/PL/Vitis_Libraries/vision/L1/include  -std=c++14 -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../PL/image_passthrough.cpp" sc="0" tb="false" cflags="-I/misc/scratch/sp02-senior-design/augmented-reality-glasses/fpga_software/PL/Vitis_Libraries/vision/L1/include -std=c++14" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

