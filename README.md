# iOS-사진 액자 앱

## 1. 프로젝트 생성하기

### 📌체크 리스트

- [x] 포토프레임 프로젝트 저장소를 본인 저장소로 folk + 로컬에 clone
- [x] Storyboard에 TabBarController 추가 후 Initial ViewController로 지정
- [x] 첫 번째 Scene에 Custom Class를 ViewController로 지정
	- [x] 자동 생성된 ViewController 클래스의 `viewDidLoad()` 메서드 내에 `print(#file, #line, #function, #column)` 코드를 추가하고 실행

---

### 💻진행 과정

1. [JK의 PhotoFrame Repository](https://github.com/codesquad-members-2022/swift-photoframe) 을 [제 Repository](https://github.com/Hansolkkim/swift-photoframe)로 Fork하여 로컬에 Clone했습니다.

2. 로컬 Repository에  `PhotoFrame` 이라는 프로젝트를 생성했고, Storyboard에 TabBarController를 추가해 **Initial ViewController** 로 지정했습니다.

	<img src="https://user-images.githubusercontent.com/92504186/153788133-2222f23f-9a54-4f9f-a9be-7be9db405eb2.jpg" alt="SS 2022-02-14 AM 11 07 39" width="50%;" />

3. 첫 번째 Scene의 Custom Class를 ViewController로 지정하고, 해당 ViewController의 viewDidLoad() 메서드 내에 아래의 코드를 추가했습니다.

	```swift
	print(#file, #line, #function, #column)
	```

	앱을 실행시키면 아래와 같은 출력이 발생합니다.

	<img src="https://user-images.githubusercontent.com/92504186/153790094-dd0bbae8-60fe-47ef-8862-a409deece644.jpg" alt="SS 2022-02-14 AM 11 30 14" width="90%;" />

---

### 📝추가 학습거리

* UITabBarController와 UITabBar에 대해 학습한다.[[Apple/Document/UIKit/View Contollers]](https://developer.apple.com/documentation/uikit/view_controllers)

	TabBar Interface는 화면 하단에 여러 모드들 중 display하길 원하는 모드를 선택할 수 있는 Tab들을 제공합니다. 

	TabBar Controller의 각 Tab들은 하나의 custom view controller와 연결되어 있습니다. 사용자가 Tab을 선택하면, TabBar Controller는 해당 Tab의 view controller의 root view를 이전 view를 대신해 display합니다. 일반적으로 TabBar Interface는 각 Tab들이 다른 유형의 정보를 표시하거나, 완전히 다른 스타일의 인터페이스를 사용하여 동일한 정보를 표시하는 데 사용됩니다.

	TabBar Controller의 tab bar view에 직접 엑세스해서는 절대 안됩니다. TabBar Controller의 Tab들을 구성하려면 각 Tab에 대한 root view를 제공하는 View Controller를 viewControllers의 프로퍼티에 할당하면 됩니다. viewControllers 프로퍼티에 지정하는 순서에 따라 TabBar에 표시되는 순서가 결정됩니다. 프로퍼티를 설정할 때 `selectedViewController` 프로퍼티에 값을 할당하여 처음 선택될 view controller를 설정해야 합니다.(`selectedIndex` 프로퍼티를 사용하여 배열의 인덱스를 이용해 view controller를 선택할 수도 있습니다.)

	* :question:Tab Bar

		Tab Bar는 앱 화면 하단에 위치하며, 사용자가 Tab들 간의 전환을 빠르게 할 수 있도록 해줍니다. 일반적으로 각 Tab들이 다른 종류의 정보를 보여줄 때, 또는 같은 정보를 완전히 다른 스타일의 인터페이스를 사용해 보여줄 때 사용합니다.

	* :control_knobs:**UITabBarController**

		```swift
		class UITabBarController: UIViewController
		```

		> A container view controllers that manages a multiselection interface, where the selection determines which child view controller to display.
		>
		> 다중 선택 인터페이스를 관리하는 컨테이너 view controller로, selection에 따라 표시될 하위 view controller가 결정된다.

		UITabBarController는 여러 섹션을 가지는 앱에서, 각 섹션을 선택해 해당 view로 이동할 수 있도록 합니다. 사용자가 Tab을 선택하면 TabBar Controller는 해당 Tab의 view controller의 root view를 display합니다.

		<img src="https://user-images.githubusercontent.com/92504186/153793574-7cde856f-5d17-404d-94e7-9d23bdff6767.jpg" alt="SS 2022-02-14 PM 12 07 52" width="70%;" />

		위의 **Figure 2** 를 보면, Tab bar view는 유저가 선택할 수 있는 Tab들을 제공하고, 여러 개의 tab bar item으로 구성됩니다. Tab bar view에서 선택된 item에 해당하는 content view 하나만 앱 화면에 display되게 됩니다.

	* 📋**UITabBar**

		```swift
		class UITabBar: UIView
		```

		> A control that displays one or more buttons in a tab bar for selecting between different subtasks, views, or modes in an app
		>
		> 앱의 다른 하위작업, 뷰 또는 모드 중에서 선택하기 위해 탭 표시줄에 하나 이상의 버튼을 표시하는 컨트롤입니다.

		UITabBar는 여러 섹션을 가지는 앱에서 선택을 할 수 있도록 버튼을 보여주는 역할을 합니다. 사용자의 인터페이스에 맞게 Tab bar의 배경 이미지, 색상 등의 외형을 커스터마이징 할 수 있습니다.

		UITabBar는 하나 이상의 UITabBarItem object를 보여줍니다. 각 Item의 내용은 UITabBarItem object에 저장되어 있으며, 각 Item은 title, image를 가지고 있습니다.

---

---

## 2. IBOutlet 연결하기

### 📌체크 리스트

- [x] First Scene의 `First View` UILabel을 IBOutlet으로 연결
- [x] 연결한 아웃렛 변수에 값을 변경
- [x] 실행한 화면을 캡쳐해서 README.md 파일에 포함

---

### 💻진행 과정

1. First Scene에 새로운 UILabel을 생성하고 해당 UILabel을 ViewController 코드에 IBOutlet으로 연결했습니다.

2. UILabel을 추가한 ViewController의 viewDidLoad() 메서드 내에 아래의 코드를 추가하여, 해당 아웃렛 변수의 글자색, 배경색, 투명도, 글자 크기를 수정했습니다.

	```swift
	// class ViewController
	// override func viewDidLoad()
	self.photoLabel.text = "Sol의 Label"
	self.photoLabel.textColor = .systemBackground
	self.photoLabel.backgroundColor = .systemGray
	self.photoLabel.alpha = 0.5
	self.photoLabel.font = .systemFont(ofSize: 70)
	```

	위의 코드를 추가하고 나서 앱을 실행시켰을 때 아래와 같은 변화를 볼 수 있습니다.

	* 코드 추가 전

		<img src="https://user-images.githubusercontent.com/92504186/153872095-202bf114-24ab-42bd-a50b-b89d2cec2465.jpg" alt="SS 2022-02-14 PM 10 18 50" width="20%;" />

	* 코드 추가 후

		<img src="https://user-images.githubusercontent.com/92504186/153872155-8ee917ca-92c2-4d39-bf0b-d8ad9f64e2a2.jpg" alt="SS 2022-02-14 PM 10 22 13" width="20%;" />



---

### 📝추가 학습거리

* UILabel 클래스 프로퍼티에는 어떤게 있는지 학습해보자!

	1. Accessing the Text Attributes (텍스트 속성 엑세스)

		| 프로퍼티 이름                         | 타입                               | 내용                                                         |
		| ------------------------------------- | ---------------------------------- | ------------------------------------------------------------ |
		| **text**                              | String?                            | Label이 보여주는 Text                                        |
		| **attributedText**                    | NSAttributedString?                | Label이 보여주는 "스타일이 지정된 Text"                      |
		| **font**                              | UIFont!                            | Text의 폰트                                                  |
		| **textColor**                         | UIColor!                           | Text의 색상                                                  |
		| **textAlignment**                     | NSTextAlignment                    | Text 정렬 기술                                               |
		| **lineBreakMode**                     | NSLineBreakMode                    | Label의 Text를 줄 바꿈하고 자르는 기술                       |
		| **lineBreakStrategy**                 | NSParagraphStyle.LineBreakStrategy | 여러 줄의 Text를 배치할 때 시스템이 줄을 끊는 데 사용하는 전략 |
		| **isEnabled**                         | Bool                               | Label이 활성화된 상태에서 해당 Text를 나타낼지 여부를 결정하는 Boolean Value |
		| **enablesMarqueeWhenAncestorFocused** | Bool                               | 포함된 view들 중 하나가 포커싱된 동안 Label이 Text를 스크롤할지 여부를 결정하는 Boolean Value |
		| **showExpansionTextWhenTruncated**    | Bool                               | 잘린 Text 위에 포인터가 있을 경우, Label의 전체 Text가 표시되는지 여부를 결정하는 Boolean Value |

		

	2. Sizing the Label's Text (Label 텍스트 크기 조정)

		| 프로퍼티 이름                            | 타입                 | 내용                                                         |
		| ---------------------------------------- | -------------------- | ------------------------------------------------------------ |
		| **adjustsFontSizeToFitWidth**            | Bool                 | Label이 Label의 경계 rectangle에  title String을 맞추기 위해 텍스트의 글꼴 크기를 줄이는지 여부를 결정하는 Bool값([참고](https://leehonghwa.github.io/blog/adjustsFontSizeToFitWidth/)) |
		| **allowsDefaultTighteningForTruncation** | Bool                 | Label이 자르기 전에 텍스트의 간격을 좁힐지 여부를 결정하는 Bool값 |
		| **baselineAdjustment**                   | UIBaselineAdjustment | Label에 맞게 텍스트를 축소해야 할 때 텍스트의 기준선이 고정된 상태로 유지되는지 여부를 제어하는 옵션 |
		| **minimumScaleFactor**                   | CGFloat              | Label 텍스트의 최소 축척 비율                                |
		| **numberOfLines**                        | Int                  | 텍스트를 렌더링하기 위한 최대 줄 수                          |

		

	3. Managing Highlight Values (하이라이트 값 관리)

		| 프로퍼티 이름            | 타입     | 내용                                                         |
		| ------------------------ | -------- | ------------------------------------------------------------ |
		| **highlightedTextColor** | UIColor? | Lebel 텍스트의 하이라이트 컬러                               |
		| **isHighlighted**        | Bool     | Label이 하이라이트된 텍스트를 나타낼지 여부를 결정하는 Bool값 |

		

	4. Drawing a Shadow (그림자 그리기)

		| 프로퍼티 이름    | 타입     | 내용                          |
		| ---------------- | -------- | ----------------------------- |
		| **shadowColor**  | UIColor? | 텍스트의 그림자 색상          |
		| **shadowOffset** | CGSize   | 텍스트의 그림자 오프셋(point) |

		

	5. Getting the Layout Constraints (레이아웃 제약)

		| 프로퍼티 이름               | 타입    | 내용                                           |
		| --------------------------- | ------- | ---------------------------------------------- |
		| **preferredMaxLayoutWidth** | CGFloat | 여러 줄을 가지는 Label의 기본 최대 너비(point) |

		

	6. Accessing Additional Attributes (추가 속성 엑세스)

		| 프로퍼티 이름                | 타입 | 내용                                                         |
		| ---------------------------- | ---- | ------------------------------------------------------------ |
		| **isUserInteractionEnabled** | Bool | 시스템이 이벤트 queue에서 이 Label에 대한 사용자 이벤트를 무시하고 제거할지 여부를 결정하는 Bool값 |

		

---

---

## 3. IBAction 연결하기

### 📌체크 리스트

- [x] First Scene에 UIButton을 추가하고 IBAction으로 연결
- [x] 연결한 액션에 대한 메서드를 구현
	- [x] 버튼이 눌러지면 `photoLabel` 의 프로퍼티를 변경시켜본다.

---

### 💻진행 과정

1. First Scene에 UIButton을 추가하여 ViewController에 IBAction으로 연결했습니다.

2. IBAction 메서드에서, 버튼이 눌려지면 앞서 만들었던 `photoLabel` 의 프로퍼티가 변경되도록 아래와 같은 코드를 작성했습니다.

	```swift
	// class ViewController
	@IBAction func nextButtonTouched(_ sender: UIButton) {
		self.photoLabel.text = "버튼이 눌러졌어요"
		self.photoLabel.backgroundColor = .systemRed
		self.photoLabel.textColor = .systemYellow
		self.photoLabel.alpha = 1
	    self.photoLabel.font = .systemFont(ofSize: 30)
	}
	```

	<img src="https://user-images.githubusercontent.com/92504186/153981767-e19186e9-19ed-4c62-86e1-2945082af341.gif" alt="SS 2022-02-15 AM 11 34 55" width="30%;" />



---

### 📝추가 학습거리

* IBAction과 IBOutlet의 연결 구조에 대해 이해한 내용 정리

	> IBAction:
	>
	> - 유저의 조작과 메서드를 연결하여, 유저가 View를 조작했을 때 실행할 일을 지정해준다.
	> - View에서 이벤트가 발생했을 때 호출되는 메서드

	> IBOutlet:
	>
	> - 인터페이스 빌더에서 프로그램과의 연결통로
	> - Controller 함수에서 Button 등 View의 Control에 접근하기 위한 변수

	컨트롤러에서 IBOutlet 변수를 이용해 View의 프로퍼티(속성)을 변화시켜줄 수 있고, 유저가 View에 조작을 가했을 때 IBAction 메서드가 컨트롤러에 특정 입력을 주게 됩니다.

* 버튼에 IBAction을 추가할 때 이벤트 종류에는 어떤 것들이 있는지 학습

	| 이벤트 종류(이름)          | 내용                                                         |
	| -------------------------- | ------------------------------------------------------------ |
	| **touchDown**              | 컨트롤을 터치할 때 발생하는 이벤트                           |
	| **touchDownRepeat**        | 컨트롤을 연속 터치할 때 발생하는 이벤트                      |
	| **touchDragInside**        | 컨트롤 범위 내에서 터치한 영역을 드래그할 때 발생하는 이벤트 |
	| **touchDragOutside**       | 터치 영역이 컨트롤의 바깥쪽에서 드래그할 때 발생하는 이벤트  |
	| **touchDragEnter**         | 터치 영역이 컨트롤의 일정 영역 바깥쪽으로 나갔다가 다시 들어왔을 때 발생하는 이벤트 |
	| **touchDragExit**          | 터치 영역이 컨트롤의 일정 영역 바깥쪽으로 나갔을 때 발생하는 이벤트 |
	| **touchUpInside**          | 컨트롤 영역 안쪽에서 터치 후 뗐을 때 발생하는 이벤트         |
	| **touchUpOutside**         | 컨트롤 영역 안쪽에서 터치 후 컨트롤 밖에서 뗐을 때 발생하는 이벤트 |
	| **touchCancel**            | 터치를 취소하는 이벤트(touchUp 이벤트가 발생되지 않음)       |
	| **valueChanged**           | 터치를 드래그 및 다른 방법으로 조작하여 값이 변경되었을 때 발생하는 이벤트 |
	| **primaryActionTriggered** | 버튼이 눌릴 때 발생하는 이벤트(iOS보다는 tvOS에서 사용)      |
	| **editingDidBegin**        | `UITextField` 에서 편집이 시작될 때 호출되는 이벤트          |
	| **editingChanged**         | `UITextField` 에서 값이 바뀔 때마다 호출되는 이벤트          |
	| **editingDidEnd**          | `UITextField` 에서 외부 객체와의 상호작용으로 인해 편집이 종료되었을 때 발생하는 이벤트 |
	| **editingDidEndOnExit**    | `UITextField` 의 편집 상태에서 키보드의 `return` 키를 터치했을 때 발생하는 이벤트 |
	| **allTouchEvents**         | 모든 터치시 발생하는 이벤트                                  |
	| **allEditingEvents**       | `UITextField` 에서 모든 편집 작업시 발생하는 이벤트          |
	| **applicationReserved**    | 각각의 애플리케이션에서 프로그래머가 임의로 지정할 수 있는 이벤트 값의 범위 |
	| **systemReserved**         | 프레임워크 내에서 사용하느 예약된 이벤트 값의 범위           |
	| **allEvents**              | 시스템 이벤트를 포함한 모든 이벤트                           |

* 버튼에 액션을 여러 개 추가할 수 있을까?

	직접 코드를 작성해 가능 여부를 확인해보기 위해 3개의 UIView와 1개의 UIButton을 만들어, 하나의 UIButton을 3개의 IBAction 메서드와 연결했습니다. 각각의 IBAction 메서드는 View의 backgroundColor 프로퍼티를 바꾸도록 했고, 작성한 코드는 아래와 같습니다.

	```swift
	@IBAction func buttonTouched(_ sender: UIButton) {
	    if toggledWhenTouched[0] == false {
	        firstView.backgroundColor = .blue
	    } else {
	        firstView.backgroundColor = .red
	    }
	    toggledWhenTouched[0] = !toggledWhenTouched[0]
	}
	@IBAction func buttonTouched1(_ sender: UIButton) {
	    if toggledWhenTouched[1] == false {
	        secondeView.backgroundColor = .red
	    } else {
	        secondeView.backgroundColor = .blue
	    }
	    toggledWhenTouched[1] = !toggledWhenTouched[1]
	}
	@IBAction func buttonTouched2(_ sender: UIButton) {
	    if toggledWhenTouched[2] == false {
	        thirdView.backgroundColor = .blue
	    } else {
	        thirdView.backgroundColor = .red
	    }
	    toggledWhenTouched[2] = !toggledWhenTouched[2]
	}
	```

	해당 코드를 추가한 후 앱을 동작시키면 아래와 같은 동작을 확인할 수 있었고, 하나의 버튼이 여러 액션을 할 수 있음을 확인할 수 있었습니다.

	<img src="https://user-images.githubusercontent.com/92504186/153898684-3ef9c88a-d68e-46b5-90da-0ca526d12df6.gif" alt="SS 2022-02-15 AM 12 55 19" width="30%;" />

* 여러 버튼을 동시에 하나의 액션에 연결할 수 있을까?

	이번 내용도 직접 코드를 작성해 가능 여부를 확인해보기 위해 3개의 UIButton과 1개의 UIView를 만들었습니다. 그리고 3개의 UIButton은 모두 아래의 코드에 연결하여 버튼이 눌리면 View의 Background Color가 바뀌도록 동작하도록 했습니다.

	```swift
	@IBAction func buttonTouched(_ sender: UIButton) {
	    if toggledWhenTouched == false {
	        firstView.backgroundColor = .blue
	    } else {
	        firstView.backgroundColor = .red
	    }
	    toggledWhenTouched = !toggledWhenTouched
	}
	```

	해당 코드를 추가한 후 앱을 동작시키면 아래와 같은 동작을 확인할 수 있었고, 여러 버튼을 동시에 하나의 액션에 연결할 수 있음을 확인할 수 있었습니다.

	<img src="https://user-images.githubusercontent.com/92504186/153900416-96abfe15-5a67-4b1c-8eb5-dfcb458bb7ad.gif" alt="SS 2022-02-15 AM 01 04 06" width="30%;" />

---

---

## 4. Scene을 Segue로 연결하기

### 📌체크 리스트

- [x] Main.storyboard에서 First Scene 옆에 ViewController를 생성
- [x] 생성한 ViewController와 UIButton 연결
- [x] Sugue 속성을 변경
- [x] 생성한 ViewController에 [다음] UIButton을 추가
- [x] 추가한 UIButton과 새로운 ViewController를 연결

---

### 💻진행 과정

1. First Scene 옆에 ViewController를 생성하여, **다음** 이라는 버튼과 생성한 ViewController를 연결합니다. 이 때 Action Segue는 `Show` 타입을 선택합니다.

	<img src="https://user-images.githubusercontent.com/92504186/153994897-fbec87e7-0911-40ea-bb0a-567d7480751b.jpg" alt="SS 2022-02-15 PM 01 52 00" width="50%;" />

2. 새로 생성했던 ViewController의 background Color를 노란색으로 바꾸어주고, 동작을 확인합니다. 이 때, UIButton으로부터 직접 Segue Object를 생성했기 때문에, 별다른 코드 작성없이 UIButton의 이벤트 조건에 맞는 조작이 가해질 경우에 다음 ViewController로 넘어갑니다. 동작 결과는 다음과 같습니다.

	<img src="https://user-images.githubusercontent.com/92504186/153995184-01125423-ce3d-4a60-9af8-c450c334a4de.gif" alt="SS 2022-02-15 PM 01 54 49" width="30%;" />

3. 추가한 ViewController에 [다음] UIButton을 하나 더 추가하고, 해당 UIButton이 눌리면 다음 ViewController로 넘어가도록 하기 위해 새로운 ViewController를 하나 더 추가했습니다. 새로운 UIButton과 새로운 ViewController를 연결하는 Segue object를 생성하고, 이번의 Active Segue는 `present modally` 타입으로 설정했습니다. 그리고 Segue의 Transition 프로퍼티를 `Flip Horizental` 로 설정했습니다. 동작 결과는 다음과 같습니다.

	<img src="https://user-images.githubusercontent.com/92504186/153996273-64c68d19-ed2e-4076-881c-5f87ed86dd19.gif" alt="SS 2022-02-15 PM 02 06 59" width="30%;" />

---

### :pencil:추가 학습거리

* Segue의 Action에 있는 여러 항목들은 어떤 효과가 있는지 값을 바꿔보며 실행해서 학습한다.

	UIButton과 ViewController를 연결시키면 Transition을 설정할 수 있도록 아래와 같은 프롬프트가 뜹니다.

	<img src="https://user-images.githubusercontent.com/92504186/153997517-51459b34-bf3d-4ae0-8bff-18c2e41c4df1.jpg" alt="SS 2022-02-15 PM 02 19 26" width="20%;" />

	여기서 우선, Non-Adaptive Action Segue의 경우에는 **비적응형 Segue** 라 하여, 적응형 Segue가 지원되지 않는 iOS7 이하에서만 사용하도록 권장한다고 합니다. 따라서 Action을 결정할 경우에는 위의 Action Segue에 있는 적응형 Segue 타입 항목들만 선택하도록 합니다. Action Segue에 있는 Segue 타입은 아래와 같은 동작을 가집니다.([참고 사이트](https://jeonyeohun.tistory.com/176))

	| segue 타입              | 행동                                                         |
	| ----------------------- | ------------------------------------------------------------ |
	| **show(push)**          | 해당하는 메소드는 `show(:sender)`이다. 대부분의 경우는 present modally로 동작하지만, 일부 ViewController는 이 메소드를 오버라이드해서 다른 동작을 취하기도 한다.(ex. navigationController는 새로운 ViewController를 스택에 push한다.) UIKit은 `targetViewController(forAction:sender:)` 메소드를 이용해 다음 ViewController를 띄워줄 Viewcontroller를 찾게 된다. 해당 메소드는 ViewController 계층을 올라가면서 show(:sender)를 오버라이드한 ViewController(navigation, splitView 등등..)를 찾게 되는데, 찾을 경우 반환된 ViewController의 show(:sender)를 이용하고, 찾지 못할 경우 nil을 반환하여 `present(:animated:completion)`로 동작한다. |
	| **showDetail(Replace)** | 해당하는 메소드는 `showDetailViewController(_:sender)`이다. UISplitViewController에서만 사용하는 것으로, SplitView의 두번째 자식 ViewController(detail Controller)를 바꿔준다. 다른 ViewController를 대상으로 하는 경우에는 `present(:animated:completion:)`으로 동작한다. |
	| **Present Modally**     | 정해진(혹은 사용자가 설정한) presentationStyle과 transitionStyler에 따라 Modal하게 ViewController를 띄운다. presentationStyle에 따라 현재 ViewController가 적절하지 않을 경우에는 ViewController 계층을 따라가면서 적절한 ViewController를 발견했을 때 실제로 presentation이 실행된다. (ex. presentation style이 fullscreen인 경우, 화면 전체를 덮는 View를 가진 ViewController만이 present를 실행할 수 있다.) |
	| **Present as Popover**  | 가로 길이가 regular 사이즈인 경우에는 popover로 띄우지만, 가로 길이가 compact 사이즈인 경우는 전체화면 Modal과 같아진다. |
	| **Custom**              | Segue에 클래스를 등록해서 세밀한 컨트롤이 가능할 수 있게끔 한다.(지연시간, 넘기는 스타일, 전환 끝난 후 클로저 실행 등) |

	1. **show**

		목적지 ViewController를 내비게이션 스택에 쌓습니다. Navigation Controller가 설정되어 있을 때는 목적지 ViewController가 오른쪽에서 왼쪽으로 슬라이드되어 나타나고, 새로운 ViewController에는 뒤로가기 버튼이 생깁니다. 내비게이션 컨트롤러가 없을 때는 **Present Modally** 가 적용됩니다.

		UIButton이 있는 ViewController에서 상단 `Editor`->`Embed In`->`Navigation Controller` 항목을 선택하여 Navigation Controller로 설정을 할 수 있었고, `show`  Segue 타입은 아래와 같이 동작했습니다.

		<img src="https://user-images.githubusercontent.com/92504186/153999928-6a42e444-a031-4354-a1da-eb12bbd2bb77.gif" alt="SS 2022-02-15 PM 02 44 19" width="30%;" />

	2. **showDetail**

		해당 타입은 스플릿 뷰에서 사용됩니다. 두 개의 화면으로 나누어진 스플릿 뷰에서 보조 뷰의 컨트롤러를 다른 컨트롤러로 대체합니다. 만약 스플릿 뷰가 아니라면 마찬가지로 **Present Modally** 로 대체됩니다.(iPhone에서는 확인하기 어렵고, iPad에서는 아래와 같이 확인할 수 있습니다.)

		<img src="https://user-images.githubusercontent.com/92504186/154004537-d5c48226-eab7-4626-97ba-b9afb405bfdf.jpg" alt="SS 2022-02-15 PM 03 24 12" width="60%;" />

	3. **Present Modally**

		ViewController를 하단에서 상단으로 끌어올리며 모달을 만들어냅니다. 해당 Segue 타입에서는 Transition 애니메이션을 프로퍼티로 설정할 수 있는데, Cover Vertical, Flip Horizental, Cross Dissolve, Partial Curl의 애니메이션이 있습니다. 각 Transition의 동작은 아래와 같습니다.

		<img src="https://user-images.githubusercontent.com/92504186/154001755-40df315d-3c73-4e6d-a3cd-68449159d947.gif" alt="SS 2022-02-15 PM 02 59  3" width="30%;" />

		또한 해당 Segue 타입에서는 다음에 나올 ViewController의 Frame을 `Presentation` 프로퍼티를 이용해 바꿀 수있는데, 해당 프로퍼티에는 Automatic, Full Screen, Current Context, Page Sheet, Form Sheet이 있습니다. 

		1. Automatic : iOS가 알아서 Page Sheet 또는 Full Screen 형태로 다음 ViewController의 Frame을 결정해주는 항목입니다. 또한 Presentation 프로퍼티의 디폴트값은 Automatic입니다.([참고사이트](https://zeddios.tistory.com/828))
		2. Full Screen: 말 그대로 화면을 꽉 채워주는 Frame을 가집니다.
		3. Current Context: ViewController 계층을 찾아 올라가면서, `definePresentationContext` 프로퍼티가 가장 먼저 true로 되어있는 ViewController을 찾아 present Context로 지정하여, 다음 ViewController가 해당 ViewController의 Frame과 같은 Frame을 갖도록 합니다.
		4. Page Sheet: iPhone에선 Form Sheet과 구분하기 힘들지만, Form Sheet보다 조금 더 큰 형태의 Frame을 가집니다.
		5. Form Sheet: Page Sheet보다 조금 작은 형태의 Frame을 가집니다.

		<img src="https://user-images.githubusercontent.com/92504186/154004131-98ad7775-cd03-48b9-a9c8-cdd71838c360.gif" alt="SS 2022-02-15 PM 03 20 55" width="30%;" />

	4. **Present as Popover**

		iPhone에서는 확인하기 어렵지만, iPad에서는 아래와 같이 popover로 ViewController를 띄워줍니다.

		<img src="https://user-images.githubusercontent.com/92504186/154004917-1deffb98-31ec-4052-a4aa-a798d1682ce1.jpg" alt="SS 2022-02-15 PM 03 26 47" width="50%;" />

	5. **Custom**

		아래와 같은 `UIStoryboardSegue` 클래스를 상속받는 클래스를 선언해줍니다. 해당 클래스는 Segue가 오른쪽에서 왼쪽으로 등장하도록 해주는 클래스입니다.([참고사이트](https://aggapple.tistory.com/95))

		```swift
		class SegueRightToLeft: UIStoryboardSegue {
		    override func perform() {
		        let src = self.source
		        let dst = self.destination
		        
		        src.view.superview?.insertSubview(dst.view, aboveSubview: src.view)
		        dst.view.transform = CGAffineTransform(translationX: src.view.frame.size.width, y: 0)
		        
		        UIView.animate(withDuration: 0.25, delay: 0.0, options: .curveEaseInOut,
		            animations: {
		                dst.view.transform = CGAffineTransform(translationX: 0, y: 0)
		            }, completion: { finished in
		                src.present(dst, animated: false, completion: nil)
		            })
		    }
		}
		```

		그리고  Segue 타입을 Custom으로 설정한 Segue Object의 Attribute Inspector에서 Class를 위에서 생성한 클래스로 설정해줍니다.

		<img src="https://user-images.githubusercontent.com/92504186/154006022-f035f460-6abf-4dd9-ac73-0ca2f3461441.jpg" alt="SS 2022-02-15 PM 03 35 15" width="30%;" />

		이렇게 설정한 Segue는 아래와 같이 동작합니다.

		<img src="https://user-images.githubusercontent.com/92504186/154006319-9ac858db-b8a9-46a4-b611-72d6c90c772b.gif" alt="SS 2022-02-15 PM 03 36 16" width="30%;" />

---

---

## 5. ViewController 연결하기

### 📌체크 리스트

- [x] 프로젝트에 새로운 ViewController 클래스를 추가
- [x] 이전 Step에서 처음 생성했던 ViewController의 Custom Class > Class 항목에 이번에 생성한 생성한 ViewController 클래스를 지정
- [x] [닫기] 버튼을 만들고 IBAction 액션(`closedButtonTouched(:)`)을 연결
- [x] 이전 Step에서 두번째로 생성했던 ViewContoller에 지정할 새로운 ViewController 클래스를 생성
- [x] 해당 ViewController에도 [닫기] 버튼 만들고 액션을 연결하여 화면을 닫는 동작 구현
- [x] 뷰 라이프사이클과 관련된 콜백함수들 내에 `print(#file, #line, #function, #column)` 코드 추가

---

### 💻진행 과정

1. UIViewController를 상속받는 `YellowViewController` 클래스를 생성하여 이전 Step에서 처음 생성했던 ViewController의 class로 지정했습니다.

2. 해당 ViewController에 [닫기] 버튼을 생성하고 YellowViewController 클래스 내에 IBAction 액션 메서드와 연결했습니다.

3. 해당 ViewController의 [닫기] 버튼을 연결시킨 액션 메서드 내에 아래의 코드를 추가하여, [닫기] 버튼이 눌러졌을 때 이전 ViewController로 화면 전환이 이루어지도록 했습니다.

	```swift
	self.dismiss(animated: ture, completion: nil)
	```

4. 그리고 이전 PR에서 JK의 질문을 통해 공부했던, Segue를 이용하지 않고 화면 전환을 하도록 코드를 수정했습니다. 이를 위해 ViewController에 있는 [다음] 버튼을 YellowViewController 내의 IBAction 액션 메서드 `nextButtonTouched(:)` 와 연결했습니다. 그리고 이동하고자하는 ViewController의 Identity > Storyboard ID 항목을 `"blueModal"` 로 설정했고, 아래의 코드를 nextButtonTouched(:) 메서드 내에 작성하여 원하는 동작을 구현했습니다.

	```swift
	let blueModalVC = self.storyboard?.instantiateViewController(withIdentifier: "blueModal")
	blueModalVC?.modalTransitionStyle = .flipHorizontal
	blueModalVC?.modalPresentationStyle = .automatic
	self.present(blueModalVC!, animated: true, completion: nil)
	```

5. 다음 ViewController와 연결할 새로운 ViewController 클래스 BlueViewController 파일을 생성해 연결해주었습니다.

6. 해당 ViewController에도 [닫기] 버튼을 추가해, 버튼을 누르면 이전 ViewController로 화면 전환이 이루어지도록 설정했습니다. 추가한 코드는 3번 진행 과정에서의 코드와 동일합니다. 

	현재까지의 진행 사항으로 인해, 앱은 [다음] 버튼을 이용해 다음 화면으로 화면 전환을, [닫기] 버튼을 이용해 이전 화면으로 화면 전환을 할 수 있습니다.

7. ViewController들의 라이프사이클 변화를 확인하기 위해 모든 ViewController 클래스에 아래의 코드를 추가했습니다.

	```swift
	override func viewDidLoad() {
	    print(#file, #line, #function, #column)
	}
	
	override func viewWillAppear(_ animated: Bool) {
	    print(#file, #line, #function, #column)
	}
	
	override func viewDidAppear(_ animated: Bool) {
	    print(#file, #line, #function, #column)
	}
	
	override func viewWillDisappear(_ animated: Bool) {
	    print(#file, #line, #function, #column)
	}
	
	override func viewDidDisappear(_ animated: Bool) {
	    print(#file, #line, #function, #column)
	}
	```

	위 코드를 추가하고 앱의 화면 전환이 이루어질 때 어떤 변화가 있는지 살펴봤습니다.

	> 1. 먼저 앱이 켜지고 제일 첫 화면이 나오기 전 해당 View가 로드되어  `viewDidLoad()` 메서드가 호출되어 `/Users/hansolkim/MastersCourse iOS 2022/PhotoFrame/PhotoFrame/PhotoFrame/ViewController.swift 20 viewDidLoad() 40` 문구가 커맨드라인에 출력됩니다. 
	>
	> 2. 그 다음 View가 화면에 나오기 직전에 `viewWillAppear(_:)` 메서드가 호출되어 `/Users/hansolkim/MastersCourse iOS 2022/PhotoFrame/PhotoFrame/PhotoFrame/ViewController.swift 24 viewWillAppear(_:) 40` 문구가 출력됩니다. 
	>
	> 3. View가 화면에 나오고 난 뒤에는 `viewDidAppear(_:)` 메서드가 호출됩니다. 그리고 `/Users/hansolkim/MastersCourse iOS 2022/PhotoFrame/PhotoFrame/PhotoFrame/ViewController.swift 28 viewDidAppear(_:) 40` 문구가 출력됩니다.
	>
	> 4. 해당 View의 [다음] 버튼을 누르면, YellowViewController 클래스의 `viewDidLoad()` 메서드가 호출되어 `/Users/hansolkim/MastersCourse iOS 2022/PhotoFrame/PhotoFrame/PhotoFrame/YellowViewController.swift 14 viewDidLoad() 40` 문구가 커맨드라인에 출력됩니다.
	>
	> 5. [다음] 버튼으로 인해 다음 화면이 뜨기 직전에 YellowViewController의  `viewWillAppear(_:)` 메서드가 호출되어 `/Users/hansolkim/MastersCourse iOS 2022/PhotoFrame/PhotoFrame/PhotoFrame/YellowViewController.swift 18 viewWillAppear(_:) 40` 문구가 출력됩니다. 
	>
	> 6. 그리고 화면이 뜨고 나면 YellowViewController의 `ViewDidAppear(_:)` 메서드가 실행되어 다음의 문구가 호출되게 됩니다.
	>
	> 	`/Users/hansolkim/MastersCourse iOS 2022/PhotoFrame/PhotoFrame/PhotoFrame/YellowViewController.swift 22 viewDidAppear(_:) 40`
	>
	> 7. 이제 두번째 화면의 [닫기] 버튼을 누르면, 해당 화면이 사라지기 직전에 YellowViewController 클래스의 `viewWillDisappear(_:)` 메서드가 호출되어 `/Users/hansolkim/MastersCourse iOS 2022/PhotoFrame/PhotoFrame/PhotoFrame/YellowViewController.swift 26 viewWillDisappear(_:) 40` 문구가 커맨드라인에 출력됩니다.
	>
	> 8. 두번째 화면이 사라지고 난 직후에 YellowViewController 클래스의 `viewDidDisappear(_:)` 메서드가 호출되어 다음의 문구가 커맨드라인에 출력되게 됩니다.
	>
	> 	`/Users/hansolkim/MastersCourse iOS 2022/PhotoFrame/PhotoFrame/PhotoFrame/YellowViewController.swift 30 viewDidDisappear(_:) 40`
	>
	> 9. 제일 첫 화면에 해당하는 ViewController의 `viewWillDisappear(_:)` 메서드와  `viewDidDisappear(_:)` 메서드는 어떻게 호출하나 고민하다가 앱을 종료시켰더니 해당 메서드들이 호출되었습니다. 해당 앱이 종료되면서 제일 첫 ViewController가 사라지면 해당 메서드들이 호출되는 것을 알 수 있었습니다

8. 이번 Step을 진행하면서 모든 Secene에 대한 ViewController 클래스를 생성했기 때문에, 모든 Scene에 UILabel을 추가하고, 해당 UILabel text의 일부분의 색깔과 크기, 굵기를 바꿔보는 시도를 해보았습니다.

	먼저, 앱 실행시 맨 처음 나오는 Scene의 UILabel은 이전에 정의했던 photoLabel을 그대로 사용했고, `viewDidLoad()` 메서드 내에 아래와 같은 코드를 작성했습니다.

	```swift
	self.photoLabel.text = "First View"
	self.photoLabel.font = .systemFont(ofSize: 25)
	
	let fontSize = UIFont.boldSystemFont(ofSize: 35)
	let attributedString = NSMutableAttributedString(string: photoLabel.text!)
	attributedString.addAttribute(.font, value: fontSize, range: (photoLabel.text! as NSString).range(of: "First"))
	attributedString.addAttribute(.foregroundColor, value: UIColor.systemBlue, range: (photoLabel.text! as NSString).range(of: "First"))
	photoLabel.attributedText = attributedString
	```

	UILabel의 attributedText 프로퍼티를 이용해 해당 Label Text의 일부분을 수정해주었습니다. 위 코드를 적용시켰을 때 보이는 photoLabel의 모습은 아래와 같았습니다.

	<img src="https://user-images.githubusercontent.com/92504186/154191658-ce871896-d4e9-494b-9cea-95df838b89b1.jpg" alt="SS 2022-02-16 PM 12 38 14" width="20%;" />

	위와 같은 방법으로 다른 Scene에도 UILabel을 추가하여 수정해주었고 아래와 같이 나타낼 수 있었습니다.

	<img src="https://user-images.githubusercontent.com/92504186/154191800-4871e411-8f29-4ff6-baca-5e3f4df40071.jpg" alt="SS 2022-02-16 PM 12 39 36" width="20%;" />

	<img src="https://user-images.githubusercontent.com/92504186/154191804-ec28376c-20a8-45ef-8bab-e20d58960774.jpg" alt="SS 2022-02-16 PM 12 39 39" width="20%;" />

---

## :pencil:추가 학습거리

1. 화면 전환이 이루어지는 사이에 뷰컨트롤러 라이프사이클이 어떻게 변하는지 학습한다.

	결과적으로 뷰컨트롤러는 다음의 라이프사이클을 가집니다.

	<img src="https://user-images.githubusercontent.com/92504186/154198900-2449b287-c200-4676-91bc-b96650533479.jpg" alt="SS 2022-02-16 PM 01 56 23" width="20%;" />

	1. **viewDidLoad**

		> Called after the controller's view is loaded into memory.
		>
		> 컨트롤러의 뷰가 **메모리에 로드되고 난 후**에 호출된다.

		viewDidLoad 메소드는 뷰의 로딩이 완료됐을 때 시스템에 의해 자동으로 호출됩니다

	2. **viewWilAppear**

		> Notifies the view controller that its view is about to be added to a view hierachy.
		>
		> 뷰가 뷰 계층에 **추가될 것**임을 뷰컨트롤러에 알린다.

		viewWillAppear 메서드는 뷰가 나타나기 직전에 호출됩니다. 문장으로만 이해하면 viewDidLoad와 다를 것 없어보이지만, viewDidLoad는 앱이 켜지고 rootView가 로딩될 때 한 번만 실행되고, viewWillAppear는 다른 뷰를 보고 다시 해당 뷰로 돌아왔을 때도 호출됩니다. 따라서 다른 뷰에 갔다가 다시 돌아오는 상황에 처리해주고 싶은 내용을 viewWillAppear 메서드에 코드로 작성하면 됩니다.

	3. **viewDidAppear**

		> Notifies the view controller that its view was added to a view hierarchy.
		>
		> 뷰가 뷰 계층에 **추가되었음**을 뷰컨트롤러에 알린다.

		viewDidAppear는 뷰가 화면에 나타난 직후에 실행되므로, 화면에 적용될 애니메이션을 그려줄 수 있습니다.

	4. **viewWillDisappear**

		> Notifies the view controller that its view is about to be removed from a view hierarchy.
		>
		> 뷰가 뷰 계층에서 **제거될 것임**을 뷰컨트롤러에 알린다.

		viewWillDisappear는 뷰가 사라지기 직전에 호출되는 메서드입니다.

	5. **viewDidDisappear**

		> Notifies the view controller that its view was removed from a view hierarchy.
		>
		> 뷰가 뷰 계층에서 **제거되었음**을 뷰 컨트롤러에 알린다.

	

	위에서 만들었던 앱은 화면 전환을 `show` 타입으로 진행했고, NavigationController가 없기 때문에 `present Modally` 타입으로 화면 전환이 이루어졌습니다. 그리고 Segue `presentation` 프로퍼티 또한 default 값인 `Automatic` 으로 설정되어 있었기 때문에 `page sheet` 형태로 뷰들이 쌓이게 되었기 때문에, 서로 다른 뷰들의 라이프사이클간 호출 순서를 알기 어려웠습니다. 그래서 다른 뷰들의 라이프사이클간 호출 순서를 확인하기 위해 Segue의 presentation 프로퍼티가 `fullScreen` 이고, 화면 전환이 한 번 일어나는 간단한 앱을 만들어 뷰컨트롤러 사이의 라이프사이클 호출 순서를 알아봤습니다.

	<img src="https://user-images.githubusercontent.com/92504186/154203189-4d7fa14e-0c87-44da-891f-fb29e2ac1cb9.jpg" alt="SS 2022-02-16 PM 02 38 37" width="40%;" />

	그림에 있는 빨간 선을 기준으로 화면 전환이 이루어졌습니다. 처음 뷰에서 다음 뷰로 넘어갈 때, 먼저 두 번째 뷰컨트롤러의 viewDidLoad가 호출되고, 그 다음 첫 번째 뷰컨트롤러의 viewWillDisappear가 호출됩니다. 그리고 그 다음으로 두 번째 뷰컨트롤러의 viewWillAppear, viewDidAppear가 호출되고 최종적으로 첫 번째 뷰컨트롤러의 viewDidDisappear가 호출됨을 알 수 있었습니다. 

	그리고 위의 `2. viewWillAppear` 에서 말씀드린 것처럼, 이미 메모리에 로딩되어있던 rootView인 첫 번째 뷰로 화면 전환이 일어날 경우에는 viewDidLoad가 호출되지 않음을 알 수 있었습니다.



2. 뷰컨트롤러 관련 용어들에 대해 학습한다.

	1. 윈도우와 뷰

		**윈도우**는 iOS에서 디바이스의 스크린을 꽉 채우기 위한 객체로, 항상 UI 표현 계층의 최상위에 위치합니다. 뷰의 일종이지만 직접 컨텐츠를 가지지는 않고 컨텐츠를 가진 뷰 객체를 내부에 배치하여 화면에 출력하는 역할만을 수행합니다. 따라서 화면이 전환되더라도 윈도우 객체는 전화되지 않으며, 내부에 배치된 뷰의 컨텐츠만 바뀝니다.

		**뷰**는 컨텐츠를 담아 해당 컨텐츠를 스크린에 표시하고 사용자의 입력에 반응합니다. 윈도우의 일부를 자신의 영역으로 정의하고, 여기에 필요한 컨텐츠를 채워서 스크린에 나타내는 동시에, 윈도우로부터 전달된 사용자의 입력에 반응하여 그에 맞는 결과를 처리합니다.

		하나 이상의 뷰들이 컨텐츠를 표현하면, 윈도우는 스크린에 이것들을 종합하여 표현합니다. 이같은 방식으로 다양한 형태의 뷰를 화면에 나타내는데, 영역이 겹쳐질 경우 중첩된 형태로 표현되곤 합니다.

		<img src="https://user-images.githubusercontent.com/92504186/154204588-67a6f406-3cc3-49cb-b253-2bd8505cc451.jpg" alt="SS 2022-02-16 PM 02 52 22" width="50%;" />

		위의 그림이 중첩된 인터페이스 구조를 보여줍니다.

		또한, 윈도우와 뷰 사이는 **뷰컨트롤러**를 통해 연결됩니다. 뷰컨트롤러는 뷰의 계층을 관리하여 윈도우에 전달하고, 모바일 디바이스에 감지된 터치 이벤트를 윈도우로부터 전달받아 처리하는 역할을 합니다.

	2. root ViewController

		윈도우 객체는 하나의 뷰컨트롤러와 루트 뷰컨트롤러로 지정하여 참조합니다. 루트 뷰컨트롤러 지정되면 스토리보드에서 화살표를 이용해 해당 뷰컨트롤러가 루트 뷰컨트롤러임을 식별할 수 있습니다.

		<img src="https://user-images.githubusercontent.com/92504186/154204981-5edcc448-c6f9-4705-b21b-cfd23021457f.jpg" alt="SS 2022-02-16 PM 02 54 57" width="30%;" />

		루트 뷰컨트롤러만이 윈도우 객체의 직접적인 관리 대상이 됩니다.

	3. 뷰컨트롤러

		대부분의 뷰컨트롤러들은 각자 하나씩 화면을 담당하여 컨텐츠를 표현하고 뷰를 관리합니다. 이를 Scene이라는 용어로 부릅니다. A,B 두 개의 Scene으로 이루어진 앱이 있다면 A,B 각각의 Scene을 표현할 두 개의 뷰컨트롤러가 필요하다는 의미로 해석할 수 있습니다. Scene을 담당하고 컨텐츠를 표시하는 뷰컨트롤러를 **컨텐츠 뷰컨트롤러**라고 합니다.

		하지만 일부 특별한 뷰컨트롤러는 Scene을 표현하는 역할 대신, 다른 뷰컨트롤러의 연결관계를 관리합니다. 이들은 내부에 컨텐츠를 배치하는 대신, 다른 뷰컨트롤러를 배치하고, 이들을 서로 유기적인 관계로 엮이도록 만듭니다. Navigation Contorller, 혹은 TabBar Controller, Page Controller 등이 대표적인 예입니다. 여러 역할을 수행하는 컨트롤러를 컨텐츠 뷰컨트롤러와 구분하여, **컨테이너 뷰컨트롤러**라고 부릅니다. 컨테이너 뷰컨트롤러의 일부는 다른 뷰컨트롤러의 관리를 위해 고유한 역할을 하는 특정 객체를 화면에 부분적으로 추가하는데, Navigation Bar나 Tab Bar 등이 이런 목적으로 추가된 객체들입니다.

	4. 뷰 계층구조 (View Hierarchy)

		뷰컨트롤러 내부는 수많은 뷰들로 이루어지는데, 이들 뷰는 자기 자신을 스크린상에 표시하기도 하지만, 동시에 뷰 객체를 포함하는 컨테이너 역할도 수행합니다. 이를 **View Hierarchy** 라고 합니다. 뷰의 계층구조 상에서 다른 뷰를 포함하는 뷰는 Super View가 되고, Super View에 포함된 뷰는 Sub View가 됩니다. 하나의 Super View는 다른 Super View의 Sub View가 될 수 있으며, Sub View 역시 하위에 포함된 Sub View를 기준으로 Super View가 될 수 있습니다.

		Super View는 Sub View가 레이아웃을 구성할 수 있도록 내부적으로 원점을 잡아주는 좌표 체계를 제공합니다. 뷰의 계층구조 상에서 뷰들은 서로 상대적인 레이아웃을 이룹니다.

		일반적으로 각각의 Scene은 자신만의 뷰 계층구조를 가지고 있으며, 뷰 계층구조 최상위에는 하나의 뷰가 존재합니다. 이 뷰를 Root View 또는 Contents View라고 합니다. 테이블 뷰 컨트롤러에서는 테이블 뷰가 Root View 이며, 컬렉션 뷰 컨트롤러에서는 컬렉션 뷰가 Root View 역할을 담당합니다. 일반 뷰컨트롤러에서는 View 객체가 Root View의 역할을 담당합니다. 

		Root View 내부에는 각자의 크기와 영역, 표현할 컨텐츠를 가진 여러 개의 Sub View가 추가되는데, 일부 뷰는 서로 겹치기도 합니다. Root View는 이런 Sub View들을 모아 하나의 전체 뷰를 구성하고, 뷰컨트롤러를 통해 이를 윈도우에 전달합니다.
		

---

---

## 6. Container ViewController  활용하기

### 📌체크 포인트

- [x] First Scene을 Navigation Controller로 Embed in
- [x] [닫기] 버튼 코드 수정
- [x] 뷰 컨트롤러 콜백 함수들 동작이 이전과 동일한지 확인

---

### 💻진행과정

1. 아래의 사진과 같이, First Scene을 클릭하고 상단의 `Editor` > `Embed In` > `Navigation Controller` 를 선택해 First Scene을 Navigation Controller로 Embed in 시켰습니다.

	<img src="https://user-images.githubusercontent.com/92504186/154415895-59ae7ad6-ef77-4c06-a2c5-f6dfa317f6e1.jpg" alt="SS 2022-02-17 PM 03 08 23" width="40%;" />

2. Second Scene과 같이 Third Scene도 상단에 Navigation Bar가 있는 상태로 나타내기 위해, YellowViewController 클래스에서 [다음] 버튼과 연결돼있는 액션 메서드에 호출된 `present(_:animated:completion:)` 메소드 대신 `show(_:sender:)` 메소드를 사용해 화면 전환이 이루어지도록 했습니다. 수정한 [다음] 버튼과 연결된 액션 메서드 `nextButtonTouched(_:)` 는 다음과 같습니다.

	```swift
	@IBAction func nextButtonTouched(_ sender: UIButton) {
	    let blueViewController = self.storyboard?.instantiateViewController(withIdentifier: "blueViewController")
	    self.show(blueViewContoller!, sender: sender)
	}
	```

3. Navigation Controller에 맞게 동작하도록, YellowViewController와 BlueViewController 클래스의 [닫기] 버튼과 연결된 액션 메서드내의 `dismiss(animated:completion:)` 메서드를 `popViewController(animated:)` 메서드로 수정했습니다.

	```swift
	@IBAction func closeButtonTouched(_ sender: UIButton) {
	    self.navigationController?.popViewController(animated: true)
	}
	```

4. 콜백 함수들 동작을 확인했을 때 아래와 같이 출력을 관찰할 수 있었습니다.

	<img src="https://user-images.githubusercontent.com/92504186/154422726-4aeb2e70-43b4-4394-b024-1401861b4956.jpg" alt="SS 2022-02-17 PM 03 53 41" width="70%;" />

	그리고, Step5에서 확인했던 뷰컨트롤러 뷰의 라이프사이클 출력은 아래와 같습니다.

	<img src="https://user-images.githubusercontent.com/92504186/154423370-68f56a93-fbe7-44a2-904c-e482d84d1fa0.jpg" alt="SS 2022-02-17 PM 04 06 09" width="70%;" />

	차이점은, 내비게이션 컨트롤러가 있는 경우에는 Second Scene이 나타났을 때 First Scene의 뷰컨트롤러의 뷰가 Disppear된다는 것입니다.

	이는, Step5에서 구현했던 화면 전환은 Present Modally, 즉 모달을 통한 화면 전환이었기 때문에 Second Scene이 나타나더라도 First Scene이 사라지지 않았기 때문에 발생한 차이점입니다. 

	이번 Step에서는 Navigation Controller로 인해 Segue가 show 타입으로 화면전환을 했고, 이로 인해 Second Scene이 나타날 때 First Scene 뷰컨트롤러의 뷰는 Disppear되게 됩니다.

---

### 📝추가 학습거리

1. ViewController Container에는 또 어떤 클래스가 있는지 찾아보고 학습한다.

	Container ViewController에는 Navigation ViewController 이외에 TabBar ViewController, Split ViewController 그리고 Page ViewController가 있습니다.

	1. **TabBar ViewController**

		TabBar ViewController에 대해서는 `Step1` 에서 학습했으므로 Apple 공식 문서의 내용만 기록하겠습니다.

		>  *A container view controllers that manages a multiselection interface, where the selection determines which child view controller to display.*
		>
		> 다중 선택 인터페이스를 관리하는 컨테이너 view controller로, selection에 따라 표시될 하위 view controller가 결정된다.

	2. **Split ViewController**

		```swift
		class UISplitViewController: UIViewController
		```

		> *A container view controller that implements a master-detail interface.*
		>
		> master - detail 인터페이스를 구현하는 컨테이너 뷰컨트롤러

		여기서 master - detail 은 환 화면에서 뷰컨트롤러 2개를 관리할 때 각각의 뷰컨트롤러에 붙여지는 이름입니다.

		> #### UISplitViewController의 DisplayMode
		>
		> 해당 프로퍼티는 master ViewController를 숨기고 표시하는 방법을 표현하는, read-only 프로퍼티입니다.
		>
		> ```swift
		> preferredDisplayMode: UISplitViewController.DisplayMode
		> ```
		>
		> 위의 `preferredDisplayMode` 를 사용하여 displayMode를 변경할 수 있고, 변경할 수 있는 모드는 `automatic`, `primaryHidden`, `allVisible`, `primaryOverlay` 이렇게 4가지 모드가 있습니다.
		>
		> 1. **automatic**
		>
		> 	세로로 앱이 동작할 경우에는 primaryOverlay로, 가로로 앱이 동작할 때는 allVisible, primaryHidden 모드로 동작하는 모드입니다.
		>
		> 2. **primaryHidden**
		>
		> 	Master View를 숨기는 형태의 모드입니다. 
		>
		> 3. **primaryOverlay**
		>
		> 	Master View가 Detail View 위로 덮어쓰기 되어 올라오는 형태입니다. Detail View의 크기가 변하지 않고 위로 올라오게 됩니다.
		>
		> 4. **allVisible**
		>
		> 	Master View가 항상 보이는 형태입니다. primaryOverlay와 다른 점은, Detail View가 옆으로 밀려난다는 점입니다.

		그리고 Split ViewController에서 사용하는 segue 타입에는 `show` 와 `show detail` 이 있습니다. 

		**show**의 경우에는 Master ViewController에서 Detail ViewController가 나타날 때 Detail ViewContrller가 Master ViewController를 밀고 들어옵니다.

		<img src="https://user-images.githubusercontent.com/92504186/154436446-263c835e-7892-4aae-8d2d-b8a1293d5647.gif" alt="xPQju" width="50%;" />

		**show detail** 의 경우에는 보통 상대적으로 더 큰 공간인 오른쪽에 detail ViewController를 보여줍니다.

		<img src="https://user-images.githubusercontent.com/92504186/154437082-16c99712-13c3-481d-b127-21f1235424bd.gif" alt="glwNy" width="50%;" />

		([이미지 출처: stackoverflow(What's the difference between all the Selection Segues?)](https://stackoverflow.com/questions/25966215/whats-the-difference-between-all-the-selection-segues))

	3. **Page ViewController**

		```swift
		class UIPageViewController: UIViewController
		```

		> *A container view controller that manages navigation between pages of content, where each page is managed by a child view controller*
		>
		> 컨텐츠 페이지 간 탐색을 관리하는 컨테이너 뷰컨트롤러로, 각 페이지는 Child 뷰컨트롤러에서 관리한다.

		UIPageViewController를 init하기 위해서는 3개의 파라미터값이 필요합니다.

		```swift
		init(transitionStyle style: UIPageViewController.TransitionStyle,
			 naviegationOrientation: UIPageViewContoller.NavigationOrientation,
			 options: [UIPageViewController.OptionKey : Any]? = nil)
		```

		* **style** : 페이지뷰 전환 스타일로 `scroll` 과 `pageCurl` 모드가 있습니다.
		* **navigationOrientation** : 페이지뷰 탐색 방향으로, `horizental`, `vertical` 두 모드가 있습니다.
		* **options** : 추가적인 옵션으로, 페이지 사이 간격이나 spineLocation 값을 설정할 수 있습니다.(spineLocation은 pageCurl 전환 스타일일 때만 설정 가능합니다.)

		그리고 Page ViewController에서 보여줄 ViewController들을 설정하기 위해서는 아래의 메소드를 사용해야 합니다.

		```swift
		func setViewControllers(_ viewControllers: [UIViewController]?,
		                       direction: UIPageViewController.NavigationDirection,
		                       animated: Bool,
		                       completion: ((Bool) -> Void)? = nil)
		```

		* **viewControllers** : 표시할 뷰컨트롤러 배열
		* **direction** : 탐색 방향 설정

		그리고 페이지를 좌우로 넘겼을 때 작동하는 `dataSource` 도 추가를 해주어야 Page ViewController가 동작하게 됩니다.

		* **DataSource** : Page ViewController의 제스처 기반 탐색을 사용하려면 `setViewControllers()` 메서드와 함께 DataSource를 사용해야 합니다. DataSource를 사용하려면 필수로 작성해야하는 내용이 있습니다.

			```swift
			func pageViewController(UIPageViewController, viewControllerBefore: UIViewController) -> UIViewController?
			
			func pageViewController(UIPageViewController, viewControllerAfter: UIViewController) -> UIViewController?
			```

			첫번째 메소드는 이전 뷰를 설정해주는 메서드이고, 두번째 메서드는 다음 뷰를 설정해주는 메서드입니다. 

2. 내비게이션 컨트롤러가 있을 경우와 없을 경우 화면 전환 동작이 어떻게 다른지, 화면들 포함관계가 있는지 학습한다.

	내비게이션 컨트롤러가 없을 경우 Segue의 타입을 `show` 로 해주면, `present Modally` 로 동작합니다.  반면 내비게이션 컨트롤러가 있을 경우 Segue의 타입은 show로 동작합니다.

	내비게이션 컨트롤러는 뷰를 보여주는 Content ViewController가 아닌, 다른 뷰 컨트롤러들의 계층적 구조를 관리하는 Container ViewController입니다. 따라서 직접 콘텐츠를 담고 화면을 구성하지 않고 다른 뷰컨트롤러들을 포함하고 있습니다. 내비게이션 컨트롤러가 없을 경우에는, 뷰컨트롤러들이 다른 컨테이너 뷰컨트롤러에 포함되어 있지 않다면, 그저 Segue를 통해 화면 전환이 연결된 관계일 뿐 서로 포함되어있지 않습니다.

3. 내비게이션 컨트롤러 관련 메서드가 왜 push / pop 인지 학습한다.

	Navigation Controller는 화면을 나타내주는 뷰컨트롤러들을 **Navigation Stack에 쌓는 형식** 으로 관리합니다. **Stack** 을 사용하기 때문에, 다음 Scene이 나타나면 해당 Scene의 뷰컨트롤러를 **push** 하여 위에 쌓아서 디바이스의 화면에 보여주고, 이전 Scene으로 돌아가는 경우에는 맨 위에 있는 Scene의 뷰컨트롤러를 **pop** 하여 디바이스의 화면에서 제거해줍니다. 



---

---

## 7. 다른 화면 연결하기

### 📌체크 포인트

- [x] 두번째 Scene에 UIImageView를 추가하고, 해당 뷰컨트롤러에 `photoImageView` 아웃렛 변수와 연결
- [x] 두번째 Scene 하단에 [다음] 버튼을 추가하고, 누르면 다음 이미지로 ImageView를 변화시키는 `nextImageButtonTouched(_:)` 액션 메서드와 연결
- [x] UIImageView에 관해 한가지 변주를 줘보기 - ImageView 바깥쪽에 shadow를 주는 변주를 선택

---

### 💻진행 과정

1. 이전 Step에서 만들었던 이전 화면으로 가는 [닫기]버튼, 세번째 Scene, 그와 관련된 ViewController, LifeCycle 관련 콜백함수들을 삭제했습니다.

2. UIImageView를 두번째 Scene에 추가하고, YellowViewController에 `photoImageView` 아웃렛 변수로 연결했습니다. 

3. [다음] 버튼 또한 두번째 Scene에 생성하여, YellowViewController의 `nextButtonTouched(_:)` 액션 메서드와 연결했습니다. 해당 버튼을 누르면 ImageView에 랜덤한 이미지를 보여줘야 하기 때문에, 먼저 주어진 이미지들을 프로젝트에 등록했고, 아래의 메서드를 완성했습니다.

	```swift
	@IBAction func nextButtonTouched(_ sender: UIButton) {
	    let imageName = chooseRandomImageName()
	    self.photoImageView.image = UIImage(named: imageName)
	}
	
	func chooseRandomImageName() -> String {
	    let randomImageName = String((1...22).randomElement() ?? 1) + ".jpg"
	    return randomImageName < 6 ? "0" + randomImageName : randomImageName
	}
	```

4. 이전 PR에서 JK께서 말씀해주셨던, 뷰 속성을 다루는 부분이 길어지면 별도 메서드로 분리해보는 것도 좋다는 내용이 떠올라 UILabel의 Text 속성을 지정해주던 코드를 분리해 `setLabelFont()` 메서드로 만들었습니다. 해당 메서드는 아래와 같이 선언했습니다.

	```swift
	func setLabelFont() {
	    secondViewIndicatorLabel.font = .systemFont(ofSize: 25)
	    let fontSize = UIFont.boldSystemFont(ofSize: 35)
	    let attributedString = NSMutableAttributedString(string: secondViewIndicatorLabel.text!)
	    attributedString.addAttribute(.font, value: fontSize, range: (secondViewIndicatorLabel.text! as NSString).range(of:"Sol"))
	    attributedString.addAttribute(.foregroundColor, value: UIColor.systemRed, range: (secondViewIndicatorLabel.text! as NSString).range(of:"Sol"))
	    secondViewIndicatorLabel.attributedText = attributedString
	}
	```

5. Step 1에서 잠시 공부해봤던 Literal 구문을 이번 ImageView에서 사용해보고 싶어서, 이미지들을 모두 Assets 폴더에 추가한뒤 UIImageView에서 Assets에 있는 이미지들을 image Literal 구문을 이용해 불러오도록 수정해보았습니다. 수정한 코드는 아래와 같습니다.

	```swift
	@IBAction func nextButtonTouched(_ sender: UIButton) {
	    let imageName = chooseRandomImageName()
	    self.photoImageView.image = UIImage(named: imageName)
	}
	
	func chooseRandomImageName() -> String {
	    let randomImageName = String((1...22).randomElement() ?? 1) + ".jpg"
	    return randomImageName < 6 ? "0" + randomImageName : randomImageName
	}
	```

6. UIImageView에 대해 조금 변주를 주기 위해, UIImageView에 그림자를 주도록 했습니다. 

	처음에는 UIImageView layer에 직접 shadow와 관련된 프로퍼티를 수정해줬으나 그림자가 적용되지 않았습니다. 원인을 찾으려고 하면서 UIImageView에 대해 공부를 하다가, UIImageView의 ContentMode 프로퍼티를 `Aspect Fill` 로 설정해놓았고 clipsToBounds 속성도 true로 설정해놨기 때문에 Image의 특정부분이 UIImageView의 크기에 맞게 잘리는데, 그로인해 설정해놓은 layer의 shadow부분까지 모두 잘려나갔기 때문임을 발견했습니다. 

	이를 해결하고자 UIImageView를 새로 선언한 UIView 내에 위치하도록 설정하고, UIView의 layer에 shadow 프로퍼티 수정을 가해줬더니 원하는 모양대로 이미지가 출력됨을 확인할 수 있었습니다. 출력 화면은 다음과 같습니다.

	<img src="https://user-images.githubusercontent.com/92504186/154618593-42df0876-99a4-44e4-b7f9-ee6d1b4ad71c.gif" alt="SS 2022-02-18 PM 01 38 21" width="20%;" />

---

### 📝추가 학습거리

1. UIImageView와 UIImage 클래스는 각각 어떤 역할을 담당하는지 학습한다.

	1. **UIImageView**

		> An object that displays a single image or a sequence of animated images in your interface.
		>
		> 단일 이미지 또는 일련의 애니메이션 이미지를 인터페이스에 표시하는 객체 ([애플 개발자 문서(UIImageView)](https://developer.apple.com/documentation/uikit/uiimageview))

		UIImageView는 UIImage 객체를 사용하여 이미지를 나타내주는 역할을 합니다. 

		UIImageView는 ContentMode 프로퍼티를 이용해 이미지를 표시하는 방법을 결정합니다.

		> 1. UIImageView.ContentMode.AspectFit
		>
		> 	이미지의 비율을 유지하면서, 이미지의 높이든 넓이든 더 큰 값을 현재 ImageView의 사이즈에 맞추고, 더 작은 값은 비율에 맞추어주어 이미지를 나타냅니다.
		>
		> 	<img src="https://user-images.githubusercontent.com/92504186/154619487-99b9d647-6221-4799-a67c-40b36589aab5.jpg" alt="SS 2022-02-18 PM 01 48 43" width="20%;" />
		>
		> 2. UIImageView.ContentMode.AspectFill
		>
		> 	마찬가지로 이미지의 비율을 유지하면서, 이미지의 높이든 넓이든 더 작은 값을 현재 ImageView의 사이즈에 맞추고, 더 큰 값은 비율에 맞추어주어 이미지를 나타냅니다.
		>
		> 	만약 clipsToBounds 속성이 True라면 더 큰 값(넘치는 부분)을 잘라내고, False라면 잘라내지 않고 이미지의 모든 부분을 나타내줍니다.
		>
		> 	1. clipsToBounds == true
		>
		> 		<img src="https://user-images.githubusercontent.com/92504186/154619816-f4530f82-aebc-4ba9-9eb2-6546c948c208.jpg" width="20%;" />
		>
		> 	2. clipsToBounds == false
		>
		> 		<img src="https://user-images.githubusercontent.com/92504186/154619914-d2476b02-2684-41af-b46a-505012635f8b.jpg" alt="SS 2022-02-18 PM 01 53 31" width="20%;" />
		>
		> 3. UIImageView.ContentMode.ScaleToFill
		>
		> 	비율에 상관없이 UIImageView의 사이즈에 이미지를 맞추어 보여줍니다.
		>
		> 	<img src="https://user-images.githubusercontent.com/92504186/154620036-eb74ec56-321c-4a95-b3b0-76b971c8630b.jpg" alt="SS 2022-02-18 PM 01 54 46" width="20%;" />

	2. **UIImage**

		> An object that manages image data in your app.
		>
		> 앱에서 이미지 데이터를 관리하는 객체 [애플 개발자 문서(ImageView)](https://developer.apple.com/documentation/uikit/uiimage)

		Image 객체를 사용해 모든 종류의 이미지 데이터를 나타낼 수 있는 클래스입니다. 

2. 이미지 뷰의 속성은 어떤 것들이 있는지 [애플 개발자 문서](https://developer.apple.com/documentation/uikit/uiimageview/)를 참고한다.

	1. 표시된 이미지에 엑세스할 수 있는 프로퍼티
		- **image**: UIImage? 타입으로, Image View 안에 나타나는 이미지
		- **highlightedImage**: UIImage? 타입으로, Image View 안에 나타나는 강조 표시된 이미지 (해당 UIImageView에 제스처가 발동됐을 때 나타나는 이미지)
	2. 이미지 시퀀스 애니메이션
		* **animationImages**: [UIImage]? 타입으로, 애니메이션에 사용될 UIImage 객체의 배열
		* **hilightedAnimationImages**: [UIImage]? 타입으로, View가 강조 표시될 때 애니메이션에 사용할 UIImage 객체의 배열
		* **animationDuration**: TimeInterval 타입으로, 이미지 애니메이션 한 주기의 시간
		* **animationRepeatCount**: Int 타입으로, 애니메이션을 반복할 횟수를 지정
		* **isAnimating**: Bool 타입으로, 해당 UIImageView에 애니메이션이 동작중인지를 나타내는 Bool 값
	3. Image View 구성
		- **isUserInteractionEnabled**: Bool 타입으로, User Interaction이 무시되고 이벤트 큐에서 제거되는지 여부를 결정하는 Bool 값
		- **isHighlighted**:  Bool 타입으로, 이미지가 강조되는지 여부를 결정하는 Bool 값
		- **tintColor**: UIColor! 타입으로, 뷰 계층에서 템플릿 이미지의 색을 지정하는데 사용되는 색상

---

---



## 8. 사진 앨범 선택하기

### 📌체크 포인트

- [x] 사진 액자에 해당하는 photoFrameImageView 생성하기
- [x] photoFrameImageView와 photoImageView의 z축 관계 설정하기
- [x] [선택] 버튼 생성하여 UIImagePickerController 사용하기

---

### 💻진행 과정

1. 코드 리뷰에서 지적받았던 `#imageLiteral()` 하드 코딩부분을 아래와 같이 수정했습니다.

	```swift
	self.photoImageView.image = UIImage(named: "01")
	```

2. photoFrameImageView 라는, 사진 액자에 해당하는 UIImageView를 생성하여, 기존의 photoImageView 아래에 위치시켰습니다. 

	- [추가] - photoFrameImageView와 photoImageView의 z축 관계를 설정하기 위해 아래의 코드를 추가했습니다.

		```swift
		self.photoImageView.layer.zPosition = 2.0
		self.photoFrameImageView.layer.zPosition = 1.0
		```

		여기서 zPosition에 해당하는 값이 클수록 더 앞으로 나와 view 최상단에 위치해 디바이스의 화면에 보이게 됩니다. 위와 같이 설정했을 때의 화면은 아래와 같습니다.

		<img src="https://user-images.githubusercontent.com/92504186/154636081-e27a99b3-60bf-4fa8-9e5d-867bc0d85d3c.jpg" alt="SS 2022-02-18 PM 04 18 39" width="30%;" />

		만약 위의 zPosition 값을 서로 바꾼다면 아래와 같이, photoFrame 이미지의 모든 부분이 출력되어 photoImage를 조금 가리는 화면을 확인할 수 있습니다.

		<img src="https://user-images.githubusercontent.com/92504186/154636248-d26bf6b4-e416-42eb-9bfd-f8b9409b7c60.jpg" alt="SS 2022-02-18 PM 04 20 01" width="30%;" />

3. 두번째 Scene의 [다음] 버튼 아래에 [선택] 버튼을 추가하여 해당 뷰컨트롤러 클래스의 `selectButtonTouched(_:)` 액션 메서드와 연결했습니다. 해당 버튼은 카메라롤의 앨범을 불러와 앨범 내의 사진을 photoImageView.image에 넣어주는 버튼입니다.

4. 카메라롤의 앨범에 접근하기 위해서 **info.plist** 에 아래의 내용을 추가했습니다.

	<img src="https://user-images.githubusercontent.com/92504186/154636756-9b1dc0c3-1cb6-4266-b72a-7ea3e65008d8.jpg" alt="SS 2022-02-18 PM 04 23 29" width="80%;" />

	해당 내용을 추가함으로써 앱에서 처음 앨범에 접근할 때 오른쪽의 내용이 뜨면서 사진 앨범 접근에 대한 접근을 요구하게 됩니다.

5. 먼저 카메라롤 앨범에 접근하기 위해서는 `UIImagePickerController` 호출해주어야 합니다. selectButtonTouched(_:) 메서드에서 해당 컨트롤러를 호출하여 프로퍼티들을 아래와 같이 설정해주었습니다.

	```swift
	@IBAction func selectButtonTouched(_ sender: UIButton) {
	    let imagePicker = UIImagePickerController()
	    imagePicker.sourceType = .photoLibrary
	    imagePicker.allowsEditing = true
	    imagePicker.delegate = self
	    present(imagePicker, animated: true)
	}
	```

	> 위 메소드의 3번쨰 줄의 내용은 UIImagePickerController의 소스 타입을 설정해주는 프로퍼티를 설정해주는 코드입니다. sourceType에는 camera, photoLibrary가 있습니다.
	>
	> 4번째 줄은 앨범에서 가져온 사진을 수정한 이미지를 사용할 수 있도록 설정해주는 코드입니다.
	>
	> 5번째 줄은 사용자와의 상호 작용을 관리하고, 해당 상호 작용의 결과를 관리해주는 역할을 해당 클래스가 위임받게하여, 앨범에 저장된 이미지 데이터를 해당 클래스에서 사용할 수 있도록 하는 코드입니다.
	>
	> 6번째 줄은 해당 버튼을 클릭했을때 photoLibrary가 나타나도록 해주는 설정을 한 코드입니다.

6. 그리고 이제 위의 5번째 줄에서 위임받은 Delegate 권한을 `UIImagePickerControllerDelegate` 프로토콜과 `UINavigationControllerDelegate` 프로토콜을 채택하여 이미지 사용에 대한 메서드를 선언해줍니다.

	```swift
	extension YellowViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
	    
	    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
	        
	        var newImage: UIImage? = nil
	        
	        if let image = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
	            newImage = image
	        } else if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
	            newImage = image
	        }
	        
	        self.photoImageView.image = newImage
	        picker.dismiss(animated: true, completion: nil)
	    }
	    
	}
	```

	> 5번 과정에서 allowsEditing 프로퍼티를 true로 설정해주었기 때문에 사용자는 앨범에서 선택한 사진을 수정할 수 있게 되는데, 이를 7~10번째 줄에서 관리해줍니다.
	>
	> 만약 사용자가 수정된 이미지를 불러오고자 한다면 첫 if-let 구문에 들어가 수정된 이미지가 photoImageView.image에 들어가고,
	>
	> 그냥 원본을 가져온다면 다음 if-let 구문에 들어가 해당 원본 이미지가 photoImageView.image에 들어가게 됩니다.
	>
	> 그리고 14번째 줄에서, 해당 작업들이 끝나면 UIImagePickerController가 종료되어 화면에서 사라지게 됩니다.

	위의 과정을 마친 후의 앱 동작 화면은 아래와 같습니다.

	<img src="https://user-images.githubusercontent.com/92504186/154639989-a02ef2dc-b0df-45ee-bd83-c3709b08777b.gif" alt="SS 2022-02-18 PM 04 45 18" style="width:20%;" />

---

### :memo:추가 학습거리

1. UIImagePickerController처럼 이미 만들어놓은 시스템 컨트롤러들에 대해 공부 [(애플 개발자 문서(View Controller))](https://developer.apple.com/documentation/uikit/view_controllers)

	시스템 컨트롤러 중 하나인 UISearchController에 대한 학습 내용을 정리하도록 하겠습니다.

	- **UISearchController**

		> A view controller that manages the display of search results based on interactions with a search bar.
		>
		> search bar와의 상호 작용을 기반으로 검색 결과 표시를 관리하는 뷰컨트롤러

		사용자가 UISerachBar와 상호작용할 때 해당 컨트롤러는 검색 결과 컨트롤러와 협력하여 검색 결과를 표시합니다.

		iOS에서는 검색 컨트롤러의 searchBar를 자신의 뷰 컨트롤러의 인터페이스에 통합하여 앱에 적합한 방식으로 뷰컨트롤러를 표시합니다.

		UISearchBarController를 초기화할 때 매개변수로 `searchResultsController:` 로 검색 결과를 표시하기 위한 두 번째 뷰컨트롤러를 지정할 수 있습니다.

		사용자가 search bar와 상호작용할 때 컨트롤러는 지정한 결과와 함께 결과 컨트롤러를 자동으로 표시해줍니다.

		<img src="https://user-images.githubusercontent.com/92504186/154653557-0fa04601-bf1c-477d-9a05-b7ebd816fdbd.gif" alt="SS 2022-02-18 PM 06 16 09" width="20%;" />

		SearchBarController를 간단히 구현해본 출력 결과입니다.

2. 델리게이트와 프로토콜 상관 관계에 대해 학습한다.

	델리게이트(delegate)는 책임을 위임한다는 의미로, (iOS에서) 어떤 UI가 해야하는 특정 동작을 delegate받은 객체에서 수행해주는 것을 의미합니다.

	예를 들어, 아래의 문구를 가지고 있는 클래스가 있다고 가정을 해보면, 

	```swift
	// override func viewDidLoad() 
	textField.delegate = self
	```

	`textField` 의 어떤 동작에 대해서는 해당 클래스가 그 책임을 맡는다는 뜻입니다.

	그리고 책임을 맡기 위해서는 특정 프로토콜을 채택해야 합니다. 위의 textField에 대한 delegate를 받기 위해서는 `UITextFieldDelegate` 프로토콜을 채택해야 합니다.

	```swift
	class ViewController: UITextFieldDelegate {
	    @IBOutlet weak var enteredLabel: UILabel!
	    @IBOutlet weak var textField: UITextField!
	    override func viewDidLoad() {
	        super.viewDidLoad()
	        textField.delegate = self
	    }
	    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
	        enteredLabel.text = textField.text
	        return true
	    }
	}
	```

	그리고 delegate와 관련된 프로토콜을 채택하면, 그 프로토콜 내에 정의되어있는 메서드를 사용할 수 있게 됩니다.

	위의 `textFieldShouldReturn(_:)` 메서드는 `UITextFieldDelegate` 프로토콜 내에 정의되어 있는 메서드로, textField에 무언가를 입력하고 Return 버튼이 눌러지면 자동으로 해당 메서드가 호출되어 메서드 내의 코드를 실행시키게 됩니다.

	즉, Delegate 프로토콜을 채택한 객체에서 어떤 객체의 delegate를 받는다고 선언해놓으면, 대상 객체에 어떤 이벤트가 발생하면 해당 프로토콜에 따라 delegate 프로토콜을 채택한 객체에서 무언가를 **대신 해주게** 됩니다.

	위의 예제 코드를 실행한 앱을 아래와 같이 동작하게 됩니다.

	<img src="https://user-images.githubusercontent.com/92504186/154789420-52cf82b8-be3a-4383-8a4d-61c35bb8a550.gif" alt="SS 2022-02-19 PM 03 27 17" width="20%;" />

	
