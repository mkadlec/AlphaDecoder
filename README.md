AlphaDecoder
============

Simple ruby decoder that takes a numeric value and parses out all alpha values based on decoding rules.

Originally I was asked this as an interview question, originally wrote it in Javascript, and have since ported to Ruby and wanted to rework it.

You could have some fun with this if you have kids, write them messages and they can use this tool to help decode.

Here is the code rules:

Numbers are assigned to each letter of the alphabet, where a=1, b=2, ..., z=26. A word can then be encoded based on those numbers, so for example "apple" is encoded as "11616125". However, "11616125" can also be decoded to many other strings, such as "kfafay" (11 6 1 6 1 25) and "aafple" (1 1 6 16 12 5).

Letters are never encoded with a leading 0. So '105' only has a single valid decoding, (10 5) = 'je'. You could not decode it (1 05) = 'ae'.

Write a function that takes a string as input, such as "11616125", and returns an array of all possible decodings of that string. Here are some examples of input and correct output:
decode('105') returns array('je')
decode('2175') returns array('bage', 'bqe', 'uge')
decode('2222') returns array('bbbb','bbv','bvb','vbb','vv')
decode('0000') returns array()
