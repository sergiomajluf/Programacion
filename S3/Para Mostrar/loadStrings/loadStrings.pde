String ourString = "here is some text";
String otherString = "some other text";
// ourString = ourString+" and some more";

String[] ourStringsFromFile = loadStrings("http://processing.org");
//println(ourStringsFromFile);


String allTogether = join(ourStringsFromFile, "\n");
println(allTogether);


//ourString = ourString.substring(0, 10);

//println(ourString.charAt(ourString.length()-1));

println( ourString.indexOf("some")); // serach the first occurrence

println( ourString.equals(otherString)); // .equals() compares one text
