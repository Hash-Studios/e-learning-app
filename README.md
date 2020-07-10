# <img src="android/app/src/main/res/mipmap-xxhdpi/ic_launcher.png" alt="icon" width=30> E-Learning

E-Learn is a beautiful open-source education app for Android. It is built with Dart on top of Google's Flutter Framework.
<img alt='E-Learn UI Mockup' src='demo/Frame 1.png'/>

## List of Contents

1. [Features](#features)
2. [Changelog](#changelog)
3. [Demo](#demo)
4. [Support](#support)
5. [Dependencies](#dependencies)
6. [Usage](#usage)
7. [Contributing](#contributing)
8. [License](#license)
9. [Contributors](#contributors)
10. [To-Do](#to-do)

## Features

## Changelog

## Demo

**Screens**

| ![](demo/Screen/Home.png) | ![](demo/Screen/Calendar.png) | ![](demo/Screen/Home/Overlay.png) | ![](demo/Screen/Videos.png) | ![](demo/Screen/Stats/Local.png) |
| :-------------: | :-------------:  | :-------------:  | :-------------:  | :-------------:  |
|     Explore     |    Planner    |    Overlay     |     Videos       |     Leaderboard     |


| ![](demo/Screen/Stats/Global.png) | ![](demo/Screen/NavDrawer.png) | ![](demo/Screen/Home/Search.png) | ![](demo/Screen/Home/Search/Results.png) | ![](demo/Screen/Profile.png) |
| :-------------: | :-------------:  | :-------------:  | :-------------:  | :-------------:  |
|     Global Leaderboard    |    NavDrawer    |    Search     |     Search Results      |     Profile     |


| ![](demo/Screen/Onboarding/1.png) | ![](demo/Screen/Onboarding/2.png)| ![](demo/Screen/Onboarding/3.png)       | ![](demo/Screen/Subjects/Close.png)  | ![](demo/Screen/Subjects/Open.png)|
| :-------------:  | :-------------: | :-------------:       | :-------------:  | :-------------: |
|  Onboarding 1    |    Onboarding 2       |  Sign-in Screen    | Subjects Close   | Subjects Close  |

| ![](demo/Screen/Video/Open.png) | ![](demo/Screen/Forum.png) | ![](demo/Screen/Help.png) | ![](demo/Screen/Settings.png) | ![](demo/Screen/Test.png) |
| :-------------: | :-------------:  | :-------------:  | :-------------:  | :-------------:  |
|     Video Info    |    Forum    |    Help     |     Settings       |     Test     |


## Support

If you like what we do, and would want to help us continue doing it, consider sponsoring this project.

<a href="https://www.buymeacoffee.com/HashStudios" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height=51 width=217></a>

## Dependencies

The following packages are needed for the development of this application.

- `provider: ^4.1.3` for caching data, and state management
- `optimized_cached_image: ^0.1.13` for caching wallpapers
- `palette_generator: ^0.2.2` for generating wallpaper colors
- `flutter_colorpicker: ^0.3.4` for color picker dialog
- `fluttertoast: ^4.0.1` for toast notifications
- `gallery_saver: ^2.0.1` for saving wallpapers to gallery
- `shared_preferences: ^0.5.7` for storing settings like theme
- `share: ^0.6.4` for sharing the wallpaper links
- `url_launcher: ^5.4.5` for launching urls
- `cloud_firestore: ^0.13.5` for storing liked images and other user based data
- `firebase_core: ^0.4.4+3` for firebase support
- `firebase_auth: ^0.16.0` for user authentication
- `firebase_dynamic_links: ^0.5.1` for wallpaper link generation and handling
- `google_sign_in: ^4.4.4` for Google sign in support
- `permission_handler: ^5.0.1+1` for handling required device permissions
- `flare_splash_screen: ^3.0.1` for the animated splash screen
- `flutter_svg: 0.17.4` for svg assets
- `sliding_up_panel: ^1.0.2` for sliding info panel
- `firebase_analytics: ^5.0.16` for analytics
- `firebase_messaging: ^6.0.16` for notifications
- `in_app_purchase: ^0.3.4+1` for in-app purchases

More details about these can be found in the [`pubspec.yaml`](https://github.com/Hash-Studios/Prism/tree/master/pubspec.yaml) file.

## Usage

The application files for Android devices can be found on [Google Play Store](https://play.google.com/store/apps/details?id=com.hash.prism).

More information about the releases can be found in the [Release](https://github.com/Hash-Studios/Prism/releases) tab.

## Contributing

First off, thank you for considering contributing to Prism. It's people like you that make Prism such a great app.

To start your lovely journey with Prism, first read the [`contributing guidelines`](https://github.com/Hash-Studios/Prism/tree/master/CONTRIBUTING.md) and then fork the repo to start contributing!

## License

This app is licensed under the [`BSD 3-Clause License`](https://github.com/Hash-Studios/Prism/tree/master/LICENSE.txt).
Any Usage of the source code must follow the below license.

```
BSD 3-Clause License

Copyright (c) 2020 Hash Studios
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its
   contributors may be used to endorse or promote products derived from
   this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
```

```
DISCLAIMER: Google Play and the Google Play logo are trademarks of Google LLC.
```

## Contributors

<a href="https://github.com/Hash-Studios/Prism/graphs/contributors">
  <img src="https://contributors-img.web.app/image?repo=Hash-Studios/Prism" />
</a>

## 
![E-Learn UI Mockup](demo/Prism_Mockup2.png)

## To Do

- [x] notifications (timed, random)
- [ ] code refactoring
- [ ] community walls + collections (add users to upload there own walls in the app)
- [ ] make tags clickable
- [ ] search tags working
- [x] add analytics
- [ ] centrecrop java for search
- [x] see more in search
- [x] favWallScreen downlod button issue
- [x] change circular progress indicator with fullscreen loader due to gesture detector
