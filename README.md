# RxSwift Beginning Sample

[`RxSwift` 공부하자!](https://medium.com/@jang.wangsu/rxswift-rxswift-%EC%8B%9C%EC%9E%91%ED%95%98%EA%B8%B0-4b5187d07a33) 

> Rx : **R**eactive e**X**tensions
리엑티브 프로그래밍 패러다임이고, 데이터 흐름과 그 데이터의 변경에 따라 전달 되는 것을 중요시 생각하는 패러다임 같습니다. 
>> 관련 어려운 단어! <br />
>> Reactive Programming (RP) <br />
>> Functional + RX = Functional Reactive Programming(FRP) <br />
>> Language-Intergrated Query (LINQ) <br />
>>  왜 이리 공부하기 힘들지?

```
ReactiveX
rxswift 셈플링을 하며 기능 익히기를 위한 레파지토리입니다. 
```

# 셈플
> 개발하면서 테스트 소스를 작성하면서 공부를 하고 있습니다.<br />
> 아직은 미흡하죠 .. 계속 수정중

<table style="width:100%">
  <tr>
	<th>첫 화면 (계속 공부하며 수정 중)</th> 
   <th>11. 구구단을 공부해 볼까요?</th>
  </tr>
  <tr>
  	<td><img width="386" height="680" src="/Image/sampleImage01.png"></img></td>
    <td><img width="386" height="680" src="/Image/sampleImage02.png"></img></td>
  </tr>
</table>


# 장점
<details><summary><code>Rx</code>에겐 특별한 것이 있다.</summary>

- [** ☆ Rx에겐 특별한 것이 있다. ☆ **](https://iamchiwon.github.io/2018/11/29/rxhasmore/) : 특별합니다.!!
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

</details>

# 단점
- 러닝 커브가 높습니다.

# 링크
- FRP의 구현체 : http://reactivex.io/
    - https://github.com/ReactiveX
- 사용/활용법을 알아야죠? : http://www.rxmarbles.com/
    - 필요한 오퍼레이터 들이 있고, 이해하기 좋게 조작해 볼 수 있습니다. 

# 좋은 블러그
<details><summary><code>ClintJang</code></summary>

- ClintJang
	- [RxSwift 시작하기](https://medium.com/@jang.wangsu/rxswift-rxswift-%EC%8B%9C%EC%9E%91%ED%95%98%EA%B8%B0-4b5187d07a33)
	- [RxSwift란? ReactiveX 란?](https://medium.com/@jang.wangsu/rxswift-rxswift%EB%9E%80-reactivex-%EB%9E%80-b21f75e34c10)
	- [RxSwift에서 시퀀스(sequence)란?](https://medium.com/@jang.wangsu/rxswift-rxswift%EC%97%90%EC%84%9C-%EC%8B%9C%ED%80%80%EC%8A%A4-sequence-%EB%9E%80-6d3fd2b14c29)

</details>	

<details><summary><code>마기님</code></summary>

- 마기님
	- [RxSwift에 대해서 알아보기(ReactiveX 에 대해서) - 01](https://magi82.github.io/ios-rxswift-01/)
	- [RxSwift에 대해서 알아보기(Observable에 대해서) - 02](https://magi82.github.io/ios-rxswift-02/)
- [Wade님](https://brunch.co.kr/@tilltue/2) 

</details>

<details><summary><code>민소네님</code></summary>

- 민소네님
	- [RxSwift를 직접 구현해보기 - Event, Disposable, Observer, Observable](http://minsone.github.io/programming/swift4-implement-own-rx-event-disposable-observer-observable)
	- [Closure, Delegate 대신 Observable을 사용해서 응답값을 쉽게 처리하기](http://minsone.github.io/programming/rxswift-observable-of-delegate-callback)

</details>

<details><summary><code>Kanghoon님</code></summary>

- Kanghoon님
	- [#1 — RxSwift 시작하기](https://medium.com/@ggaa96/rxswift-1-rxswift-%EC%9E%85%EB%AC%B8-67bfdbd91969)
	- [#2 — Observable 과 Subject (+ Relay) 알아보기](https://medium.com/@ggaa96/rxswift-2-observable-subject-relay-8fcd9b01913d)
	- [#3 — Operator 에 대해 알아보자](https://medium.com/@ggaa96/rxswift-3-learn-about-operators-99bd1c44a5f9)
- https://pilgwon.github.io/blog/2017/09/21/why-rxswift.html
- http://mobicon.tistory.com/467

</details>

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
> 아직은 적용한 셈플은 없음.

- [RxAlamofire](https://github.com/RxSwiftCommunity/RxAlamofire) : Swift Alamofire를 RxSwift로 감싼 HTTP 네트워킹 라이브러리


# 기본 용어

## Observable
<details><summary>ReactiveX에서 Observable은 Observer를 구독합니다. 그런 다음 Observer는 Observable Sequence에 따라 반응합니다.</summary>

<img src="http://reactivex.io/assets/operators/legend.png" width="400" />

- 데이터 발행자 : 가장 핵심적인 개념이며, 이벤트를 시간의 흐름에 따라 전달하는 전달자 입니다.데이터의 변화가 발행하는 데이터 소스 입니다.
- 비동기적으로 다수의 이벤트를 다루는 방법입니다.
- 옵저버 패턴의 확장이라 생각하면 됩니다.
- `옵저버블`(`데이터 발행자`)은 이벤트를 `옵저버`(`데이터 수신자`)에 전달합니다.
- `Hot Observable`, `Cold Observable`가 있습니다.
	- 콜드 옵저버블 의 개념이 있습니다. : 누군가 자신을 구독해야 Lazy evaluation(느긋한 계산법)이 되서 이벤트를 발생시키는 개념
	- 콜드 옵저버블은 구독(subscribe())하지 않으면 데이터를 발행하지 않습니다.
	- 핫 옵저버블은 구독과 관계없이 데이터를 발행합니다.

</details>

## disposable, disposeBag
<details><summary>해지 시키는 역활을 하죠.</summary>

- subscribe(구독하다)가 반환해 주는 것이 disposable(일회용)
- disposeBag 은 disposable 들을 담아두는 것을 말합니다.
	- 만약 해지 하고 싶은 대상의 disposeBag에 담으면, 그 대상이 메모리 해지 될때(dealloc) 담겨있는 disposable이 해지됩니다.
- 해지가 안되면 메모리 릭이 발생하겠죠.

</details>

## [Subject](http://reactivex.io/documentation/subject.html)

### PublishSubject
<details><summary>구독 이후에 소스 Observable(들)이 배출한 항목들만 옵저버에게 배출합니다.</summary>

<img src="http://reactivex.io/documentation/operators/images/S.PublishSubject.png" width="300" />

- [PublishSubjectViewController.swift](https://github.com/ClintJang/sample-rxswift-beginning/blob/master/JWSRxSwiftBeginningSample/JWSRxSwiftBeginningSample/Samples/PublishSubject/PublishSubjectViewController.swift)

</details>

### BehaviorSubject
<details><summary>옵저버가 BehaviorSubject를 구독하기 시작하면, 옵저버는 소스 Observable이 가장 최근에 발행한 항목(또는 아직 아무 값도 발행되지 않았다면 맨 처음 값이나 기본 값)의 발행을 시작하며 그 이후 소스 Observable(들)에 의해 발행된 항목들을 계속 발행합니다.</summary>

<img src="http://reactivex.io/documentation/operators/images/S.BehaviorSubject.png" width="300" />

- [BehaviorSubjectViewController.swift](https://github.com/ClintJang/sample-rxswift-beginning/blob/master/JWSRxSwiftBeginningSample/JWSRxSwiftBeginningSample/Samples/BehaviorSubject/BehaviorSubjectViewController.swift)

</details>

### ReplaySubject
<details><summary>옵저버가 구독을 시작한 시점과 관계 없이 소스 Observable(들)이 배출한 모든 항목들을 모든 옵저버에게 배출합니다.</summary>

<img src="http://reactivex.io/documentation/operators/images/S.ReplaySubject.png" width="300" />

- [ReplaySubjectViewController.swift](https://github.com/ClintJang/sample-rxswift-beginning/blob/master/JWSRxSwiftBeginningSample/JWSRxSwiftBeginningSample/Samples/ReplaySubject/ReplaySubjectViewController.swift)

</details>

## Relay
> Subject를 Wrapping 하고 있고, dispose 되기 전까지 계속 작동하는 특징이 있죠.

### PublishRelay
- [PublishRelayViewController.swift](https://github.com/ClintJang/sample-rxswift-beginning/blob/master/JWSRxSwiftBeginningSample/JWSRxSwiftBeginningSample/Samples/PublishRelay/PublishRelayViewController.swift)

### BehaviorRelay
- [BehaviorRelayViewController.swift](https://github.com/ClintJang/sample-rxswift-beginning/blob/master/JWSRxSwiftBeginningSample/JWSRxSwiftBeginningSample/Samples/BehaviorReplay/BehaviorRelayViewController.swift)

### ~~Variable~~ : DEPRECATED
> ~~Variable~~ => BehaviorRelay
- [VariableViewController.swift](https://github.com/ClintJang/sample-rxswift-beginning/blob/master/JWSRxSwiftBeginningSample/JWSRxSwiftBeginningSample/Samples/Variable/VariableViewController.swift)

## Operator
### Creating Observables
> https://github.com/ClintJang/sample-rxswift-beginning/blob/master/README.md#creating-observables

#### Create
> http://reactivex.io/documentation/operators/create.html

<img src="http://reactivex.io/documentation/operators/images/create.c.png" width="300" />

- [CreateViewController.swift](https://github.com/ClintJang/sample-rxswift-beginning/blob/master/JWSRxSwiftBeginningSample/JWSRxSwiftBeginningSample/Samples/Create/CreateViewController.swift)

#### Just
> http://reactivex.io/documentation/operators/just.html

<img src="http://reactivex.io/documentation/operators/images/just.c.png" width="300" />

- [JustViewController.swift](https://github.com/ClintJang/sample-rxswift-beginning/blob/master/JWSRxSwiftBeginningSample/JWSRxSwiftBeginningSample/Samples/Just/JustViewController.swift)

	```swift 
	.. (중략) ..
	
    Observable.just(1)
        .subscribe(onNext:{ print($0) },
                   onError: { print($0) },
                   onCompleted: {print("onCompleted")})
        .disposed(by:disposeBag)
    
    Observable.just("안녕하세요.")
        .subscribe(onNext:{ print($0) },
                   onError:{ print($0) },
                   onCompleted:{ print("onCompleted")})
        .disposed(by: disposeBag)
    
    Observable.just([1,2,3,4])
        .subscribe(onNext:{ print($0) },
                   onError:{ print($0) },
                   onCompleted:{ print("onCompleted")})
        .disposed(by: disposeBag)
	
    let service: Observable<Int> = Observable.just(99)
    service.subscribe(onNext:{ print($0) },
                      onError:{ print($0) },
                      onCompleted:{ print("onCompleted")})
        .disposed(by: disposeBag)
        
   .. (중략) ..
	```

#### From
> http://reactivex.io/documentation/operators/from.html

<img src="http://reactivex.io/documentation/operators/images/from.c.png" width="300" />

- [FromViewController.swift](https://github.com/ClintJang/sample-rxswift-beginning/blob/master/JWSRxSwiftBeginningSample/JWSRxSwiftBeginningSample/Samples/From/FromViewController.swift)

	```swift
	.. (중략) ..
	
	Observable.from([1,2,3])
        .subscribe(onNext:{ print($0) },
                   onError: { print($0) },
                   onCompleted: {print("onCompleted")})
        .disposed(by:disposeBag)
    
    Observable.from(["기억","니은","디긋", "ㅎㅎㅎ"])
        .subscribe(onNext:{ print($0) },
                   onError: { print($0) },
                   onCompleted: {print("onCompleted")})
        .disposed(by:disposeBag)
        
	.. (중략) ..
	```

#### Range
> http://reactivex.io/documentation/operators/range.html

<img src="http://reactivex.io/documentation/operators/images/range.c.png" width="300" />

- [RangeViewController.swift](https://github.com/ClintJang/sample-rxswift-beginning/blob/master/JWSRxSwiftBeginningSample/JWSRxSwiftBeginningSample/Samples/Range/RangeViewController.swift)

	```swift
	.. (중략) ..
	
	Observable.range(start: 1, count: 4)
	            .subscribe(onNext: { print("onNext::\($0)") },
	                       onError: { print($0)},
	                       onCompleted: { print("onCompleted") })
	            .disposed(by: disposeBag)
	            
	.. (중략) ..
	```

#### Defer (Deferred)
> http://reactivex.io/documentation/operators/defer.html

<img src="http://reactivex.io/documentation/operators/images/defer.c.png" width="300" />

- [DeferredViewController.swift](https://github.com/ClintJang/sample-rxswift-beginning/blob/master/JWSRxSwiftBeginningSample/JWSRxSwiftBeginningSample/Samples/Defer/DeferredViewController.swift)

	```swift
	.. (중략) ..
	        
	let deferred = Observable<String>.deferred {
	    
	    // just("defer")의 실행을 늦춰보자!!
	    Observable<String>.just("defer").debug()
	}
	    
	// 딜레이 시키고 싶은 시간을 정하자
	let delayTime = 3.0
	print("== \(delayTime) 초 뒤에 subscribe 를 실행 할 것이고")
	print("== 그때!! Observable<String>.just(..).debug() 가 실행 될 것입니다.")
	print("\n\n")
	
	    
	// 3초 뒤에 "Observable<String>.just("defer").debug()" 실행
	DispatchQueue.main.asyncAfter(deadline: .now() + delayTime) { [weak self] in
	    if let strongSelf = self {
	        deferred.subscribe(onNext:{ print($0) })
	            .disposed(by: strongSelf.disposeBag)
	    }
	}
	        
	.. (중략) ..
	```

#### Interval
> http://reactivex.io/documentation/operators/interval.html

<img src="http://reactivex.io/documentation/operators/images/interval.c.png" width="300" />

- [IntervalViewController.swift](https://github.com/ClintJang/sample-rxswift-beginning/blob/master/JWSRxSwiftBeginningSample/JWSRxSwiftBeginningSample/Samples/Interval/IntervalViewController.swift)

	```swift
	.. (중략) ..
	
	print("===============================")
    print("첫번째 Interval 실행")
    print("서브스크라이브 되서, 2초 후 부터 반복")
    print("\n\n")
    
    let intervalFirst = 2 // 2초에 한번씩
    
    Observable<Int>.interval(RxTimeInterval(intervalFirst), scheduler: MainScheduler.instance)
        .subscribe({ print("첫번째:\($0)") })
        .disposed(by: disposeBag)
    
    print("===============================")
    print("두번째 Interval 실행")
    print("서브스크라이브 되서, 3초 후 부터 반복, 5회만 반복")
    print("\n\n")

    let intervalSecond = 3 // 3초에 한번씩
    
    Observable<Int>.interval(RxTimeInterval(intervalSecond), scheduler: MainScheduler.instance)
        .map({ $0 + 1000 }) // 1000, 1001, 1002...
        .take(5) // 5회
        .subscribe({ print("두번째:\($0)") })
        .disposed(by: disposeBag)
    
    print("===============================")
    print("\n\n")
    
	.. (중략) ..
    
	```

#### Timer
> http://reactivex.io/documentation/operators/timer.html

<img src="http://reactivex.io/documentation/operators/images/timer.c.png" width="300" />

- [TimerViewController.swift](https://github.com/ClintJang/sample-rxswift-beginning/blob/master/JWSRxSwiftBeginningSample/JWSRxSwiftBeginningSample/Samples/Timer/TimerViewController.swift)

	```swift
	.. (중략) ..
	print("===============================")
	print("첫번째 Timer 실행")
	print("서브스크라이브 되서, 2초 후 부터 실행")
	print("\n\n")
	    
	let intervalFirst = 2 // 2초에 한번씩
	    
	Observable<Int>.timer(RxTimeInterval(intervalFirst), scheduler: MainScheduler.instance)
	    //            .debug()
	    .subscribe({ print("첫번째:\($0)") })
	    .disposed(by: disposeBag)
	    
	print("===============================")
	print("두번째 Timer 실행")
	print("서브스크라이브 되서, 3초 후 에 실행")
	print("\n\n")
	    
	let intervalSecond = 3 // 3초에 한번씩
	    
	Observable<Int>.timer(RxTimeInterval(intervalSecond), scheduler: MainScheduler.instance)
	    .map({ $0 + 1000 }) // 1000, 1001, 1002...
	    .subscribe({ print("두번째:\($0)") })
	    .disposed(by: disposeBag)
	    
	print("===============================")
	print("\n\n")
	.. (중략) ..
	```

#### Repeat (RepeatElement)
> http://reactivex.io/documentation/operators/repeat.html

.. 아직

### [Transforming Observables](https://github.com/ClintJang/sample-rxswift-beginning/blob/master/README.md#transforming-observables)

#### Scan
> http://reactivex.io/documentation/operators/scan.html

<img src="http://reactivex.io/documentation/operators/images/scan.c.png" width="300" />

- [ScanViewController.swift](https://github.com/ClintJang/sample-rxswift-beginning/blob/master/JWSRxSwiftBeginningSample/JWSRxSwiftBeginningSample/Samples/Scan/ScanViewController.swift)

#### Map
> http://reactivex.io/documentation/operators/map.html

<img src="http://reactivex.io/documentation/operators/images/map.c.png" width="300" />

- [MapViewController.swift](https://github.com/ClintJang/sample-rxswift-beginning/blob/master/JWSRxSwiftBeginningSample/JWSRxSwiftBeginningSample/Samples/Map/MapViewController.swift)

#### FlatMap
> http://reactivex.io/documentation/operators/flatmap.html

<img src="http://reactivex.io/documentation/operators/images/flatMap.c.png" width="300" />

- [FlatMapViewController.swift](https://github.com/ClintJang/sample-rxswift-beginning/blob/master/JWSRxSwiftBeginningSample/JWSRxSwiftBeginningSample/Samples/FlatMap/FlatMapViewController.swift)

#### ConcatMap
- [ConcatMapViewController.swift](https://github.com/ClintJang/sample-rxswift-beginning/blob/master/JWSRxSwiftBeginningSample/JWSRxSwiftBeginningSample/Samples/ConcatMap/ConcatMapViewController.swift)

### [Filtering Observables](https://github.com/ClintJang/sample-rxswift-beginning/blob/master/README.md#filtering-observables)

#### Filter
> http://reactivex.io/documentation/operators/filter.html

<img src="http://reactivex.io/documentation/operators/images/filter.c.png" width="300" />

- [FilterViewController.swift](https://github.com/ClintJang/sample-rxswift-beginning/blob/master/JWSRxSwiftBeginningSample/JWSRxSwiftBeginningSample/Samples/Filter/FilterViewController.swift)

### [Combining Observables](https://github.com/ClintJang/sample-rxswift-beginning/blob/master/README.md#combining-observables)

#### Zip
> http://reactivex.io/documentation/operators/zip.html

<img src="http://reactivex.io/documentation/operators/images/zip.c.png" width="300" />

- [ZipViewController.swift](https://github.com/ClintJang/sample-rxswift-beginning/blob/master/JWSRxSwiftBeginningSample/JWSRxSwiftBeginningSample/Samples/Zip/ZipViewController.swift)

#### Of

- [OfViewController.swift](https://github.com/ClintJang/sample-rxswift-beginning/blob/master/JWSRxSwiftBeginningSample/JWSRxSwiftBeginningSample/Samples/Of/OfViewController.swift)

### [Error Handling Operators](https://github.com/ClintJang/sample-rxswift-beginning/blob/master/README.md#error-handling-operators)
> 아직

### [Observable Utility Operators](https://github.com/ClintJang/sample-rxswift-beginning/blob/master/README.md#observable-utility-operators)
> 아직

### [Conditional and Boolean Operators](https://github.com/ClintJang/sample-rxswift-beginning/blob/master/README.md#conditional-and-boolean-operators)
> 아직

### [Mathematical and Aggregate Operators](https://github.com/ClintJang/sample-rxswift-beginning/blob/master/README.md#mathematical-and-aggregate-operators)

#### Concat
> http://reactivex.io/documentation/operators/concat.html

- [ConcatViewController.swift](https://github.com/ClintJang/sample-rxswift-beginning/blob/master/JWSRxSwiftBeginningSample/JWSRxSwiftBeginningSample/Samples/Concat/ConcatViewController.swift)

	```swift
	.. (중략) ..
	let firstSequence: Observable<Int> = Observable.range(start: 1, count: 5)
	let secondSequence: Observable<Int> = Observable.from([6,7,8,9,10])
	let thirdSequence: Observable<Int> = Observable.of(11, 12, 13, 14, 15)
	    
	let _ = Observable.concat(firstSequence, secondSequence, thirdSequence)
	    .subscribe(
	        onNext: { print($0) },
	        onError: { print($0) },
	        onCompleted: { print("onCompleted") }) { print("onDisposed") }
	    .disposed(by: disposeBag)
	.. (중략) ..
	```

.. 계속 공부합시다.
