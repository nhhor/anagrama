# Application: **Anagrama**

##### By Noah Horwitz

###### _First published 2019-12-13_

## Description:
This application was made as part of a coding project for Noah Horwitz, a student at _[Epicodus](http://www.epicodus.com)_, a vocational school for technology careers based in Portland, OR. The project is designed to create an algorithm with an anagram method which checks whether two words entered are anagrams, antigrams, or otherwise.


## Setup/Installation instructions:
* Click the `Clone or download` button and copy the link.
* Open your terminal application (assuming **GIT Scripts** and **node.js** (with NPM), and **Ruby 2.5.1** have been installed on your system) and type `git clone (link)`.
* In the terminal using the `cd`... command, navigate to the newly created repository and run `bundle install`.
* Then in the terminal, run `lib/anagrama.rb`.


## Technologies Used
> `Ruby`

## Known Bugs
* None

## Behavior Driven Development Specifications

|Spec|Input|Output|
|-|-|-|
|Check if two words are anagrams. If they are, your method should return something like this: "These words are anagrams."|not, ton|"These words are anagrams."|
|Account for the possibility that words might have different cases but should still be anagrams. For instance, "Tea" is still an anagram of "Eat".|Tea, Eat|"These words are anagrams."|
|Add a rule to check if the inputs are words. Words can only be anagrams or anagrams if they are, in fact, actually words. (For instance, "yvrb" isn't an anagram of "ruby" because "yurb" isn't a real word.) A word must contain a vowel (a, i, e, o, u) or y. Otherwise it's not a word. If one of the inputs has no vowels, your method should return something like this: "You need to input actual words!" (You only need to write a rule for vowels.)|... yvrb|"You need to input actual words!"|
|If phrases aren't anagrams, the method should check whether they are actually "antigrams." For our purposes, a word is an "antigram" of another word if no letters match. For example, "hi" has no matches with "bye". The method should return something like this if there are no letter matches: "These words have no letter matches and are antigrams."|hi, bye|"These words have no letter matches and are antigrams."|
|If phrases are neither anagrams or antigrams, the method should return "These words are boring."|hey, hello|"These words are boring."|
|Account for multiple words being anagrams or "antigrams." Spaces and punctuation shouldn't count (so they should be removed). You'll need to make sure that each word in the inputted phrases is really a word (passing condition #4 above). You may want to use a regular expression to remove additional characters.|parse, pe'ars, spazs, munch|Anagrams: parse, pears Antigrams: munch Neither: spazs|


## References

## Support and contact details
Contact [example@sample.com](mailto:example@sample.com)

## License
_This This repository is copyright (C) 2019 by Noah Horwitz and licensed under the GNU General Public License v3.0 [gpl-3.0](https://www.gnu.org/licenses/gpl-3.0.en.html)_.
