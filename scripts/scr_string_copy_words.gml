///scr_string_copy_words(String, index, count)
var str = argument0;
var index = argument1;
var count = ceil(argument2);

var char = string_char_at(str, count);
while(char != " " and char != ""){
    count++;
    char = string_char_at(str, count);
}

var return_str = string_copy(str, index, count);
return return_str;

//we pass in a string and a index, index is the start of the copy
//we get the char at count, and we continue to add to count until
//we get a full word
//We then return a the whole word
