*** Settings ***
Documentation     An example about for loops.

*** Variables ***
@{ROBOTS}=        Bender    Johnny5    Terminator    Robocop

*** Tasks ***
# Loop Over A List Of Items And Log Each Of Them
#     FOR    ${robot}    IN    @{ROBOTS}
#         Log to console    ${robot}
#     END

# For loop without variaable
Loop Over A List Of Items And Log Each Of Them
    FOR	${i}	IN RANGE	1	10
        Log to console    ${i}
    END