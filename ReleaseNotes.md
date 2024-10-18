## 📝 Release Notes
**1.1.4:**
- Fixed Java 8 sources compiling issues even desugaring is disabled.
- Added custom bootclasspath support for targeting Java 8 on JDK8+
- Now you can see all the printed logs on logs.txt file at the installed location of FAST.
- Changed title color and some prints color.

**1.1.3:**
- Added support for using a default `icon.png`.
- By default, `desugar_sources` is now enabled.
- Removed mock-related attributes from the `fast.yml` config.

**1.1.2:**
- No longer need to declare the `category` attribute on the `@SimpleProperty` annotation.

**1.1.1:**
- Added colorful logs to print outputs.
- Fixed a minor bug.

**1.1.0:**
- Fixed a major bug related to Java compilation.
- Added informative logs for error prints.

**1.0.9:**
- Added full Kotlin language support.
- Version names now include build dates.

**1.0.8:**
- Updated the ProGuard library to version 7.6.0.
- Improved core program stability and speed.

**1.0.7:**
- Redesigned the compiler for faster source compilation.
- Fixed compilation issues with large source files.

**1.0.6:**
- Added the `ai2` migrate command for App Inventor extension projects.
- Improved error message clarity.

**1.0.5:**
- Added the `template` migrate command for extension-template projects.
- Improved performance on Android/Linux/MacOS.

**1.0.4:**
- Fixed compilation issues on Linux, Mac, and Android.

**1.0.3:**
- Fixed manifest issue.
- Removed the author’s name from `AndroidRuntime.jar`.
- Replaced the `optimize` attribute with `proguard`.
- Added the `filter_mit_classes` attribute to reduce .aix size.
- Added the `-o` argument for optimizing .aix size when ProGuard is disabled, especially useful for Kotlin libraries.
- Enhanced VSCode code suggestions.

**1.0.2:**
- Fixed compilation issue when file or directory path contains spaces.
- Added the `propfix` command to automatically add missing `category` attributes on `@SimpleProperty`.
- Author’s name is now included in `AndroidRuntime.jar`.

**1.0.1:**
- Fixed code suggestions for Android Studio and IntelliJ IDEA.

**1.0.0:**
- Initial release.
