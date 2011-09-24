### It's A Small World 

Link: <https://www.facebook.com/careers/puzzles.php?puzzle_id=6>

#### Description
The input file consists of multiple lines, all of which follow the same format. Each line has three values separated by an amount of white space. The first value is the unique id number of that friend, expressed as an integer. The second value is the latitude of that friend, expressed as a rational number. The third and last value is the longitude of that friend, expressed as a rational number. Every friend lives at a unique combination of latitude and longitude (e.g. no two friends will ever share the exact same values). Each line ends with a single new line, except for the last line of the file, which may or may not have a terminating new line: 

    1  0.0      0.0
    2  10.1     -10.1
    3  -12.2    12.2
    4  38.3     38.3
    5  79.99    179.99

Output specifications

In the order presented in the input file, output the nearest three friends for each friend. Each line of output should start with the integer id of the friend followed by a single space character, and then the list of three nearest other friend ids followed by a single new line. Even the last line of the output should terminate in a new line. This list should be comma-delimited, with no spaces. The list must be in order of proximity, with the closest of the three being first, and the farthest of the three being last. 

Example output (newline at end of every line):

    1 2,3,4
    2 1,3,4
    3 1,2,4
    4 1,2,3
    5 4,3,1

#### Build:

    make

#### Execute 

    ./smallworld friends.txt
