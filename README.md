![fast](https://github.com/user-attachments/assets/1af854f5-fdb8-493a-8f07-be58ed8c2af3)

![Version](https://img.shields.io/badge/Latest_Version-2.1.0-blue?labelColor=orange) ![Date](https://img.shields.io/badge/-26.12.24.20.37-gold?logoColor=yellow)

> Credit: The idea of the installation process and the project structures is inspired by [Rush](https://github.com/shreyashsaitwal/rush-cli/tree/main). Thanks a ton, Shreyash 👍🎁

🏃‍♂️ An Efficient Way to Build MIT App Inventor 2 Extensions.

Explore the [wiki section](https://github.com/jewelshkjony/fast-cli/wiki) for comprehensive overview and step-by-step instructions on FAST.

### 🌟 Features
- 🔥 Dynamic Kotlin Compiler.
- 🔥 Integration of R8 Shrinker.
- 🔥 Maven dependency resolver.
- Support for `.aar` files as dependencies.
- Java 8 support, including lambda expressions (`()->`).
- Seamless support for Java and Kotlin languages.
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
