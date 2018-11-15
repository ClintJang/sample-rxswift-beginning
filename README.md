# Sample RxSwift Beginning

`RxSwift` 공부하자!
> RX : **R**eactive E**x**tensions
리엑티브 프로그래밍 패러다임이고, 데이터 흐름과 그 데이터의 변경에 따라 전달 되는 것을 중요시 생각하는 패러다임 같습니다. 
>> 관련 어려운 단어! <br />
>> Reactive Programming (RP) <br />
>> Functional + RX = Functional Reactive Programming(FRP) <br />
>> Language-Intergrated Query (LINQ) <br />
>>  왜 공부해야되지?

```
ReactiveX
rxswift 셈플링을 하며 기능 익히기를 위한 레파지토리입니다. 
```
# 셈플
> 개발하면서 테스트 소스를 작성하면서 공부를 하고 있습니다.<br />
> 아직은 미흡하죠 .. 계속 수정중


# 장점
- 높은 가독성이 있습니다.
  - 코드가 기존 방식에 비해 간결해 진다고 합니다.
- 유지보수에 좋습니다.
  - 기획 변동에 유연하다고 합니다.
- 하나의 방식으로 비동기 처리를 합니다.
  - NotificationCenter, Delegate, KVO, GCD .. 등.. Observable로 단일화 됩니다.
  - 쉬운 비동기 코드
- 테스트 하기 좋습니다.
- 쉽게 사용할 수 있는 좋은 아키텍쳐들도 있습니다.
- 회사에 안드로이드, 프론트 모두 RX로 되어있다면, 모두가 RX로 대화할 수 있습니다. (러닝커브가 이해하면.. 높은 만큼 대화에 재미가 있습니다.)

# 단점
- 러닝 커브가 높습니다.

# 좋은 링크
- FRP의 구현체 : http://reactivex.io/
    - https://github.com/ReactiveX
- 사용/활용법을 알아야죠? : http://www.rxmarbles.com/
    - 필요한 오퍼레이터 들이 있고, 이해하기 좋게 조작해 볼 수 있습니다. 

# 좋은 블러그
- 마기님 : https://magi82.github.io/ios-rxswift-01/
- Wade님 : https://brunch.co.kr/@tilltue/2
- tilltue님 : https://brunch.co.kr/@tilltue/6
- 민소네님
	- [[Swift4][ReactiveX]RxSwift를 직접 구현해보기 - Event, Disposable, Observer, Observable](http://minsone.github.io/programming/swift4-implement-own-rx-event-disposable-observer-observable)
	- http://minsone.github.io/programming/rxswift-observable-of-delegate-callback
- https://pilgwon.github.io/blog/2017/09/21/why-rxswift.html
- http://mobicon.tistory.com/467

# 어떻게 시작을 해야될까?
<pre>
어떻게 시작을 어떻게 해야될지 모르겠습니다. 
어떤 라이브러리를 기본으로 가져가서 프로젝트를 생성하며, 
그걸 기반으로 기본 UI를 해보고, 
네트워크 활용을 해보면 기초적인 개념은 익힐 것 것 같아서 .. 
이런 순서로 기본 기능들을 사용해 나가면 되지 않을 까 싶습니다. 
</pre>

# 사용할 라이브러리
## 코어
- [RxSwift](https://github.com/ReactiveX/RxSwift) : 스위프트 버전의 RX
- [RxCocoa](https://github.com/ReactiveX/RxSwift/tree/master/RxCocoa) : 기존 Cocoa 프레임 워크를 Rx로 래핑한 프래임워크

## 네트워크
- [RxAlamofire](https://github.com/RxSwiftCommunity/RxAlamofire) : Swift Alamofire를 RxSwift로 감싼 HTTP 네트워킹 라이브러리


# 기본 용어
## Observable
- 데이터 발행자 : 가장 핵심적인 개념이며, 이벤트를 시간의 흐름에 따라 전달하는 전달자 입니다.데이터의 변화가 발행하는 데이터 소스 입니다.
- 비동기적으로 다수의 이벤트를 다루는 방법입니다.
- 옵저버 패턴의 확장이라 생각하면 됩니다.
- `옵저버블`(`데이터 발행자`)은 이벤트를 `옵저버`(`데이터 수신자`)에 전달합니다.
- `Hot Observable`, `Cold Observable`가 있습니다.
	- 콜드 옵저버블 의 개념이 있습니다. : 누군가 자신을 구독해야 Lazy evaluation(느긋한 계산법)이 되서 이벤트를 발생시키는 개념
	- 콜드 옵저버블은 구독(subscribe())하지 않으면 데이터를 발행하지 않습니다.
	- 핫 옵저버블은 구독과 관계없이 데이터를 발행합니다.

## disposable, disposeBag
- subscribe(구독하다)가 반환해 주는 것이 disposable(일회용)
- disposeBag 은 disposable 들을 담아두는 것을 말합니다.
	- 만약 해지 하고 싶은 대상의 disposeBag에 담으면, 그 대상이 메모리 해지 될때(dealloc) 담겨있는 disposable이 해지됩니다.
- 해지가 안되면 메모리 릭이 발생하겠죠.


# 기본 Operator
> 아직 공부 중입니다. 😭

## Just
## From
## Scan
## Map
## FlatMap

.. 공부합시다.
