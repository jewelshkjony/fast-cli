![fast](https://github.com/user-attachments/assets/1af854f5-fdb8-493a-8f07-be58ed8c2af3)

<img src="https://raw.githubusercontent.com/jewelshkjony/fast-cli/refs/heads/main/schema/version.svg" alt="Version Badge"/>

> Credit: The idea of the installation process and the project structures is inspired by [Rush](https://github.com/shreyashsaitwal/rush-cli/tree/main). Thanks a ton, Shreyash 👍🎁

🏃‍♂️ **FAST** is An Efficient Way to Build & Publish App Inventor Extensions.\
With **FAST**, you no longer need to use any class level annotations except `@DesignerComponent`.

Explore the [wiki section](https://github.com/jewelshkjony/fast-cli/wiki) for comprehensive overview and step-by-step instructions on FAST.

🏅 If you are interested in accessing its premium features, please consider making a [request for premium](https://buymeacoffee.com/jewelshkjony/e/412700) access.

## 🪶 Features
<kbd>🥇 Premium features</kbd>
- Gradle Dependency Resolver.
- Maven Dependency Resolver.
- Attach [AAR](https://github.com/mit-cml/appinventor-sources/pull/3555) Libraries.
- Attach Custom [XML](https://github.com/mit-cml/appinventor-sources/pull/3292).
- Ability to apply ProGuard/R8 rules from runtime AARs.

<kbd>🔥 Hot features</kbd>
- Dynamic Android compile SDK API level.
- Generates docs in Markdown.
- Generates blocks as PNG for each builder when `-b` passed.
- Dynamic ProGuard library.
- Integration of R8 Shrinker.
- Dynamic Kotlin Compiler.
- Seamless support for Java and Kotlin languages.
- Support `AAR` as dependencies.
- Support for multi-components in extension.
- Integration of new red <small><kbd>drop-down</kbd></small> helper blocks.
- All `@annotations` will be removed from built AIX even no ProGuard/R8.
- Added support for GitHub Actions workflows.

<kbd>💧 Cool features</kbd>
- Code suggestions on VSCode, Eclipse, IntelliJ IDEA & Android Studio.
- Ability to declare manifest in AndroidManifest.xml.
- Support shorthand class names `(e.g., .MyService)` in manifest.
- Keep classes declared in manifest automatically when `-m` passed.
- Auto Project migration from Rush, extension-template & AI2 source based project.
- Jetifier to migrate Android support libraries to Androidx.
- Java 8 support, including lambda expressions `()->`.
- Generates a smaller size of extension.
- Ability to filter AI2 provided classes to reduce the AIX size.
- Ready for server side integration.

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

### Contributors <kbd>9</kbd>
<a href="https://github.com/jewelshkjony/fast-cli/blob/main/CONTRIBUTORS.md#1--jewel-owner" target="_blank"><img src="https://github.com/jewelshkjony.png" alt="Jewel" width="40" height="40"/></a> <a href="https://github.com/jewelshkjony/fast-cli/blob/main/CONTRIBUTORS.md#2--riaddeveloper-contributor" target="_blank"><img src="https://github.com/RiadDeveloper.png" alt="Riad" width="40" height="40"/></a> <a href="https://github.com/jewelshkjony/fast-cli/blob/main/CONTRIBUTORS.md#3--bux-ali-contributor" target="_blank"><img src="https://github.com/buxipro.png" alt="Bux Ali" width="40" height="40"/></a> <a href="https://github.com/jewelshkjony/fast-cli/blob/main/CONTRIBUTORS.md#4--mujeeb-ur-rehman-contributor" target="_blank"><img src="https://github.com/lilmujeeb.png" alt="Mujeeb Ur Rehman" width="40" height="40"/></a> <a href="https://github.com/jewelshkjony/fast-cli/blob/main/CONTRIBUTORS.md#5--aemo-developer-contributor" target="_blank"><img src="https://github.com/MahmoudHooda2019.png" alt="MahmoudHooda" width="40" height="40"/></a> <a href="https://github.com/jewelshkjony/fast-cli/blob/main/CONTRIBUTORS.md#6--patryk_f-contributor" target="_blank"><img src="https://github.com/patryk84a.png" alt="patryk84a" width="40" height="40"/></a> <a href="https://github.com/jewelshkjony/fast-cli/blob/main/CONTRIBUTORS.md#7--the-k-studio-contributor" target="_blank"><img src="https://github.com/TheKStudio25.png" alt="
Kiran Madde" width="40" height="40"/></a> <a href="https://github.com/jewelshkjony/fast-cli/blob/main/CONTRIBUTORS.md#8--joe-j-sanchez-contributor" target="_blank"><img src="https://github.com/Joejsanz.png" alt="Joe J. Sanchez" width="40" height="40"/></a> <a href="https://github.com/jewelshkjony/fast-cli/blob/main/CONTRIBUTORS.md#9--gilderlan-xavier-contributor" target="_blank"><img src="https://github.com/GXDEVS.png" alt="Gilderlan Xavier" width="40" height="40"/></a>
