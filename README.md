![fast](https://github.com/user-attachments/assets/1af854f5-fdb8-493a-8f07-be58ed8c2af3)

🏃‍♂️‍➡️ A Smarter and More Efficient Way to Develop MIT App Inventor 2 Extensions. Say good bye to @annotations.

> Credit: The idea of the installation process and the project structures is inspired by [RUSH](https://github.com/shreyashsaitwal/rush-cli/tree/main). Thanks a ton, Shreyash 👍🎁

## 🌟 Features
- Java 8 support, including lambda expressions (`()->`).
- Support for Kotlin language to writte extension components.
- Support for Multi-component in extension.
- Integration of new red helper/drop-down blocks.
- Up-to-date ProGuard library 7.6.0.
- All @annotations will be removed from build aix.
- Optimizer to optimize aix size even without ProGuard.
- Ability to declare manifest attributes in AndroidManifest.xml.
- Support for Code suggestions on VSCode, Eclipse, IntelliJ IDEA and Android Studio.
- Filter Mit App Inventor provided classes to reduce the aix size.
- Support for project migration to FAST from Rush, extension-template & App Inventor source based extension.
- Support for Jetifier to make Android Support libraries compatible with AndroidX.

## 🤝 Supported OS
- Windows
- Linux
- MacOS
- Android <small>(Termux/UserLand, etc)</small>

## ❓ Requirements
1. Only Java is required to run the FAST. (JDK 8 or 11 is recommended).

## 🤔 How to install?
#### 🖥️ Windows Only
---
1. Run the the below command on Windows PowerShell.
````.ps1
iwr https://raw.githubusercontent.com/jewelshkjony/fast-cli/main/scripts/install/win.ps1 -useb | iex
````
2. The installation is successful. You're now good to use the FAST CLI.

#### 💻 Linux, MacOS & Android Termux
---
1. Run the the below command on terminal.
````.sh
curl https://raw.githubusercontent.com/jewelshkjony/fast-cli/main/scripts/install/install.sh -fsSL | sh
````
2. The installation is successful. You're now good to use the FAST CLI.

## ❓ How to update the FAST
#### 🖥️ Windows Only
---
1. Make sure that FAST is already installed on your system.
2. Run the the below command on Windows PowerShell.
````.ps1
iwr https://raw.githubusercontent.com/jewelshkjony/fast-cli/main/scripts/update/win.ps1 -useb | iex
````
3. Done. Check the version of updated FAST.

#### 💻 Linux, MacOS & Android Termux
---
1. Make sure that FAST is already installed on your system.
2. Run the the below command on terminal.
````.sh
curl https://raw.githubusercontent.com/jewelshkjony/fast-cli/main/scripts/install/install.sh -fsSL | sh
````
3. Done. Check the version of updated FAST.

## 🤔 How to create FAST project
1. Open terminal at where you want to create a new FAST project.
2. Run `fast create <ProjectName>`
3. Enter the package name.
4. Enter author name.
5. Done.

## 🤔 How to build a FAST project
1. Open termanl at where the FAST project is.
2. Run `fast build` to build the project.
3. Done. The compiled extension should be inside the out directory.

## 💡 Want to share an idea?
Please share your ideas [here](https://github.com/jewelshkjony/fast-cli/discussions).

## 🐛 Getting issues?
Please open an issue [here](https://github.com/jewelshkjony/fast-cli/issues).

## 🤝 For additional support
Please text me via [Telegram](https://t.me/jewelshkjony) or [WhatsApp](https://wa.me/8801775668913).

## 📝 Release Notes
<details>
<summary>1.1.2</summary>

- No more need to declare the category attribute on the @SimpleProperty annotation.
</details>

<details>
<summary>1.1.1</summary>

- Colorful logs added on prints.
- A minor bug is fixed.
</details>

<details>
<summary>1.1.0</summary>

- A major bug fixed for Java compilation.
- Informative logs on error prints.
</details>

<details>
<summary>1.0.9</summary>

- Added full kotlin language support.
- Added built date with the version name.
</details>

<details>
<summary>1.0.8</summary>

- Updated the ProGuard library to the latest v7.6.0
- Some internal changes on the core program of FAST to make it more faster & stable.
</details>

<details>
<summary>1.0.7</summary>

- Redesiged the compiler to compile sources faster.
- Fixed compilation issue while compiling a large amount of sources.
</details>

<details>
<summary>1.0.6</summary>

- Added the `ai2` migrate command to migrate App Inventor source's extension project to FAST.
- Error messages are now more meaningful.
</details>

<details>
<summary>1.0.5</summary>

- Added the `template` migrate command to migrate extension-template project to FAST.
- Some internal changes to make it more faster on Android/Linux/MacOS.
</details>

<details>
<summary>1.0.4</summary>

- Fixed compiling issues on Linux/Mac/Android.
</details>

<details>
<summary>1.0.3</summary>

- Fixed the manifest issue.
- Removed author's name from AndroidRuntime.jar
- `optimize` attribute replaced by `proguard`.
- Added a new attribute by name `filter_mit_classes` to produce a smaller aix size.
- Added a new argument `-o` to optimize that aix size when proguard is disabled. It's useful when you use Kotlin libraries without ProGuard.
- Enhanced the VSCode code suggestion feature.
</details>

<details>
<summary>1.0.2</summary>

- Fixed compiling issue if space is present in file or directory path.
- Added `propfix` command to automatically add the `category` attribute on @SimpleProperty where missing.
- The author's name also be included in AndroidRuntime.jar.
</details>

<details>
<summary>1.0.1</summary>

- Fixed code suggestion for Android Studio & IntelliJ IDEA.
</details>

<details>
<summary>1.0.0</summary>

- Initial release.
</details>
