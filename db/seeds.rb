# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

w1_tech = Article.create({
  title: "Version Control and GitHub",
  subheading: "A very useful way to keep track of your projects!",
  text: "What are the benefits of version control?\n
Version control benefits developers by allowing projects to be worked on by many people at the same time with minimal conflicts. It also provides a nice way for the group to decide on changes to the overall structure and the form of the project before releasing it to the world. It does this by keeping track of all the changes made by each contributor and when they took place. Later on, these changes can be merged into a main section of code from the copies the team members were working on. This main segment is called the master branch and it is what gets shared to the world.\n

How does git help you keep track of changes?\n
Git is version control software that allows for commits, which are sort of like save points in video games. A project can be reverted back to any of these points whenever necessary, so is a mistake is made the code can be switched back to a working version. These changes are all kept no matter how many there are, so you can keep track of any and all changes that occur.\n

Why use GitHub to store your code?\n
For starters, GitHub is an online place to store code, which means that if you forget the computer you were working on but want to continue coding, you can pull it down from the web instead of being stuck. GitHub is also a great community and allows others to see and proofread your code, so that you aren't working in a vacuum.",
  created_at: DateTime.strptime("06/13/2015 12:00", "%m/%d/%Y %H:%M")
})

w1_cultural = Article.create({
  title: "Cultural Blog Post 1",
  subheading: "Thinking about DBC's Culture",
  text: "The fireside chat video confirmed what I had been hearing about DBC's curriculum, about how the instructors are willing to teach you, but in order to excel you have to put in as much as you want to get out. My impression of DBC so far is that it's a place for people who all share the common goal of wanting to code for a living to come together and collaborate in order to get up to speed with other developers. Overall, my expectations haven't really changed after this video, but I'm definitely more excited!\n

I'm both excited and nervous to start putting in the effort to get things done and learn more about how the world of development works. I can see myself arriving for class and being nervous in class and during coding sessions, just because that's how I always feel in new situations. It has always taken me a while to warm up to new experiences but once I get comfortable it's hard to get me away.\n

This week, my biggest challenge was getting to the point where I could remember the whole process of pushing code while not overriding DBC's master branch. I was pretty nervous that something would go wrong and I'd mess something up! However, it was exciting to learn to work with git in a way that I had never used it before. I haven't quite worked on the time boxing techniques I wanted to try, just because this week has been a little hectic and I had to work on code at odd hours.",
  created_at: DateTime.strptime("06/14/2015 12:00", "%m/%d/%Y %H:%M")})

w2_technical = Article.create({
  title: "Classes vs IDs",
  subheading: "How to choose a selector",
  text: "This week, we learned about the basics of writing websites using HTML and CSS. HTML (HyperText Markup Language) is the basic framework that all websites use to show content, and CSS (Cascading Style Sheet) is the way that all the information is formatted or \"styled\" such that it looks nice on the page. In order for CSS to work, however, it has to be able to select the parts of the page being styled. This is done through the use of \"selectors\" that relate the page element to a set of attributes given in the CSS file. These selectors come in a few forms, but there are two very important ones: IDs and classes.\n

IDs are used when a style is only going ot be used in one place. The idea is that, like an ID for a person, you only have one and that one ID is supposed to only reference one individual thing. In the HTML, an ID is designated with a tag attribute of id=\"name\", where \"name\" is the name of the ID you plan to use. Once this is put into a document, the CSS accesses this tag through the use of the # character, as in:\n

#selector {\n
  attribute: value;\n
}\n
This would apply the value to an attribute for the tag found with an ID equal to selector. An example of IDs used in my code for this week can be seen here: id use I used an ID here because there is only one banner on my site, and there should only ever be one.\n
While classes are similar to IDs, their use is somewhat different. Classes are supposed to be used when a lare portion of a site needs to be formatted the same way. For example, in my code from this week: class image I used a class here because I knew that the main section of my page would all need to be of the same format, despite being made up of many tags. This main-map consisted of many separate parts, and having to put in a bunch of smaller selectors would be messy, so I used a class to keep it all together nicely and minimize the extra code. It's also important to note that while the syntax of a class selection in CSS is similar, it doesn't use a # character, but a . instead.",
  created_at: DateTime.strptime("06/21/2015 12:00", "%m/%d/%Y %H:%M")})

w3_technical = Article.create({
  title: "Arrays and Hashes",
  subheading: "Basic Ruby Storage Structure",
  text: "This week in phase0 we learned about the basics of Ruby and how to do basic variable manipulation. In our second to last challenge, we learned about Ruby arrays and hashes, special types of variables used to store many values at once. Arrays and hashes are similar in that they use a key:value pair to get values in and out of storage. The main difference being that arrays use a numbering system for keys and hashes use any type of object as a key.\n

Arrays\n
The structure of arrays is such that the data is stored as values which are referenced to by number values. These values start at zero, so if you have a number of values 'n', the order would be \"0, 1, 2, ..., n-1\". This is known as 'zero indexed', which is a common thing in programming languages.\n

Array Visualization\n
Figure 1: An array can be visualized as a container full of numbered boxes.\n
An array can be visualized as a container with smaller compartments inside, each of which has a (positive including zero) number on the outside. These boxes contain values that need to be stored, so in the analogy this would be like looking at the pile of containers for the one numbered with the number you were looking for, and picking it out to mess with the contents. Usually these boxes are considered to be sorted in numerical order, so it's not quite the same as the analogy, but these values aren't necessarily stored like that in practice.\n

When an array is initialized, it defults to having all of its values set to the 'nil' value. This is Ruby's way of saying that nothing is stored at these locations, so in effect the array is empty. Each value is set this way from the beginning unless it is initialized in an atypical way. Once the array is used to store values, these 'nil' placeholders are replaced with data. Data stored inside arrays can be of any object type, including other arrays! The usual way to initialize an empty array is like so:\n

myArray = []\n
Square brackets are used in Ruby to access both arrays and hashes, but in order to represent an empty array two empty brackets are used. In order to access a value at a specific index, the name of the array followed by two brackets with the index inside woudl be used, as below:\n

myArray[0] = \"Hello\"\n
In this example, the value of the array myArray at index 0 is changed to the string \"Hello\". Values can be changed in a more automated fashion using an iterative loop, where a value is inserted into the brackets that is changed during every iteration. This can be seen below:\n

for i in 0..10\n
  myArray[i] = \"This is the value at index \#{i}\"\n
end\n
This would set the first 10 index values of the array named myArray to a helpful note about what was stored at the corresponding location for the index.\n

Hashes\n
Hashes are similar in practice to arrays, but are different in what can be used for the keys used to find the internal values. The terminology is also a little different than arrays, where an array was considered to be ordered and had an index value to find the data, hashes use 'keys' to find data, which is also known as a 'value'. Thus, storage in a hash is based on key:value pairs, where a key can be a number of different things. Thus, the biggest difference between a hash and an array is that while data in an array is accessed with numbers, hash values can be accessed with strings or other objects as well!\n

An empty hash is also defined differently than an array. Where arrays used square brackets, hashes use {curly brackets} to define an empty value. Thus, to define an array in Ruby, one would type in:\n

myHash = {}\n
The hash will still give null values for any undefined values, the only difference being that a test like myHash[\"one\"] will give a null value instead of only numerical values. A hash can still accept numerical values for keys though, so if you felt that array keys being only integers was limiting, hashes are probably for you!\n

Iterators can still be used in a hash, with the only change being that you will need to come up with a way of generating the correct values unless a special loop is used. For example,\n

for i in 1..10\n
  hash[\"loc\" + i.to_s] = \"Location \#{i}\"\n
end\n
This code will give ten values of strings like \"loc1\" and \"loc2\" values like \"Location 1\" and \"Location 2\". This is nice, but in order to get back at these values we can no longer use a simple numerical iteration loop, and have to use a more creative generator for strings that correspond to these locations. However, hashes have special functions that make their keys and values easier to access. For example:\n

hash.each{|key, value| puts value}\n
This will go through all of the keys and print out the values associated with them. However, the keys may not be sorted in order so don\'t depend on that!",
  created_at: DateTime.strptime("06/29/2015 12:00", "%m/%d/%Y %H:%M")})

w3_cultural = Article.create({
  title: "Thinking Style",
  subheading: "My Phase 0 Thinking Style",
  text: "During the first portion of DBC Phase 0, before any learning had been done, I had to take an online test to find out my Gregorc Thinking Style. After taking the test, I found that I had tied for both Concrete and Abstract Sequential thinking. This suggests, among other things, that I prefer to do things logically and with some order, as well as getting all the facts before making a decision. On top of this, I prefer dealing with structured challenges where others can be interacted with to get toward the final goal. I found that this really resonated with me in terms of things I had done in the past. I do really prefer to work with other people on things, and having all the available information before having to do something. However, I also resonated with Gregorc's predictions that I dislike working in groups and not having enough time to thoroughly explore a subject before doing something with it. This could prove a challenge when it comes time to actually work at DBC in person, as most of our work sems like it will involve groups. I think as long as a large portion of it is working in the same was as the pair challenges have been though, I should be fine. I really don't mind small groups and working one on one with a pair is pretty ideal. My biggest struggle so far has really been time. Between taking down my old apartment, moving across the country, and setting up a new living space it's been really tough to get the time to really thoroughly get to know the weekly concepts. I'd like to have time to do some of the optional things but it just hasn't been happening. This doesn't really directly relate to my learning style, btu I think my best course of action would be to take as much of my newfound free time to go through the material as I can.\n

We also talked about growth vs. fixed mindsets, and the effects of having these mindsets on our work. I found through quizzes and readings that I have more of a growth mindset, however I can be very harsh on myself. I really do believe that it is possible for anyone to change the amount of intellengence an develop talent in areas, but when it comes to myself I am my own worst critic, and that can definitely hamper my ability to learn and grow. In order to overcome this, I need to go a little easier on myself and admit that I might need improvement, but that as long as I am learning and improving myself it will be fine.",
  created_at: DateTime.strptime("06/29/2015 12:00", "%m/%d/%Y %H:%M")})
