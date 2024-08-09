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








