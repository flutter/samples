# Material You Demo

This sample project is a Flutter app that demonstrates all the updated components, color system, typography, and surface Tint Overlay in Material 3 (also known as Material You). Users can also control the app in different brightness(light/dark) modes, color seeds, and versions(Material2/Material3). For more information about Material 3, the guidance is now live at https://m3.material.io/.

# Preview

https://user-images.githubusercontent.com/36861262/166358511-43d6a30b-33fe-4680-a4d1-808f087e740e.mp4

# Features
## Navigation Bar v.s. Navigation Rail
Based on the fact that NavigationRail is not recommended on a small screen, the app changes its layout based on the screen width. If it's played on iOS or Android devices which have a narrow screen, a Navigation Bar will show at the bottom and will be used to navigate. But if it's played as a desktop or a web app, a Navigation Rail will show on the left side and at the same time, a Navigation Bar will show as an example but will not have any functionality.

Users can see both layouts on one device by running a desktop app and adjusting the screen width.

## Icon Buttons on the Top App Bar
<img src="https://user-images.githubusercontent.com/36861262/166506048-125caeb3-5d5c-4489-9029-1cb74202dd37.png" width="25"/>  Users can see the app in light or dark brightness mode by using this button.

<img src="https://user-images.githubusercontent.com/36861262/166508002-90fce980-d228-4312-a95f-a1919bb79ccc.png" width="25" />  Users can see components in a different Material version by clicking this button.

<img src="https://user-images.githubusercontent.com/36861262/166511137-85dea8df-0017-4649-b913-14d4b7a17c2f.png" width="25" /> Users can use this button and the pop-up menu to choose a single color and generate the corresponding color theme for the app.
 
## Main Screen
The main screen(first screen) lists all the updated components in Material 3: AppBar, common Buttons, Floating Action Button(FAB), Card, Dialog, NavigationBar ,and NavigationRail.

## Color Screen
Material3 adds support for generating a full ColorScheme from a single color. In Color Screen(second screen), it shows users light-theme and dark-theme color palettes that are generated from the currently selected color. 

## Typography Screen
Typography Screen (third screen) shows Material's default type scale includes a range of contrasting and extensible styles. There are fifteen styles supported by type system.

## Surface Tones Screen
Surface Tint Overlay screen shows a new feature "surfaceTintColor" to Material widget. If a new surfaceTintColor is provided to the Material widget it will apply this color to the base color with an opacity based on the elevation.


