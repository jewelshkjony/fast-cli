![image](https://github.com/user-attachments/assets/8009e7f8-0634-4fcb-93d5-293faa2527cf)

⚡ A Smarter and More Efficient Way to Develop MIT App Inventor 2 Extensions. Say good bye to @Annotations.

## Features
- Java 8 support, including lambda expressions (`()->`).
- Kotlin support for non-component classes.
- Multi-component support for extensions.
- Integration of new red helper blocks.
- Up-to-date ProGuard version.
- Optimizer to optimize aix size even without ProGuard.
- Ability to declare manifest attributes in AndroidManifest.xml.
- Code suggestions for VSCode, Eclipse, IntelliJ IDEA and Android Studio.
- Filter Mit App Inventor provided classes.
- Auto project migration.
- Jetifier.

## Supported OS
- Windows
- Linux
- MacOS
- Android (Termux)

## Release Notes
**1.0.1:**
- Fixed code suggestion for Android Studio & IntelliJ IDEA.

**1.0.2:**
- Fixed compiling issue if space is present in file or directory path.
- Added `propfix` command to automatically add the `category` attribute on @SimpleProperty where missing.
- The author's name also be included in AndroidRuntime.jar.

**1.0.3:**
- Fixed the manifest issue.
- Removed author's name from AndroidRuntime.jar
- `optimize` attribute replaced by `proguard`.
- Added a new attribute by name `filter_mit_classes` to produce a smaller aix size.
- Added a new argument `-o` to optimize that aix size when proguard is disabled. It's useful when you use Kotlin libraries without ProGuard.
- Enhanced the VSCode code suggestion feature.
