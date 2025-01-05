## 📝 Release Notes

**2.2.0:**
- Jetifier is now accepts remote dependencies to process.
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
