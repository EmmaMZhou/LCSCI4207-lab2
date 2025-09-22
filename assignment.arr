import file("lab2-support.arr") as support
#my encryptor 1
support.encryptor1("Hi")
support.encryptor1("dog")

fun my-encryptor1(string :: String) -> String:
  doc: "returns string 5 times in a row"
  string-repeat(string, 5)
end

support.test-encryptor1(my-encryptor1)

#my encryptor 2
support.encryptor2("elephant")
support.encryptor2("comet")

fun my-encryptor2(string :: String) -> String:
  doc: "returns first four characters of string"
  string-substring(string, 0, 4)
end

support.test-encryptor2(my-encryptor2)

#my encryptor 3

support.encryptor3("Elephant.!")
support.encryptor3("at$&(")
support.encryptor3("DOG#...)*")

fun my-encryptor3(string :: String) -> String:
  doc: "returns string replacing . with !"
  string-replace(string, ".", "!")
end

support.test-encryptor3(my-encryptor3)

#my encryptor 4

support.encryptor4("Elephant.!")
support.encryptor4("at$&(")
support.encryptor4("DOG#...)*")

fun my-encryptor4(string :: String) -> String:
  doc: "returns the first four characters of the given string 5 times"
  string-repeat(
    string-substring(string, 0, 4), 
    5)
end

support.test-encryptor4(my-encryptor4)

#my encryptor 5

support.encryptor5("Elephant.!")
support.encryptor5("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
support.encryptor5("abcdefghijklmnopqrstuvwxyxz)*")

fun my-encryptor5(string :: String) -> String:
  doc: "returns string replacing all vowels with the next letter in the alphabet"
  s1 = string-replace(string, "a", "b")
  s2 = string-replace(s1, "e", "f")
  s3 = string-replace(s2, "i", "j")
  s4 = string-replace(s3, "o", "p")
  s5 = string-replace(s4, "u", "v")
  s6 = string-replace(s5, "A", "B")
  s7 = string-replace(s6, "E", "F")
  s8 = string-replace(s7, "I", "J")
  s9 = string-replace(s8, "O", "P")
  string-replace(s9, "U", "V")
end
   support.test-encryptor5(my-encryptor5)

#my encryptor 6

support.encryptor6("!@#$%^&*()[]{};1234567890")
support.encryptor6("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
support.encryptor6("abcdefghijklmnopqrstuvwxyz")

fun my-encryptor6(string :: String) -> String:
  doc: "returns string in all lowercase"
  s1 = string-to-lower(string)
  string-replace(s1, "r", "")
end
support.test-encryptor6(my-encryptor6)

#my encryptor 7

support.encryptor7("!@#$%^&*()[]{};1234567890")
support.encryptor7("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
support.encryptor7("abcdefghijklmnopqrstuvwxyz")

fun my-encryptor7(string :: String) -> NumInteger:
  doc: "returns length of the string"
  string-length(string)
end
support.test-encryptor7(my-encryptor7)

#my encryptor 8

support.encryptor8("!@#$%1234567890")
support.encryptor8("dog")
support.encryptor8("lion")

fun my-encryptor8(string :: String) -> String:
  doc: "returns string with three !s at the end and repeats three times"
  s1 = string-append(string, "!!!")
  string-repeat(s1, 3)
end
support.test-encryptor8(my-encryptor8)

#my encryptor 9

support.encryptor9("!@#$%^&*()[]{};1234567890")
support.encryptor9("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
support.encryptor9("dog")

fun my-encryptor9(string :: String) -> NumInteger:
  doc: "returns the point code of the first character"
  s1 = string-substring(string, 0, 1)
  string-to-code-point(s1)
end
support.test-encryptor9(my-encryptor9)

#my encryptor 10

support.encryptor10("!.r94")
support.encryptor10("AEIOU")
support.encryptor10("uoia")

fun my-encryptor10(string :: String) -> String:
  doc: "returns the first 4 characters of the string in all lower case 5 times and replace a with b"
  s1 = string-to-lower(string)
  s2 = string-replace(s1, "a", "b")
  s3 = string-replace(s2, "e", "f")
  s4 = string-replace(s3, "i", "j")
  s5 = string-replace(s4, "o", "p")
  s6 = string-replace(s5, "u", "v")
  s7 = string-replace(s6, ".", "!")
  s8 = string-replace(s7, "r", "")
    s9 = string-substring(s8, 0, 4)
  string-repeat(s9, 5)
end

support.test-encryptor10(my-encryptor10)