![fast](https://github.com/user-attachments/assets/1af854f5-fdb8-493a-8f07-be58ed8c2af3)

![Version](https://img.shields.io/badge/Latest_Version-2.0.9-blue?labelColor=orange) ![Date](https://img.shields.io/badge/-24.12.24.10.35-gold?logoColor=yellow)

> Credit: The idea of the installation process and the project structures is inspired by [Rush](https://github.com/shreyashsaitwal/rush-cli/tree/main). Thanks a ton, Shreyash 👍🎁

## 🌟 Features
- 🔥 Integration of R8 Shrinker.
- 🔥 Maven dependency resolver.
- 🔥 Support for `.aar` files as dependencies.
- Java 8 support, including lambda expressions (`()->`).
- Support for Kotlin language to writte extension components.
- Support for Multi-component in extension.
- Integration of new red helper/drop-down blocks.
- Up-to-date ProGuard library 7.6.1.
- Generates a smaller size of extension.
- `@annotations` less source codes.
- All `@annotations` will be removed from built aix.
- Optimizer to optimize aix size even no ProGuard.
- Ability to declare manifest attributes in AndroidManifest.xml.
- Code suggestions on VSCode, Eclipse, IntelliJ IDEA and Android Studio.
- Filter Mit App Inventor provided classes to reduce the aix size.
- Project migration to FAST from Rush, extension-template & MIT AI2 source based extension.
- Jetifier to make Android Support libraries compatible with AndroidX.

## 🤝 Supported OS
- Windows
- Linux
- MacOS
- Android <small>(Termux, UserLand, etc)</small>

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
curl https://raw.githubusercontent.com/jewelshkjony/fast-cli/main/scripts/install/install.sh -fsSL | sh
````
2. The installation is successful. You're now good to use the FAST CLI.

#### ⚙️ Manual Process for Windows
---
1. Download the `fast.zip` [from here](https://github.com/jewelshkjony/fast-cli/releases/latest).
2. Unzip it, at where you want.
3. Copy the absolute directory of the unzipped Fast folder.
4. Create FAST_HOME environment variable with the copied value (Optional).
5. Set the copied value to path. mandatory
6. Done. Now open the terminal and write fast -v to check the installed version.

## 🤔 How to update the installed version
#### 📩 Using Fast Command
---
1. Open terminal and run `fast upgrade`.
2. If an update is available it will ask to download it. Enter `Yes` to download the latest update.
3. It will download the latest version. Wait while it downloads.
4. Done.

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
curl -fsSL https://raw.githubusercontent.com/jewelshkjony/fast-cli/main/scripts/update/install.sh | sh
````
3. Done. Check the version of updated FAST.

## 🤔 How to create a new FAST project
1. Open terminal at where you want to create a new FAST project.
2. Run `fast create <ProjectName>`
3. Enter the package name.
4. Enter author name.
5. Select language.
6. Done.

## 🤔 How to declare the component class
1. You need to annotate with `@DesignerComponent` to declare extension component classes.\
Example:
````.java
@DesignerComponent(
  version = 1,
  versionName = "1.0",
  description = "Developed by JEWEL using Fast.",
  iconName = "icon.png"
)
````

- Required attributes: `version`, `iconName`
- Optional attributes: `versionName`, `description`, `designerHelpDescription`, `helpUrl`, `licenseName`, `androidMinSdk`
- Ignored attributes: `category`, `nonVisible`

## 🤔 How to build a FAST project
1. Open termanl at where the FAST project is.
2. Run `fast build` to build the project.
3. Done. The compiled extension should be inside the out directory.

## 🤔 How to optimize using ProGuard?
1. Make sure that the `proguard` attribute is enabled in the `fast.yml` config file. Ex. `proguard: true`
2. Run the build command with `-r` as an additional argument. Ex. `fast build -r`

## 🤔 How to optimize using R8?
1. Make sure that the `R8` attribute is enabled in the `fast.yml` config file. Ex. `R8: true`
2. Run the build command with `-s` as an additional argument. Ex. `fast build -s`
* **
### 💡 Want to share an idea?
Please share your ideas [here](https://github.com/jewelshkjony/fast-cli/discussions).

### 🐛 Getting issues?
Please open an issue [here](https://github.com/jewelshkjony/fast-cli/issues).

### 🤝 For additional support
Please text me via [Telegram](https://t.me/jewelshkjony) or [WhatsApp](https://wa.me/8801775668913).

### 📝 Release Notes
Please read the release notes from [here](https://github.com/jewelshkjony/fast-cli/blob/main/ReleaseNotes.md).
