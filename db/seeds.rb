w1_tech = Article.create({
  title: "Version Control and GitHub",
  subheading: "A very useful way to keep track of your projects!",
  text: "###What are the benefits of version control?###\n
Version control benefits developers by allowing projects to be worked on by many people at the same time with minimal conflicts. It also provides a nice way for the group to decide on changes to the overall structure and the form of the project before releasing it to the world. It does this by keeping track of all the changes made by each contributor and when they took place. Later on, these changes can be merged into a main section of code from the copies the team members were working on. This main segment is called the master branch and it is what gets shared to the world.\n

###How does git help you keep track of changes?###\n
Git is version control software that allows for commits, which are sort of like save points in video games. A project can be reverted back to any of these points whenever necessary, so is a mistake is made the code can be switched back to a working version. These changes are all kept no matter how many there are, so you can keep track of any and all changes that occur.\n

###Why use GitHub to store your code?###\n
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

```css
#selector {
  attribute: value;
}
```
This would apply the value to an attribute for the tag found with an ID equal to selector. An example of IDs used in my code for this week can be seen here: \n ![id image](../../images/blog-images/id-code.png)\n  I used an ID here because there is only one banner on my site, and there should only ever be one.\n
While classes are similar to IDs, their use is somewhat different. Classes are supposed to be used when a lare portion of a site needs to be formatted the same way. For example, in my code from this week:\n ![class image](../../images/blog-images/class-code.png) \nI used a class here because I knew that the main section of my page would all need to be of the same format, despite being made up of many tags. This main-map consisted of many separate parts, and having to put in a bunch of smaller selectors would be messy, so I used a class to keep it all together nicely and minimize the extra code. It's also important to note that while the syntax of a class selection in CSS is similar, it doesn't use a # character, but a . instead.",
  created_at: DateTime.strptime("06/21/2015 12:00", "%m/%d/%Y %H:%M")})

w3_technical = Article.create({
  title: "Arrays and Hashes",
  subheading: "Basic Ruby Storage Structure",
  text: "This week in phase0 we learned about the basics of Ruby and how to do basic variable manipulation. In our second to last challenge, we learned about Ruby arrays and hashes, special types of variables used to store many values at once. Arrays and hashes are similar in that they use a key:value pair to get values in and out of storage. The main difference being that arrays use a numbering system for keys and hashes use any type of object as a key.\n

###Arrays###\n
The structure of arrays is such that the data is stored as values which are referenced to by number values. These values start at zero, so if you have a number of values 'n', the order would be \"0, 1, 2, ..., n-1\". This is known as 'zero indexed', which is a common thing in programming languages.\n

![class image](../../images/blog-images/array.png)\n
**Figure 1:** An array can be visualized as a container full of numbered boxes.\n
An array can be visualized as a container with smaller compartments inside, each of which has a (positive including zero) number on the outside. These boxes contain values that need to be stored, so in the analogy this would be like looking at the pile of containers for the one numbered with the number you were looking for, and picking it out to mess with the contents. Usually these boxes are considered to be sorted in numerical order, so it's not quite the same as the analogy, but these values aren't necessarily stored like that in practice.\n

When an array is initialized, it defults to having all of its values set to the 'nil' value. This is Ruby's way of saying that nothing is stored at these locations, so in effect the array is empty. Each value is set this way from the beginning unless it is initialized in an atypical way. Once the array is used to store values, these 'nil' placeholders are replaced with data. Data stored inside arrays can be of any object type, including other arrays! The usual way to initialize an empty array is like so:\n

```ruby
myArray = []
```

Square brackets are used in Ruby to access both arrays and hashes, but in order to represent an empty array two empty brackets are used. In order to access a value at a specific index, the name of the array followed by two brackets with the index inside woudl be used, as below:\n

```ruby
myArray[0] = \"Hello\"
```
In this example, the value of the array myArray at index 0 is changed to the string \"Hello\". Values can be changed in a more automated fashion using an iterative loop, where a value is inserted into the brackets that is changed during every iteration. This can be seen below:\n

```ruby
for i in 0..10
  myArray[i] = \"This is the value at index \#{i}\"
end
```
This would set the first 10 index values of the array named myArray to a helpful note about what was stored at the corresponding location for the index.\n

###Hashes###\n
Hashes are similar in practice to arrays, but are different in what can be used for the keys used to find the internal values. The terminology is also a little different than arrays, where an array was considered to be ordered and had an index value to find the data, hashes use 'keys' to find data, which is also known as a 'value'. Thus, storage in a hash is based on key:value pairs, where a key can be a number of different things. Thus, the biggest difference between a hash and an array is that while data in an array is accessed with numbers, hash values can be accessed with strings or other objects as well!\n

An empty hash is also defined differently than an array. Where arrays used square brackets, hashes use {curly brackets} to define an empty value. Thus, to define an array in Ruby, one would type in:\n

```ruby
myHash = {}
```

The hash will still give null values for any undefined values, the only difference being that a test like myHash[\"one\"] will give a null value instead of only numerical values. A hash can still accept numerical values for keys though, so if you felt that array keys being only integers was limiting, hashes are probably for you!\n

Iterators can still be used in a hash, with the only change being that you will need to come up with a way of generating the correct values unless a special loop is used. For example,\n

```ruby
for i in 1..10
  hash[\"loc\" + i.to_s] = \"Location \#{i}\"
end
```

This code will give ten values of strings like \"loc1\" and \"loc2\" values like \"Location 1\" and \"Location 2\". This is nice, but in order to get back at these values we can no longer use a simple numerical iteration loop, and have to use a more creative generator for strings that correspond to these locations. However, hashes have special functions that make their keys and values easier to access. For example:\n

```ruby
hash.each{|key, value| puts value}
```

This will go through all of the keys and print out the values associated with them. However, the keys may not be sorted in order so don\'t depend on that!",
  created_at: DateTime.strptime("06/29/2015 12:00", "%m/%d/%Y %H:%M")})

w3_cultural = Article.create({
  title: "Thinking Style",
  subheading: "My Phase 0 Thinking Style",
  text: "During the first portion of DBC Phase 0, before any learning had been done, I had to take an online test to find out my [Gregorc Thinking Style](http://web.cortland.edu/andersmd/learning/gregorc.htm). After taking the test, I found that I had tied for both Concrete and Abstract Sequential thinking. This suggests, among other things, that I prefer to do things logically and with some order, as well as getting all the facts before making a decision. On top of this, I prefer dealing with structured challenges where others can be interacted with to get toward the final goal. I found that this really resonated with me in terms of things I had done in the past. I do really prefer to work with other people on things, and having all the available information before having to do something. However, I also resonated with Gregorc's predictions that I dislike working in groups and not having enough time to thoroughly explore a subject before doing something with it. This could prove a challenge when it comes time to actually work at DBC in person, as most of our work sems like it will involve groups. I think as long as a large portion of it is working in the same was as the pair challenges have been though, I should be fine. I really don't mind small groups and working one on one with a pair is pretty ideal. My biggest struggle so far has really been time. Between taking down my old apartment, moving across the country, and setting up a new living space it's been really tough to get the time to really thoroughly get to know the weekly concepts. I'd like to have time to do some of the optional things but it just hasn't been happening. This doesn't really directly relate to my learning style, btu I think my best course of action would be to take as much of my newfound free time to go through the material as I can.\n

We also talked about growth vs. fixed mindsets, and the effects of having these mindsets on our work. I found through quizzes and readings that I have more of a growth mindset, however I can be very harsh on myself. I really do believe that it is possible for anyone to change the amount of intellengence an develop talent in areas, but when it comes to myself I am my own worst critic, and that can definitely hamper my ability to learn and grow. In order to overcome this, I need to go a little easier on myself and admit that I might need improvement, but that as long as I am learning and improving myself it will be fine.",
  created_at: DateTime.strptime("06/29/2015 12:00", "%m/%d/%Y %H:%M")})

w4_technical = Article.create({
    title: "Enumerable Ruby Methods",
    subheading: "Or: How .map Works",
    created_at: DateTime.strptime("07/11/2015 12:00", "%m/%d/%Y %H:%M"),
    text: "This week in phase0, we moved on from the basic Ruby methods and structures we learned and began using them in applications. A main focus of what we had to learn was the Ruby enumerable class, which allows easy traversal of basic data structures in Ruby. For example, instead of writing a loop ever time you want to go over an array, you can use an enumerable to do that for you in a more compact form. While enumerables are used in a number of Ruby methods, the one I find to be most useful is map.\n

###.map###
Ruby's map function, at its most basic, is for modifying elements inside of a data structure. The most common use this week was for iterating through an array and changing the contained data based on some kind of calculated function. For example, we might have been given this array:\n

```ruby
[1,2,3,4,5]
```

We can use the map method to change these values to twice their amount, or even higher:\n

```ruby
[1,2,3,4,5].map(|i| i * 2) => [2,4,6,8,10]
[1,2,3,4,5].map(|i| i * 5) => [5,10,15,20,25]
```

Other functions can be put inside the block as well, like this example which gives us the powers of two of each element:\n

```ruby
[1,2,3,4,5].map(|i| i * i) => [1,4,9,16,25]
```

This can come in handy for a number of different applications, some of which we touched on this week, like modifying an array of strings and integers to have different sets of numbers in them.\n

###.map!###
Map also has a destructive version, which can be used on stored or more permanent arrays, like so:\n
```ruby
array = [1,2,3,4,5]
array.map!{|i| i * 2}
puts array

=> [2,4,6,8,10]
```"})

w4_cultural = Article.create({
  title: "Issues in the Tech World",
  subheading: "Designing for Accessibility",
  created_at: DateTime.strptime("07/11/2015 12:00", "%m/%d/%Y %H:%M"),
  text: "I feel strange talking about issues in the tech world, because we've been so focused these past few weeks on how great and useful tech is. One of the great things we have learned about is the freedom (for better or worse) that CSS gives us in placing and formatting things on web pages. While it's definitely an option to do just about whatever you want, there are some things you should and shouldn't do if you want a useful site. This is where web design and layout comes into play. You don't want your site to have a fundamentally bad layout that's hard to navigate or where it's hard to find the information you need.\n

Element colors also play a big part in the way people perceive your site. There's a huge selection of colors that can be selected from when working on a webpage, and some may go together really well and many don't look good at all. However, there's something many people may not think about when building a webpage. Imagine you've spent all day working on a project for a Christmas-themed website, and you're especially proud of the color scheme. The site is decorated all over with candy cane imagery, the buttons all have a holly theme, and you got the words to line up just right with the borders. At the end of the day, you submit the final page to your supervisor with a feeling of success and pride.\n

The next day, you come in to work to find that he absolutely hates it! You ask what you did wrong that made him feel that way, and he responds that he can't even read half the page! He's green/red colorblind and all of your fancy buttons and borders appear as blobs to him! While the candy cane portions aren't an issue, you made all of the navigation buttons have a green background with red text, which just shows up as one indeterminate rectangle for him.\n

It's for reasons like colorblindness that it's important to take in website color schemes seriously. When we design for a huge audience, it's easy to forget that not everyone can perceive the internet in the same way we do. While it can be easy to fix a color scheme, it might not be such an easy fix if you need to make the page accessible to blind people, or those who can't use a mouse. This may not be a common problem for most developers, but large corporations like Amazon and Facebook do need to worry about their customers with accessibility problems."})

w5_technical = Article.create({
  title: "Ruby Classes",
  subheading: "Modeling Real-world Objects with Code",
  created_at: DateTime.strptime("07/19/2015 12:00", "%m/%d/%Y %H:%M"),
  text: "###Ruby Classes###\n
A class in Ruby is a piece of code that organizes functions and values into one entity that can be recreated over and over again. This entity is known as an object, and creating an object is known as \"instantiating\" it - as in making an instance of it. Objects are very useful in a number of different ways - not only can they simplifty large amounts of code into small packages, but they can also be nested inside each other to form complex objects that imitate everyday things. A simple example is of an ATM - an object that not only stores information (how much money you have), but allows a user to change those values in a protected way (with the correct PIN).\n

###Example Object###\n
An ATM, in the simplest sense for an individual, is a box that you put money into so that it's safe and can be accessed later when you need it. In order to make this simple model work, we can make a Ruby class to hold some exmaple information. The class is defined as follows:\n

```ruby
class ATM
  def initialize(starter_money)
    @balance = starter_money
  end
end
```
In this case, you would instantiate an ATM object with the code:\n
```ruby
machine = ATM.new(400)
```
Thus, the ATM would be started with $400 in it for the current user. The only problem is, there's no way to get the money out or check how much is in there! What if you want to put more in? The simplest way is probably using attr methods:\n
```ruby
attr_accessor :balance
```
This allows direct access to the stored balance, and can be called like this:\n
```ruby
machine.balance
=> 400
machine.balance = 300
machine.balance
=> 300
```
You can probably see the problem with this though. Anyone can just go in and change the amount stored! Nothing is in place to keep someone from saying they have a million dollars, or for an enemy to change it to zero! An effective way to change the stored information securely is with accessor methods that include safety measures:\n
```ruby
class ATM
  def initialize(starter_money, pin)
    @balance = starter_money
    @PIN = pin.to_s
  end

  def withdraw(amount)
    p \"What is your PIN?\"
    pin = gets.chomp
    if (pin == @PIN)
      @balance -= amount
      return amount
    else
      p \"That is incorrect. Please try again later.\"
    end
  end

  def balance?
    p \"What is your PIN?\"
    pin = gets.chomp
    if (pin == @PIN)
      p \"Your balance is #{@balance}\"
    else
      p \"That is incorrect. Please try again later.\"
    end
  end

  def add_money(deposit)
    p \"What is your PIN?\"
    pin = gets.chomp
    if (pin == @PIN)
      @balance += deposit
      p \"Thank you for your deposit. Have a nice day!\"
    else
      p \"That is incorrect. Please try again later.\"
    end
  end
end
```
When we remove the attr_accessor portion of the code, these methods keep just anyone from changing the balance and getting into your finances. This is the great thing about objects! You can develop an intuitive system of code storage based on real life things that is easy for people to read and can be set up to be easy to fix too!
"})

w5_technical = Article.create({
  title: "Pairing and Feedback",
  subheading: "in DBC Phase0",
  created_at: DateTime.strptime("07/19/2015 12:00", "%m/%d/%Y %H:%M"),
  text: "###Pairing###\n
Overall, pairing has been much better than I expected. My past experiences of coding with someone else there haven't been that great, but these challenges, where only one person has a specific task, has been much more enjoyable and organized. I really like the simplicity of one person doing the typing and one person looking everything up and providing extra guidance. It allows for each person to have a say in what's happening, and to feel like they're really contributing to the coding process. I think so far the most annoying thing has been having to use Google Hangounts, because it cuts out so frequently.\n

###Feedback###\n
So far, I've felt pretty good about the feedback I've received. I don't know if it was necessarily helpful for learning, but it was nice to hear people responding positively to the way I have been in pairing sessions. I think overall I have mostly gotten feedback about how it's been nice to have someone who knows what they're doing and is also willing to talk alound about the thought process gone through when coding. I had some trouble giving feedback in the beginning because I would always just want to put \"good job! keep up the good work!\" but I needed to really put something useful in there. I want to do a good job and help people out when they finish pairing, but I also feel like I'm a terrible writer and my comments are pretty bland.
"})

w8_technical = Article.create({
  title: "Sorting Algorithms",
  created_at: DateTime.strptime("08/06/2015 12:00", "%m/%d/%Y %H:%M"),
  text: "In the past weeks, we have relied pretty heavily on enumerable methods and simple helper functions in both Ruby and Javascript. These methods keep us from having to know exactly what's happening, but allow us to do a lot of great and useful things as long as we understand the documentation pages. However, these methods are holding much more complicated code inside of them that is important to understand. One such set of methods is the sorting methods common to many languages. Underlying the basic idea of \"go sort this array\" is a series of useful potential algorithms, each of which is uniquely suited for different scenarios. Some of these are described below:\n

###Bubble Sort###\n
A common but slow algorithm used for sorting, bubble sort is a method by which an array is parsed through, and for every pair of two that exists, a comparison is done to see if they are in the right order. This is done over and over on the array until there is nothing left to be done. A simple analogy is a box of sand and rocks. If you shake the box, larger pieces are forced upward and smaller pieces move to the bottom until you get a \"sorted\" box. You can see an example of the algorithm used on numbers from Wikipedia here:\n
![bubble sort animation](https://upload.wikimedia.org/wikipedia/commons/c/c8/Bubble-sort-example-300px.gif)
This algorithm, while simple, is also very slow as it takes multiple passes to get a sorted answer. The runtime also increases the larger the dataset is. It not only takes more time to parse through the set, it takes longer to push all of the numbers into thir correct place. Bubble sorting works best on small sets of data that are reasonably sorted beforehand, because the worst case is to start with the largest number at the beginning and having to push it all the way to the end.\n

###Quick Sort###
Quick sort is another commonly used sorting algorithm, which uses statistical properties of a dataset to sort it. It is more complicated than the bubble sorting algorithm, due to the statistics involved. The algorithm for quick sort is to pick the middle value, and switch the values around so that values lower than the middle point are on one side and values above are on the other. Then, each side of the middle value is sorted by subdividing them into smaller parts and running another quick sort until all the values are in order, and finally working back up the values to check that everything is sorted. This is most easily done with recursion, and an image of what happense can be seen below (also from Wikipedia):\n
![quick sort animation](https://upload.wikimedia.org/wikipedia/commons/6/6a/Sorting_quicksort_anim.gif)
This method is a lot more complicated than the bubble sort, but on average it gives better results. In the worst case, it can perform just as poorly as bubble sorting, but the general rule is that it's faster on sets in general and not only small datasets.\n

In common practice, these sorting algorithms are combined together in a larger script. Tests are done on the array to check for things like length, average value, and other statistical factors that lead to a more efficient calculation. So, when methods like Array#sort! are used, it's really an overall script that analyzed the array and sorts based on the best choice for the situation.
"})

w9_technical = Article.create({
  title: "Updating My Site",
  subheading: "Bootstrap Saves the Day",
  created_at: DateTime.strptime("08/16/2015 12:00", "%m/%d/%Y %H:%M"),
  text: "Updating this page into a more modern blog was incredibly easy with the Bootstrap framework at my disposal. Every page was easy to incorporate into one or more of their templates, and they looked great right from the start. I only wish we could have used them the whole time! It was great to have to get used to all the \"trial and error\" stuff, but using Bootstrap was not only easy, it was enjoyable! I really liked the ease with which I could move things around and get everything to fit in with the ideas I had."})

  w9_cultural = Article.create({
    title: "Asking Good Questions",
    subheading: "Getting the Right Answers",
    created_at: DateTime.strptime("08/16/2015 12:00", "%m/%d/%Y %H:%M"),
    text: "During the course of Phase 0, I have seen a lot of people asking questions on the Google Plus page. Not all of them have gotten very good responses, but every one that I have seen has at least gotten some type of response. I think in general the person responding has done their best to give a helpful answer with varying levels of success.\n

The questions I have seen with the most useful answers are usually the most detailed. When people ask very vague questions online, it can lead to a lot of different answers that might not even have to do with what they asked. I think in this respect it's best to give as much detail in a question as possible, without obscuring the question in unrelated words.\n

When it comes to coding specifically, it also helps to show people what's wrong. On G+ this is easy, because you can paste in images of your code and the error messages being given. Some sites, like Stackoverflow, allow you to paste the text version of your work into the page as a formatted item for ease of viewing. This is great for people who want to try your code out on their own machine and see what's wrong. In general though, a good example is useful to show people what it is you are struggling with."})
