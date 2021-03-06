set(CMAKE_SYSTEM_NAME Generic)

set(CMAKE_C_COMPILER avr-gcc)
set(CMAKE_CXX_COMPILER avr-g++)

set(CSTANDARD "-std=c11")
set(CXXSTANDARD "-std=c++14")
set(CDEBUG "-gstabs")
# Many Wstrict-prototypes in arduinocore headers...
set(CWARN "-Wall -Wextra")
set(CTUNING "-funsigned-char -funsigned-bitfields -fpack-struct -fshort-enums")
set(CMCU "-mmcu=atmega328p")
set(CDEFS "-DF_CPU=16000000")

set(CMAKE_C_FLAGS "${CMCU} ${CDEBUG} ${CDEFS} ${CINCS} ${OPTIMIZATION_LEVEL} ${CWARN} ${CSTANDARD} ${CEXTRA}")
set(CMAKE_CXX_FLAGS "${CMCU} ${CDEFS} ${CINCS} ${OPTIMIZATION_LEVEL} ${CXXSTANDARD}")
