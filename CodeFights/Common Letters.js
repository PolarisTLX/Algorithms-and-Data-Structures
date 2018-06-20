https://codefights.com/arcade/intro/level-3/JKKuHJknZNj4YGL32/description


Given two strings, find the number of common characters between them.

Example

For s1 = "aabcc" and s2 = "adcaa", the output should be
commonCharacterCount(s1, s2) = 3.

Strings have 3 common characters - 2 "a"s and 1 "c".



function commonCharacterCount(s1, s2) {
    let common = 0;
    let array1 = s1.split(""), array2 = s2.split("");
    for (let i in array1) {
        if (array2.indexOf(array1[i]) > -1 ) {
            common++;
            array2.splice(array2.indexOf(array1[i]),1);
        }
    }
    return common;
}


SLIGHTLY BETTER SOLUTION:


function commonCharacterCount(s1, s2) {
  var a=s1.split(""),r=0
  while (a.length){
    var t=a.pop()
    if(s2.includes(t)){
      r++
      s2=s2.replace(t,"")
    }
  }
  return r
}



HIGHEST VOTED SOLUTION:

function commonCharacterCount(s1, s2) {
    for (var i = 0; i < s1.length; i++) {
        s2 = s2.replace(s1[i], "!");
    }
    return s2.replace(/[^!]/g, "").length;
}


MY TAKE ON IT:

function commonCharacterCount(s1, s2) {
    let origlength = s2.length;
    for (var i = 0; i < s1.length; i++) {
        s2 = s2.replace(s1[i], "");
    }
    return origlength - s2.length;
}
