## 📝 Release Notes

**👛4.3.0:**
- Added support for Android Interface Definition Language (`AIDL`).
- Shorthand class names should start with three dots. E.g: (`...MyService`)
- A few minor bugs have been fixed.

**🆒4.2.1:**
- Added support for defining `maxSdkVersion` using the `<uses-permission>` element in `AndroidManifest.xml`.
- Support for running `fast sync` outside the project directory by passing the `self` argument. E.g., `fast sync -self`

**🚩4.2.0:**
- Deprecated desugaring features and will be removed in future release!
- Support for using Gradle version 9+ with bundled or system JDK 17+.

<kbd>Breaking changes:</kbd>
- Updated `AndroidRuntime.jar` to be compatible with [nb202](https://github.com/mit-cml/appinventor-sources/milestone/48).
- Changed default Android compile SDK to 35.

**4.1.1:**
- GitHub Action workflows support dynamic JDK version.
- Added missing arguments to the default terminal prompts.

**💧4.1.0:**
- Auto upgrade checker while running `fast sync`.
- Support for migrates old FAST projects to new (`fast migrate this`).
- A few changes in `logs.txt`.

<kbd>Breaking changes:</kdb>
- Availability to define project specific ProGuard version in `fast.yml`.

**🩸4.0.0:** <kbd>Breaking changes:</kdb>
- Bump default min SDK to 14.
- Pass `-m` to keep `activity`, `service`, `receiver`, `provider` classes declared in manifest.
- No need to specify the main component when uses multi-component elements in manifest.
- The build process has been accelerated.
- Dynamic Android compile SDK API level.

**3.8.1:**
- Automatically trigger `-o` command when necessary.
- Accept non-class files from runtime dependencies.
- Pass `.kt` as an argument to accept `.kotlin_builtins`, `.kotlin_module` & `.kotlin_metadata` files.

**3.8.0:**
- No watermark for non-premium user.
- Updated `GradleResolver` to the latest version 4.14.3.
- FAST is now compatible with JDK 26+.

**3.7.2:**
- No watermark for `premium` users & reduced opacity for non-premium users.
- Updated `Maven` resolver to version `2.0.10`.
- Added `androidbuilder` to `.gitignore`.

**3.7.1:**
- Generates PNG for `typeface` & `float` types of designer properties.
- Removed `kodular`, `niotron` & `androidbuilder` from `.gitignore`.

**3.7.0:**
- Manifest entries can now use shorthand class names `(e.g., .MyService)` for classes in the base package.

**3.6.2:**
- Fixed a minor bug in PNG generation for designer properties.

**3.6.1:**
- Some changes have been made to the default ProGuard rules writer to produce smaller extension. `❌`

**3.6.0:**
- Executes blocks generator with the `-b` argument.
- Generates `components.png` for each builder.

**3.5.2:**
- Updated `GradleResolver` to the latest version 4.14.2.
- Removed large watermark from `blocks.png`.
- A few bugs have been fixed.

**3.5.1:**
- A minor bug have been fixed.

**❤️‍🔥3.5.0:**
- Generate all blocks in a single PNG as `blocks.png`.
- Modified naming convention verifier.
- Modified writing model of docs writer.
- Docs writer won't skip deprecated blocks.
- Generates PNGs for designer properties.

**3.4.1:**
- The `GradleResolver` have been updated to v4.14.1
- Log writer writes logs to `$PROJECT/.fast/.locks/logs.txt`.
- Prints `Gradle` version in terminal.
- The `MavenResolver` have been updated to v2.0.9
- Changes in `proguard-rules.pro` writer.

**3.4.0:**
- Updated the naming convention verifier.
- Modified the `logs.txt` writer.

**3.3.2:**
- Prints the extension size in terminal.
- Prints `R8` & `D8` versions in terminal.
- Updated the `logs.txt` writer.

**3.3.1:**
- Fixed dependencies resolve issues for Action workflows.
- Custom repositories are now given first priority.
- A single change in terminal output.

**3.3.0:**
- Performance have been optimized.
- Added support for GitHub Actions workflows.

**3.2.2:**
- Fixed a null pointer issue during debug build.
- Fixed duplicate library resolving for Gradle Resolver.

**3.2.1:**
- Updated `Gradle` resolver to latest version 8.14.
- Optimized project synchronization tasks.
- Updated logs.txt writer.
- Updated bundled-jre to `JRE11`.
- Added support for handle executable permission on bundled-jre.

**3.2.0:**
- Optimized `Gradle` & `Maven` resolver.
- Optimized code suggestion feature for IntelliJ IDEA.
- Corrected a few typo.
- Renamed `$FAST_HOME/lib/tools/d821+.jar` to `$FAST_HOME/lib/tools/d8_11+.jar`.
- Optimized `R8` Shrinker & Dexer.
- Added `android-javadoc.jar` to `provided-deps.xml`.

**3.1.0:**
- Fixed compile-time dependencies resolving issues for `GradleResolver`.
- Added support for using the system's `GRADLE_HOME` if the bundle home is missing.
- Fixed duplicates classes notes while using local JARs.
- Optimized attaching AARs feature.
- Added `collect_rules` attribute in `fast.yml` to use ProGuard rules from runtime AARs.
- The default `icon.png` have been changed by [Joe J. Sanchez](https://github.com/Joejsanz).

**❤️‍🔥3.0.0:** <kbd>Breaking changes:</kdb>
- Added `Gradle` as default resolver to fetch transitive dependencies.
- Added support for [attaching AARs](https://github.com/mit-cml/appinventor-sources/pull/2230).
- Added support for using bundled JDK/JRE <small>(version 8)</small>.
- Updated `MavenResolver` to be compatible with v3.
- Updated `jetifier` to be compatible with v3.
- Added `mavenLocal` repository to Gradle.
- R8 dexer relevant issues have been fixed.
- The default `icon.png` have been changed by [Kiran Madde](https://github.com/TheKStudio25).
- Added multi-threaded downloader to kotlin compiler resolver.
- ProGuard and R8 both can be called together.
- Updated `upgrade.jar` to remove old files during clean install.
- The `MavenResolver` have been updated to v2.0.8.
- Updated `JavaCompiler` to be compatible with JDK24+.
- Added a separate D8 tool for JDK21+.
- Moved `AnnotationProcessors.jar` to `$FAST_HOME/lib/tools/processor.jar` directory.
- Modified the `processor.jar`.
- Moved `android.jar` to `$FAST_HOME/lib/android/android.jar` directory.
- Non-premium users can use basic functions as usual.

**2.8.4:**
- Fixed a bug for the Docs Generator.
- Docs Generator does not add emojis for events, methods, and properties.

**2.8.3:**
- Added support for assets & helper blocks to the docs generator.
- Updated the `AnnotationProcessor` to accepts category for property and generate JSON in order to source by default.

**2.8.2:**
- The `AnnotationProcessor` now skips missing default value exceptions.

**2.8.1:**
- Updated the ProGuard library version to 7.7.0.

**2.8.0:**
- The Maven resolver has been optimized.
- `fast sync` now recommends the minimum SDK if the user is using lower than that.
- The default ProGuard rules have been modified.

**2.7.0:**
- Removed manifest related annotations from runtime jar.
- Uses custom annotation processor to generate JSONs.
- A few changes in default proguard rules.
- Fixed colorized print issue for Termux.

**🔥2.6.0:**
- Added blocks generator for `AppInventor`, `Kodular`, `Niotron` & `AndroidBuilder` by [patryk84a](https://github.com/patryk84a).
- `UTF-8` encoding issues have been resolved.

**2.5.0:**
- AnnotationProcessors now also allows non-YailType parameters. ([ref](https://community.appinventor.mit.edu/t/fast-an-efficient-way-to-build-extensions/129103/337?u=jewel))
- The Maven resolver has been updated to the latest version.

**2.4.2:**
- Added multi-threaded downloading technique on `fast upgrade`.

**2.4.1:**
- Skips writing docs for deprecated events, methods & block properties.
- Fixed some Maven Resolver related bugs.
- Maven Resolver stores compressed JARs.
- Added a `.readme` file.

**🔥2.4.0:**
- Added support for attaching custom [xml](https://github.com/mit-cml/appinventor-sources/pull/3292) to bundle it with APK. <mark>(Will be working from [nb201](https://github.com/mit-cml/appinventor-sources/milestone/46))</mark>
- The Maven resolver has been updated to the latest version.

**2.3.1:**
- The Maven resolver has been updated to the latest version.
- A few minor tweaks to optimize overall performance.

**🔥2.3.0:**
- **FAST** will generates docs for your extension during build if `gen_docs` is enabled in [fast.yml](https://github.com/jewelshkjony/fast-cli/wiki/Config%E2%80%90File%E2%80%90(fast.yml))
- If [component specific](https://github.com/jewelshkjony/fast-cli/wiki/Android%E2%80%90Manifest%E2%80%90File#component-specific) elements are not defined, **FAST** will include manifest elements to the default component.

**2.2.0:**
- Jetifier is now accepts remote dependencies to process.
- Jetifier is now accepts AAR dependencies to process.
- Added `-f` argument to `fast upgrade` command to force a clean install.
- Added `-dir` as global argument to define working directory manually.
- Renamed a few JARs in tools directory.
- A typo is corrected in default README.md

**🔥2.1.0:**
- Added `kotlin_version` attribute in the `fast.yml`.
- kotlin-compiler version can be changed from `fast.yml` dynamically.
- Added support for single line commands for `fast create`.

**2.0.9:**
- Added select update type feature to `upgrade` command.
- Optimized the `upgrade` feature.

**2.0.8:**
- Fixed a reported bug for the Maven resolver. [(Reported here)](https://community.appinventor.mit.edu/t/fast-an-efficient-way-to-build-extensions/129103/190?u=jewel)
- Modified `fast.bat` to work with relative `fast.jar`.

**2.0.7:**
- The exception catcher will print the line number of the source.
- A few debug prints have been changed.
- Optimized the Maven resolver.

**🔥2.0.6:**
- Added `fast upgrade` command to update FAST to latest version.
- Added `fast sync build` command to run sync and build commands simultaneously.
- The Java compiler will generate debugging information if `-d` is passed.
- Fixed some dependency resolution bugs.
- Added missing argument to default prompt.

**2.0.5:**
- The ProGuard library has been updated to version 7.6.1.
- FAST will prioritize the `androidMinSdk` value specified in `fast.yml` or `@DesignerComponent` or `AndroidManifest.xml`, applying the higher value during the build process.
- A few minor bugs have been fixed.

**2.0.4:**
- R8 Shriker has been optimized.
- Changed some comments in `fast.yml`.
- Fixed some minor bugs.
- Migrators have been updated for compatibility with version 2.0.4 and later.

**2.0.3:**
- The processing of AAR has been optimized.
- Updated compiler info.

**2.0.2:**
- Added a few more additional debug info into the `logs.txt`.
- Modified the by default created project.
- Compiling `R.class` from `R.txt` for remote AAR dependencies.
- This [exception](https://community.appinventor.mit.edu/t/fast-an-efficient-way-to-build-extensions/129103/155?u=jewel) is now handled and prints the root cause.

**2.0.1:**
- Fixed dependency resolving for JDK11
- Changes on terminal prints (debug info).
- Downgraded Java version to `1.8` for `testing-support-R-classes.jar` to be compatible with JDK8 and above.
- Added a few more debug info.

**🔥2.0.0:**
- Added Maven dependency resolver.
- The `sync` command has been optimized.
- Removed some duplicate libraries to optimize ProGuard task.
- The `.gitignore` file has been modified.
- Remove comments from default project.

**1.2.8:**
- Modified the default ProGuard rules to keep all required methods and values from helper classes.

**1.2.7:**
- Fixed warnings for kapt-compiler when using JDK11

**🔥 1.2.6:**
- The `.aar` file is now supported to use as dependencies. Run `fast sync` to parse AARs.
- A few minor bugs have been fixed.
- Added some extra prints into the `logs.txt`.
- Changes in IDE classpath.

**1.2.5:**
- The project sync issue has been successfully resolved.
- Enhanced the code recommendations classpath.
- The R8 optimizer has been deprecated and will be removed in the next update.

**1.2.4:**
- Added a new feature that allows to select a language when creating a new project.
- Changes in terminal prints.

**1.2.3:**
- A few compilation bugs have been fixed.
- Optimized the Java compiler.
- Optimized the Kotlin comliler.
- Optimized the desugar process.
- Issue regarding space has been fixed.
- Terminal prints style has changed.

**1.2.2:**
- Resolved an issue impacting the R8 dexer and shrinker.
- Included naming conventions warnings for helper-blocks, arguments of choices, parameters of functions and events.

**1.2.1:**
- FAST will print warnings if naming conventions are not followed.

**1.2.0:**
- Rearranged the blocks in order to the source code.

**1.1.9:**
- Changes in the printing process on the terminal.

**1.1.8:**
- Added R8 tool as an optional optimizer. Use `-s` to run R8.
- Changed proguard-rules.pro to be compatible with R8.
- Simplified proguard-rules.pro.
- A few minor bugs have been fixed.

**1.1.7:**
- The D8 tool is optimized to make it cross-platform compatible.

**1.1.6:**
- FAST now relies on the system's Java compiler.
- The Kotlin compiler has been optimized.
- A few compilation bugs have been fixed.
- The Desugar tool is optimized to fully support JDK8 & 11.
- The D8 tool has been optimized.
- A few modifications to the logging system.

**1.1.5:**
- Fixed DEX bytecode generating stuck issue.
- More debug information will be written to logs.txt

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
