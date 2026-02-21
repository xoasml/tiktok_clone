# tictok_cleon
**`Flutter version 3.41.2`**  
윈도우로 개발이 불가능 한 것은 아니지만  
ios로 빌드 하려면 맥을 써야함.

## Getting Started

### 1. FVM 설치 및 Flutter 버전 설정
터미널에서 프로젝트 루트 디렉토리로 이동한 후, 다음 명령어들을 실행하세요.  
FVM 설치 (아직 설치하지 않았다면):

#### FVM 저장소 추가(Tap) : 터미널
```bash
brew tap leoafarias/fvm
```
#### FVM 설치 : 터미널
```bash
brew install fvm
```
#### 설치 확인 : 터미널
```bash
fvm --version
```
#### 원하는 버전 설치 : 터미널
```bash
fvm install {version}
```
#### 프로젝트에서 해당 버전 사용 : 터미널
```bash
fvm use {version}
```
프로젝트 루트에 .fvm 폴더가 생성되고,  
앞으로 이 프로젝트에서는 fvm flutter 명령어를 통해 방금 설정한 버전의 Flutter를 사용하게 됩니다.

### 2. IDE 설정 (Android Studio / IntelliJ)
1. Window : `File > Settings > Languages & Frameworks > Flutter`   
   macOS : `Android Studio > Settings... > Languages & Frameworks > Flutter`) 로 이동합니다.
2. Flutter SDK path 를 프로젝트 루트 아래의 .fvm/flutter_sdk 폴더로 변경합니다. (예: /Users/taehoon/Documents/Dev/bbgg/.fvm/flutter_sdk)
3. Apply 와 OK를 클릭합니다.
### 3. .gitignore 파일에 .fvm 폴더 추가
FVM이 관리하는 Flutter SDK는 용량이 크고,  
다른 개발 환경에서는 각자 다시 설치해야 하므로 Git 버전 관리에서 제외  
.gitignore 파일에 .fvm/을 추가