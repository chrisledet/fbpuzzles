### Hoppity Hop 

Source: <https://github.com/chrisledet/fbpuzzles/blob/master/hoppity/hoppity.m>

#### Description
The input file will contain a single positive integer (in base 10) expressed as a string using standard ASCII text (e.g. for example, the number "15" but without the double quotes). This number may or may not be padded on either side with white space. There will be no commas, periods, or any other non-numeric characters present within the number. The file may or may not terminate in a single new line character ("\n"). An example input file is below:

    15

Output specifications

The program should iterate over all integers (inclusive) from 1 to the number expressed by the input file. For example, if the file contained the number 10, the submission should iterate over 1 through 10. At each integer value in this range, the program may possibly (based upon the following rules) output a single string terminating with a newline. 

For integers that are evenly divisible by three, output the exact string Hoppity, followed by a newline.
For integers that are evenly divisible by five, output the exact string Hophop, followed by a newline.
For integers that are evenly divisible by both three and five, do not do any of the above, but instead output the exact string Hop, followed by a newline.

Example output (newline at end of every line):

    Hoppity
    Hophop
    Hoppity
    Hoppity
    Hophop
    Hoppity
    Hop

#### Build:

    clang -o hoppity hoppity.m -framework Foundation

#### Execute 

    ./hoppity input.txt
