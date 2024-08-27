#  SwiftUI+CoreData+iCloud - 2024

## 1. Creating README.md in Xcode 
File -> New -> File -> in search field find Markdown file type

## 2. Creating remote repository on GitHub
Navigator panel(left panel in Xcode) -> Source control navigator panel -> Right mouse click on "Remotes" -> New "...." remote

## 3. Determining and adding(creating) basic reusable elements: Fonts, Colors etc.
- Creating Folder - Assets
- Creating file for Themes in Assets - share fonts and colors throughout app - it can be Class or Enum: final class - can read properties, but no changes and inheritance

### For creating any new module in app better to create and use other branch in GIT and after success completion make a merge

- For images created file Media.xcassets -> File -> New -> File -> in searcj field find xcassets -> create xcassets catalogue
- For colors crated file Colors.xcassets -> same way ws for Media

### Adding colors to asset: if don't have colors from designer, you can use http://colormind.io It can help you to choose appropriate colors for your app. Required minimum three colors: Accent, Background and Tint.
 
- choose Colors.xcassets -> left mouse click on "+" button in the bottom -> Color set -> name your color
 -> click on color name -> on the right click on any appearence -> attribute inspector(right side Xcode)
 -> input method: 8-bit hexadecimal -> put your hex value for selected color
- do the same for all your colors
- add colors to Theme file class

 ### There are two other methods to add colors in your app. Can find its in Theme.swift file
 
 ### Adding custom fonts to app
 - If fonts didn't provided to you, you can find any sort of fonts on https://fonts.google.com
 - Choose font and download it. Will need .ttf file -> just drag'n'drop files to Assets folder ->
 -> go app configuration file -> in Targets click you app name -> Info -> in custom iOS Target properties add "Fonts provided by application" -> add every file name you need -> add fonts to Theme.swift file any method you like -> test your font available
 
 ## 4. Adding CoreData - working with data base
 ### If folder for CoreData already created and already created files in it, changing folder name can cause the error!
 - creating folder CoreData
 - creating file CoreDataStack - creating store and CoreData services functions in CoreDataStack class
 
 ## 5. Add trips model variable
 - Last porject for sharing data in app was used class instance with static property
 - At this project will be used Actor with @Published property. Since the data from this variable will be involved in building the UI, they must be updated in the main thread.
 
 ### Options for data sharing in app where objects has relationship. What are the options for global variable? 
  Trips->Trip->Days->Day-> Activities-> Activity
  
  - For the first attempt we will use simple actor and static property without initializing  
 
 
 








