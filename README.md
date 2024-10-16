![image](https://github.com/user-attachments/assets/8009e7f8-0634-4fcb-93d5-293faa2527cf)

⚡ A Smarter and More Efficient Way to Develop MIT App Inventor 2 Extensions. Say good bye to @Annotations.

## Features
- Java 8 support, including lambda expressions (`()->`).
- Kotlin language support.
- Multi-component support for extensions.
- Integration of new red helper blocks.
- Up-to-date ProGuard library 7.6.0.
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
- Android <small>(Termux/UserLand)</small>

## Requirements
1. Only JDK is required to run the FAST. (JDK 8 is recommended).

## Installation
#### Windows Only
1. Run the the below command on Windows PowerShell.
````.ps1
iwr https://raw.githubusercontent.com/jewelshkjony/fast-cli/main/scripts/install/win.ps1 -useb | iex
````
2. The installation is successful. You're now good to use the FAST CLI.

#### Linux, MacOS & Android Termux
1. Run the the below command on terminal.
````.sh
curl https://raw.githubusercontent.com/jewelshkjony/fast-cli/main/scripts/install/install.sh -fsSL | sh
````
2. The installation is successful. You're now good to use the FAST CLI.

## How to update the FAST
#### Windows Only
1. Make sure that FAST is already installed on your system.
2. Run the the below command on Windows PowerShell.
````.ps1
iwr https://raw.githubusercontent.com/jewelshkjony/fast-cli/main/scripts/update/win.ps1 -useb | iex
````
3. Done. Check the version of updated FAST.

#### Linux, MacOS & Android Termux
1. Make sure that FAST is already installed on your system.
2. Run the the below command on terminal.
````.sh
curl https://raw.githubusercontent.com/jewelshkjony/fast-cli/main/scripts/install/install.sh -fsSL | sh
````
3. Done. Check the version of FAST.

## Release Notes
**1.1.2:**
- No more need to declare the category attribute on the @SimpleProperty annotation.

**1.1.1:**
- Colorful logs added on prints.
- A minor bug is fixed.

**1.1.0:**
- A major bug fixed for Java compilation.
- Informative logs on error prints.

**1.0.9:**
- Added full kotlin language support.
- Added built date with the version name.

**1.0.8:**
- Updated the ProGuard library to the latest v7.6.0
- Some internal changes on the core program of FAST to make it more faster & stable.

**1.0.7:**
- Redesiged the compiler to compile sources faster.
- Fixed compilation issue while compiling a large amount of sources.

**1.0.6:**
- Added the `ai2` migrate command to migrate App Inventor source's extension project to FAST.
- Error messages are now more meaningful.

**1.0.5:**
- Added the `template` migrate command to migrate extension-template project to FAST.
- Some internal changes to make it more faster on Android/Linux/MacOS.

**1.0.4:**
- Fixed compiling issues on Linux/Mac/Android.

**1.0.3:**
- Fixed the manifest issue.
- Removed author's name from AndroidRuntime.jar
- `optimize` attribute replaced by `proguard`.
- Added a new attribute by name `filter_mit_classes` to produce a smaller aix size.
- Added a new argument `-o` to optimize that aix size when proguard is disabled. It's useful when you use Kotlin libraries without ProGuard.
- Enhanced the VSCode code suggestion feature.

**1.0.2:**
- Fixed compiling issue if space is present in file or directory path.
- Added `propfix` command to automatically add the `category` attribute on @SimpleProperty where missing.
- The author's name also be included in AndroidRuntime.jar.

**1.0.1:**
- Fixed code suggestion for Android Studio & IntelliJ IDEA.

**1.0.0:**
- Initial release.
