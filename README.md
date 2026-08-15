<img src="https://raw.githubusercontent.com/jewelshkjony/fast-cli/refs/heads/main/schema/fast.svg" alt="FAST-CLI"/>

<img src="https://raw.githubusercontent.com/jewelshkjony/fast-cli/refs/heads/main/schema/version.svg" alt="Version Badge"/>

> Credit: The idea of the installation process and the project structures is inspired by [Rush](https://github.com/shreyashsaitwal/rush-cli/tree/main). Thanks a ton, Shreyash 👍🎁

🏃‍♂️ **FAST** (<ins>Feature-rich AppInventor Source Terminal</ins>) is An Efficient Way to Build & Publish App Inventor Extensions.\
With **FAST**, you no longer need to use any class level annotations except `@DesignerComponent` or `@Component`.

Explore the [wiki section](https://github.com/jewelshkjony/fast-cli/wiki) for comprehensive overview and step-by-step instructions on FAST.

🏅 If you are interested in accessing its premium features, please consider making a request for a ([weekly](https://buymeacoffee.com/jewelshkjony/e/491987)/[monthly](https://buymeacoffee.com/jewelshkjony/e/491973)/[yearly](https://buymeacoffee.com/jewelshkjony/e/491976)/[lifetime](https://buymeacoffee.com/jewelshkjony/e/412700)) premium access.

## 🪶 Features
<kbd>🥇 Premium features</kbd>
- [Core Library](https://developer.android.com/studio/write/java8-support#library-desugaring) & [Java 8 Desugaring](https://developer.android.com/studio/write/java8-support).
- FastGuad (String Obfuscator).
- [Maven](https://mvnrepository.com/) & [Gradle](https://docs.gradle.org/current/userguide/dependency_resolution.html) Dependency Resolver.
- Android [manifests-merging](https://developer.android.com/build/manage-manifests#merge-manifests).
- [Package Relocator](https://gradleup.com/shadow/configuration/relocation/) (Repackage classes).
- [Minimizer](https://gradleup.com/shadow/configuration/minimizing/) (Strip unused classes).
- [Xtend](https://eclipse.dev/Xtext/xtend/) Programming Language.
- Modern Java (9-25) syntax.
- [Attach AAR](https://github.com/mit-cml/appinventor-sources/pull/3555) Libraries.
- Attach [Custom XML](https://github.com/mit-cml/appinventor-sources/pull/3292).
- Generates [Shadow blocks](https://github.com/jewelshkjony/fast-cli/blob/main/ReleaseNotes.md#whats-called-shadow-blocks%EF%B8%8F).
- Apply ProGuard/R8 rules from AARs.
- Copy blocks into Clipboard.
- [Project specific JDK](https://github.com/jewelshkjony/fast-cli/wiki/Config%E2%80%90File%E2%80%90(fast.yml)#java_home).
- [Specifying defaults arguments](https://github.com/jewelshkjony/fast-cli/wiki/Config%E2%80%90File%E2%80%90(fast.yml)#default_args).
- Supports compiling [AIDL](https://developer.android.com/develop/background-work/services/aidl) sources.

<kbd>🔥 Hot features</kbd>
- Dynamic Android [Compile SDK](https://developer.android.com/build#android_sdk_settings) API level.
- Generates docs in Markdown.
- Generates blocks as PNG for each builder when `-b` passed.
- Dynamic [ProGuard](https://github.com/Guardsquare/proguard) library.
- Integration of [R8 Shrinker](https://developer.android.com/topic/performance/app-optimization/enable-app-optimization#overview).
- Dynamic [Kotlin Compiler](https://kotlinlang.org/docs/command-line.html).
- Seamless support for Java, Kotlin & Xtend languages.
- Supports `AAR` as dependencies.
- Supports for multi-components in extension.
- Direct process helper classes without pre-compiling when JDK 8/11.
- Supports red <small><kbd>drop-down</kbd></small> helper blocks.
- All `@annotations` will be removed from built AIX even no ProGuard/R8.
- Supports GitHub [Actions](https://github.com/features/actions) workflows.

<kbd>💧 Cool features</kbd>
- Code suggestions on [VSCode](https://code.visualstudio.com/), [Eclipse](https://eclipseide.org/), [IntelliJ IDEA](https://www.jetbrains.com/idea/) & [Android Studio](https://developer.android.com/studio).
- Declare manifest in AndroidManifest.xml.
- Supports shorthand class names `(e.g: ...MyService)` in manifest.
- Keep classes declared in manifest automatically when `-m` passed.
- Auto Project migration from [Rush](https://github.com/shreyashsaitwal/rush-cli), [extension-template](https://github.com/mit-cml/extension-template) & [AI2 source](https://github.com/mit-cml/appinventor-sources/) based project.
- [Jetifier](https://developer.android.com/tools/jetifier) to migrate Android support libraries to Androidx.
- Java 8 support, including lambda expressions `()->`.
- Generates a smaller size of extension.
- Ability to filter AI2 provided classes to reduce the AIX size.
- Ready for server side integration.

#### 🤝 Supported OS
- Windows
- Linux
- MacOS
- Android <small>(Termux)</small>

#### ❓ What Makes FAST Different?

1. If you examine the generated Java file for your extension, you'll notice that there are no class-level annotations except `@DesignerComponent` or `@Component`. Writing the `@DesignerComponent` or `@Component` annotation is mandatory to declare the component class. In this way, you'll be able to use multi-component within a single extension.

2. FAST replaced old annotations with new and short annotations. However, old annotations are still supported.
    * `@DesignerComponent` -> `@Component`
    * `@DesignerProperty` -> `@Designer`
    * `@SimpleProperty` -> `@Property`
    * `@SimpleFunction` -> `@Function`
    * `@SimpleEvent` -> `@Event`

#### 🗒️ The Config File (`fast.yml`)
Instead of traditional build configurations and minimum Android SDK requirements, **FAST** uses a config file called `fast.yml`. This file manages everything, including external libraries and assets required by your extension. To learn more, visit the [Config File](https://github.com/jewelshkjony/fast-cli/wiki/Config%E2%80%90File%E2%80%90(fast.yml)) Wiki.

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
<a href="https://github.com/jewelshkjony/fast-cli/blob/main/CONTRIBUTORS.md#1--jewel-owner" target="_blank"><img src="https://github.com/jewelshkjony.png" alt="Jewel" width="40" height="40"/></a> <a href="https://github.com/jewelshkjony/fast-cli/blob/main/CONTRIBUTORS.md#3--bux-ali-contributor" target="_blank"><img src="https://github.com/buxipro.png" alt="Bux Ali" width="40" height="40"/></a> <a href="https://github.com/jewelshkjony/fast-cli/blob/main/CONTRIBUTORS.md#4--mujeeb-ur-rehman-contributor" target="_blank"><img src="https://github.com/lilmujeeb.png" alt="Mujeeb Ur Rehman" width="40" height="40"/></a> <a href="https://github.com/jewelshkjony/fast-cli/blob/main/CONTRIBUTORS.md#5--aemo-developer-contributor" target="_blank"><img src="https://github.com/MahmoudHooda2019.png" alt="MahmoudHooda" width="40" height="40"/></a> <a href="https://github.com/jewelshkjony/fast-cli/blob/main/CONTRIBUTORS.md#6--patryk-fraczek-contributor" target="_blank"><img src="https://github.com/patryk84a.png" alt="patryk84a" width="40" height="40"/></a> <a href="https://github.com/jewelshkjony/fast-cli/blob/main/CONTRIBUTORS.md#7--the-k-studio-contributor" target="_blank"><img src="https://github.com/TheKStudio25.png" alt="
Kiran Madde" width="40" height="40"/></a> <a href="https://github.com/jewelshkjony/fast-cli/blob/main/CONTRIBUTORS.md#8--joe-j-sanchez-contributor" target="_blank"><img src="https://github.com/Joejsanz.png" alt="Joe J. Sanchez" width="40" height="40"/></a> <a href="https://github.com/jewelshkjony/fast-cli/blob/main/CONTRIBUTORS.md#9--gilderlan-xavier-contributor" target="_blank"><img src="https://github.com/GXDEVS.png" alt="Gilderlan Xavier" width="40" height="40"/></a> <a href="https://github.com/jewelshkjony/fast-cli/blob/main/CONTRIBUTORS.md#10--iago-lira-contributor" target="_blank"><img src="https://github.com/iagolirapasssos.png" alt="Iago lira" width="40" height="40"/></a>
