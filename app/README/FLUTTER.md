# Fundare App in Flutter

Fundare: Helping Lost Vehicles Find the Way Home. Built using [Flutter.io](https://flutter.io)

## Fundare Dev - Getting Started 

How to Install Flutter (Mac)

1. Install dependencies - [Mac](https://flutter.dev/docs/get-started/install/macos)
   a. Ruby - Pre-installed on Mac
      - Open a terminal program, and run:
         ```sh
         which ruby
         ```
      - If you get a similar output, you're good to go!
         ```sh
         [computer-name:~ username$ ruby -v
          ruby 2.3.7p456 (2018-03-28 revision 63024) [universal.x86_64-darwin18]
         ```
   b. [Homebrew](https://brew.sh/)
      - Open terminal, and run:
      ```sh
      sudo ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null
      ```
      - Ensure you have full admin access to your computer (if you don't know for sure that you do, you probably don't). 
      - To enable/check this, go [here](http://osxdaily.com/2016/11/01/convert-user-to-admin-account-command-line-mac/).
   c. bash 
      - [What is Bash, you ask?](https://www.github.com/bnonni/UNIX) - only the best thing since sliced break ;)
      - Open terminal, and run:
        ```sh
        brew install bash
        ```
   d. [curl](https://curl.haxx.se/)
      - Open terminal, and run:
        ```sh
        brew install curl
        ```
   e. [git 2.x](https://gist.github.com/derhuerst/1b15ff4652a867391f03#file-mac-md)
      - Open terminal, and run:
     ```sh
     brew install git
     ```
   f. [CocoaPods](https://guides.cocoapods.org/using/getting-started.html)
   - Open terminal, and run:
     ```sh
     sudo gem install cocoapods
     ```
   - Then, visit the CocoaPods link above, and follow the instructions closely. 
   h. [Xcode Developer Tools](https://developer.apple.com/xcode/)
   - Open terminal, and run:
     ```sh
     xcode-select --install
     ```
2. Download Flutter SDK 
   - (Click to Download)[https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_v1.7.8+hotfix.3-stable.zip]
3. Open Terminal, and run the following commands:
   ```
   cd ~/
   unzip ~/Downloads/flutter_macos_v1.7.8+hotfix.3-stable.zip
   ```
4. Add Flutter to your PATH:
   ```
   nano ~/.bash_profile
   ```
   - Paste this line into your .bash_profile
      ```
      export PATH="$PATH:~/flutter/bin"
      ```
 5. Ensure you're in the ~/ directory (or wherever you unzipped flutter), and run:
   ```
    flutter precache
   ```
 6. Continue to follow the install instructions from [here](https://flutter.dev/docs/get-started/install/macos#run-flutter-doctor) forward.