![fast](https://github.com/user-attachments/assets/1af854f5-fdb8-493a-8f07-be58ed8c2af3)

![Version](https://img.shields.io/badge/Latest_Version-2.4.0-blue?labelColor=orange) ![Date](https://img.shields.io/badge/-25.02.25.06.19-gold?logoColor=yellow)

> Credit: The idea of the installation process and the project structures is inspired by [Rush](https://github.com/shreyashsaitwal/rush-cli/tree/main). Thanks a ton, Shreyash 👍🎁

🏃‍♂️ **FAST** is An Efficient Way to Build App Inventor Extensions For MIT App Inventor 2. With **FAST**, you no longer need to use any class level annotations except `@DesignerComponent`.

Explore the [wiki section](https://github.com/jewelshkjony/fast-cli/wiki) for comprehensive overview and step-by-step instructions on FAST.

### 🌟 Features
- 🔥 Attach custom [xml](https://github.com/mit-cml/appinventor-sources/pull/3292) to bundle it with APK.
- 🔥 Generates docs in Markdown.
- 🔥 Maven dependency resolver.
- 🔥 Dynamic Kotlin Compiler.
- 🔥 Integration of R8 Shrinker.
- 🔥 Support `AAR` as dependencies.
- Java 8 support, including lambda expressions `()->`.
- Seamless support for Java and Kotlin languages.
- Support for Multi-component in extension.
- Integration of new red drop-down helper blocks.
- Up-to-date ProGuard library 7.6.1.
- Generates a smaller size of extension.
- All `@annotations` will be removed from built AIX.
- Ability to declare manifest in AndroidManifest.xml.
- Code suggestions on VSCode, Eclipse, IntelliJ IDEA & Android Studio.
- Ability to filter AI2 provided classes to reduce the AIX size.
- Auto Project migration from Rush, extension-template & AI2 source based project.
- Jetifier to migrate Android support libraries to Androidx.

#### 🤝 Supported OS
- Windows
- Linux
- MacOS
- Android <small>(Termux)</small>

#### 🤔 How to install?
Refer to [this wiki](https://github.com/jewelshkjony/fast-cli/wiki/Installation) to  install the FAST on your system.

#### 🤔 How to Update?
Refer to [this wiki](https://github.com/jewelshkjony/fast-cli/wiki/Upgradation) to update the FAST to the latest version.

#### 🤔 How to create a new FAST project
1. Open or navigate terminal at where you want to create your extension project.
2. Run `fast create <ProjectName>`
3. Enter the package name.
4. Enter author name.
5. Select language.
6. Done.

#### 🤔 How to build a FAST project
1. Open or navigate termanl at where the FAST project is.
2. Run `fast build` to build the project.
3. Done. The compiled extension should be inside the `out` directory.

#### 🤔 How to optimize using ProGuard?
1. Make sure that **ProGuard** is enabled in [fast.yml](https://github.com/jewelshkjony/fast-cli/wiki/Config%E2%80%90File%E2%80%90(fast.yml)).
2. Run the [build command](https://github.com/jewelshkjony/fast-cli/wiki/Build%E2%80%90Command) with `-r`.

#### 🤔 How to optimize using R8?
1. Make sure that **R8** is enabled in [fast.yml](https://github.com/jewelshkjony/fast-cli/wiki/Config%E2%80%90File%E2%80%90(fast.yml))
2. Run the [build command](https://github.com/jewelshkjony/fast-cli/wiki/Build%E2%80%90Command) with `-s`.
* **

* 💰 Donations are welcome [here](https://buymeacoffee.com/jewelshkjony).
* 📝 Release notes are [here](https://github.com/jewelshkjony/fast-cli/blob/main/ReleaseNotes.md).
* 💡 Ideas are welcome [here](https://github.com/jewelshkjony/fast-cli/discussions).
* 🐛 Submit issues [here](https://github.com/jewelshkjony/fast-cli/issues).
* 🤝 For getting additional supports, text me via [Telegram](https://t.me/jewelshkjony) or [WhatsApp](https://wa.me/8801775668913).
