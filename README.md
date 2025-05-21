![fast](https://github.com/user-attachments/assets/1af854f5-fdb8-493a-8f07-be58ed8c2af3)

<img src="https://raw.githubusercontent.com/jewelshkjony/fast-cli/refs/heads/main/schema/version.svg" alt="Version Badge"/>

> Credit: The idea of the installation process and the project structures is inspired by [Rush](https://github.com/shreyashsaitwal/rush-cli/tree/main). Thanks a ton, Shreyash 👍🎁

🏃‍♂️ **FAST** is An Efficient Way to Build App Inventor Extensions For MIT App Inventor 2. With **FAST**, you no longer need to use any class level annotations except `@DesignerComponent`.

Explore the [wiki section](https://github.com/jewelshkjony/fast-cli/wiki) for comprehensive overview and step-by-step instructions on FAST.

🏅 If you are interested in accessing its premium features, please consider making a [request for premium](https://buymeacoffee.com/jewelshkjony/e/412700) access.

## 🪶 Features
- 🏅 Gradle Dependency Resolver <small>(<kbd>Premium</kbd>)</small>.
- 🏅 Maven Dependency Resolver <small>(<kbd>Premium</kbd>)</small>.
- 🏅 Attach [AAR](https://github.com/mit-cml/appinventor-sources/pull/2230) Libraries <small>(<kbd>Premium</kbd>)</small>.
- 🏅 Attach Custom [XML](https://github.com/mit-cml/appinventor-sources/pull/3292) <small>(<kbd>Premium</kbd>)</small>.
- 🏅 Support for bundled `JRE11` <small>(<kbd>Premium</kbd>)</small>.
- 🏅 Ability to apply ProGuard rules from runtime AARs <small>(<kbd>Premium</kbd>)</small>.
- 🔥 Added support for GitHub Actions workflows.
- 🔥 Generates blocks as PNG for each builder.
- 🔥 Generates docs in Markdown.
- 🔥 Dynamic Kotlin Compiler.
- 🔥 Integration of R8 Shrinker.
- 🔥 Support `AAR` as dependencies.
- 🔥 Seamless support for Java and Kotlin languages.
- 🔥 Support for Multi-component in extension.
- 🔥 Integration of new red <small><kbd>drop-down</kbd></small> helper blocks.
- 🔥 All `@annotations` will be removed from built AIX even no ProGuard.
- Up-to-date ProGuard library 7.7.0.
- Java 8 support, including lambda expressions `()->`.
- Generates a smaller size of extension.
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

### Contributors <kbd>5</kbd>
<a href="https://github.com/jewelshkjony" target="_blank"><img src="https://github.com/jewelshkjony.png" alt="Jewel" width="40" height="40"/></a> <a href="https://github.com/buxipro" target="_blank"><img src="https://github.com/buxipro.png" alt="Bux Ali" width="40" height="40"/></a> <a href="https://github.com/patryk84a" target="_blank"><img src="https://github.com/patryk84a.png" alt="patryk84a" width="40" height="40"/></a> <a href="https://github.com/TheKStudio25" target="_blank"><img src="https://github.com/TheKStudio25.png" alt="
Kiran Madde" width="40" height="40"/></a> <a href="https://github.com/Joejsanz" target="_blank"><img src="https://github.com/Joejsanz.png" alt="Joe J. Sanchez" width="40" height="40"/></a>
