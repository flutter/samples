# Material 3 Demo

This sample Flutter app showcases Material 3 features in the Flutter Material library. These features include updated components, typography, color system and elevation support. The app supports light and dark themes, different color palettes, as well as the ability to switch between Material 2 and Material 3. For more information about Material 3, the guidance is now live at https://m3.material.io/.

This app also includes new M3 components such as IconButtons, Chips, TextFields, Switches, Checkboxes, Radio buttons and ProgressIndicators. 

# Preview

<img width="400" alt="Screen Shot 2022-08-12 at 12 00 28 PM" src="https://user-images.githubusercontent.com/36861262/184426137-47b550e1-5c6e-4bb7-b647-b1741f96d42b.png"><img width="400" alt="Screen Shot 2022-08-12 at 12 00 38 PM" src="https://user-images.githubusercontent.com/36861262/184426154-063a39e8-24bd-40be-90cd-984bf81c0fdf.png">


# Features
## Icon Buttons on the Top App Bar
<img src="https://user-images.githubusercontent.com/36861262/166506048-125caeb3-5d5c-4489-9029-1cb74202dd37.png" width="25"/>  Users can switch between a light or dark theme with this button.

<img src="https://user-images.githubusercontent.com/36861262/166508002-90fce980-d228-4312-a95f-a1919bb79ccc.png" width="25" />  Users can switch between Material 2 and Material 3 for the displayed components with this button.

<img src="https://user-images.githubusercontent.com/36861262/166511137-85dea8df-0017-4649-b913-14d4b7a17c2f.png" width="25" /> This button will bring up a pop-up menu that allows the user to change the base color used for the light and dark themes. This uses a new color seed feature to generate entire color schemes from a single color.

## Component Screen
The default screen displays all the updated components in Material 3: AppBar, common Buttons, Floating Action Button(FAB), Chips, Card, Checkbox, Dialog, NavigationBar, NavigationRail, ProgressIndicators, Radio buttons, TextFields and Switch.

### Adaptive Layout
Based on the fact that NavigationRail is not recommended on a small screen, the app changes its layout based on the screen width. If it's played on iOS or Android devices which have a narrow screen, a Navigation Bar will show at the bottom and will be used to navigate. But if it's played as a desktop or a web app, a Navigation Rail will show on the left side and at the same time, a Navigation Bar will show as an example but will not have any functionality.

Users can see both layouts on one device by running a desktop app and adjusting the screen width.

## Color Screen
With Material 3, we have added support for generating a full color scheme from a single seed color. The Color Screen shows users all of the colors in light and dark color palettes that are generated from the currently selected color.

## Typography Screen
The Typography Screen displays the text styles used in for the default TextTheme.

## Elevation Screen
The Elevation screen shows different ways of elevation with a new supported feature "surfaceTintColor" in the Material library.
