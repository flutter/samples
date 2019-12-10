// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ko locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ko';

  static m0(value) => "앱의 소스 코드를 보려면 ${value}(으)로 이동하세요.";

  static m1(title) => "${title} 탭 자리표시자";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: '음식점 없음', one: '음식점 1개', other: '음식점 ${totalRestaurants}개')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: '직항', one: '경유 1회', other: '경유 ${numberOfStops}회')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: '이용 가능한 숙박업체 없음', one: '이용 가능한 숙박업체 1개', other: '이용 가능한 숙박업체 ${totalProperties}개')}";

  static m5(value) => "항목 ${value}";

  static m6(error) => "클립보드에 복사할 수 없습니다. {오류}";

  static m7(name, phoneNumber) => "${name}의 전화번호는 ${phoneNumber}입니다.";

  static m8(value) => "\'${value}\'을(를) 선택했습니다.";

  static m9(accountName, accountNumber, amount) =>
      "${accountName} 계좌 ${accountNumber}의 잔액은 ${amount}입니다.";

  static m10(amount) => "이번 달에 ATM 수수료로 ${amount}을(를) 사용했습니다.";

  static m11(percent) => "잘하고 계십니다. 입출금계좌 잔고가 지난달에 비해 ${percent} 많습니다.";

  static m12(percent) => "이번 달 쇼핑 예산의 ${percent}를 사용했습니다.";

  static m13(amount) => "이번 주에 음식점에서 ${amount}을(를) 사용했습니다.";

  static m14(count) =>
      "${Intl.plural(count, one: '세금 공제 가능액을 늘릴 수 있습니다. 1개의 미할당 거래에 카테고리를 지정하세요.', other: '세금 공제 가능액을 늘릴 수 있습니다. ${count}개의 미할당 거래에 카테고리를 지정하세요.')}";

  static m15(billName, date, amount) =>
      "${billName} 청구서(${amount}) 결제 기한은 ${date}입니다.";

  static m16(budgetName, amountUsed, amountTotal, amountLeft) =>
      "${budgetName} 예산 ${amountTotal} 중 ${amountUsed} 사용, ${amountLeft} 남음";

  static m17(quantity) =>
      "${Intl.plural(quantity, zero: '항목 없음', one: '항목 1개', other: '항목 ${quantity}개')}";

  static m18(price) => "x ${price}";

  static m19(quantity) => "수량: ${quantity}";

  static m20(quantity) =>
      "${Intl.plural(quantity, zero: '장바구니, 상품 없음', one: '장바구니, 상품 1개', other: '장바구니, 상품 ${quantity}개')}";

  static m21(product) => "{상품} 삭제";

  static m22(value) => "항목 ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo":
            MessageLookupByLibrary.simpleMessage("Flutter 샘플 Github 저장소"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("계정"),
        "bottomNavigationAlarmTab": MessageLookupByLibrary.simpleMessage("알람"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("캘린더"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("카메라"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("댓글"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("버튼"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("만들기"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("자전거 타기"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("엘리베이터"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("벽난로"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("크게"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("보통"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("작게"),
        "chipTurnOnLights": MessageLookupByLibrary.simpleMessage("조명 켜기"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("세탁기"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("황색"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("파란색"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("푸른 회색"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("갈색"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("청록색"),
        "colorsDeepOrange": MessageLookupByLibrary.simpleMessage("짙은 주황색"),
        "colorsDeepPurple": MessageLookupByLibrary.simpleMessage("짙은 자주색"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("초록색"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("회색"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("남색"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("하늘색"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("연한 초록색"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("라임색"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("주황색"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("분홍색"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("보라색"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("빨간색"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("청록색"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("노란색"),
        "craneDescription": MessageLookupByLibrary.simpleMessage("맞춤 여행 앱"),
        "craneEat": MessageLookupByLibrary.simpleMessage("음식점"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("이탈리아 나폴리"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("화덕 오븐 속 피자"),
        "craneEat1": MessageLookupByLibrary.simpleMessage("미국 댈러스"),
        "craneEat10": MessageLookupByLibrary.simpleMessage("포르투갈 리스본"),
        "craneEat10SemanticLabel":
            MessageLookupByLibrary.simpleMessage("거대한 파스트라미 샌드위치를 들고 있는 여성"),
        "craneEat1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("다이너식 스툴이 있는 빈 술집"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("아르헨티나 코르도바"),
        "craneEat2SemanticLabel": MessageLookupByLibrary.simpleMessage("햄버거"),
        "craneEat3": MessageLookupByLibrary.simpleMessage("미국 포틀랜드"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("한국식 타코"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("프랑스 파리"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("초콜릿 디저트"),
        "craneEat5": MessageLookupByLibrary.simpleMessage("대한민국 서울"),
        "craneEat5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("예술적인 레스토랑 좌석"),
        "craneEat6": MessageLookupByLibrary.simpleMessage("미국 시애틀"),
        "craneEat6SemanticLabel": MessageLookupByLibrary.simpleMessage("새우 요리"),
        "craneEat7": MessageLookupByLibrary.simpleMessage("미국 내슈빌"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("베이커리 입구"),
        "craneEat8": MessageLookupByLibrary.simpleMessage("미국 애틀랜타"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("민물 가재 요리"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("스페인 마드리드"),
        "craneEat9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("페이스트리가 있는 카페 카운터"),
        "craneEatRestaurants": m2,
        "craneEatSubhead":
            MessageLookupByLibrary.simpleMessage("목적지별 음식점 살펴보기"),
        "craneFly": MessageLookupByLibrary.simpleMessage("항공편"),
        "craneFly0": MessageLookupByLibrary.simpleMessage("미국 애스펀"),
        "craneFly0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("상록수가 있는 설경 속 샬레"),
        "craneFly1": MessageLookupByLibrary.simpleMessage("미국 빅 서어"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("이집트 카이로"),
        "craneFly10SemanticLabel":
            MessageLookupByLibrary.simpleMessage("해질녘의 알아즈하르 모스크 탑"),
        "craneFly11": MessageLookupByLibrary.simpleMessage("포르투갈 리스본"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("벽돌로 지은 바다의 등대"),
        "craneFly12": MessageLookupByLibrary.simpleMessage("미국 나파"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("야자수가 있는 수영장"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("인도네시아, 발리"),
        "craneFly13SemanticLabel":
            MessageLookupByLibrary.simpleMessage("야자수가 있는 바닷가 수영장"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("들판의 텐트"),
        "craneFly2": MessageLookupByLibrary.simpleMessage("네팔 쿰부 밸리"),
        "craneFly2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("눈이 내린 산 앞에 있는 티베트 기도 깃발"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("페루 마추픽추"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("마추픽추 시타델"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("몰디브 말레"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("수상 방갈로"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("스위스 비츠나우"),
        "craneFly5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("산을 배경으로 한 호숫가 호텔"),
        "craneFly6": MessageLookupByLibrary.simpleMessage("멕시코 멕시코시티"),
        "craneFly6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("팔라시꾸 공연장 항공 사진"),
        "craneFly7": MessageLookupByLibrary.simpleMessage("미국 러시모어산"),
        "craneFly7SemanticLabel": MessageLookupByLibrary.simpleMessage("러시모어산"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("싱가포르"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("수퍼트리 그로브"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("쿠바 아바나"),
        "craneFly9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("파란색 앤티크 자동차에 기대 있는 남자"),
        "craneFlyStops": m3,
        "craneFlySubhead":
            MessageLookupByLibrary.simpleMessage("목적지별 항공편 살펴보기"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("날짜 선택"),
        "craneFormDates": MessageLookupByLibrary.simpleMessage("날짜 선택"),
        "craneFormDestination": MessageLookupByLibrary.simpleMessage("목적지 선택"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("식당"),
        "craneFormLocation": MessageLookupByLibrary.simpleMessage("지역 선택"),
        "craneFormOrigin": MessageLookupByLibrary.simpleMessage("출발지 선택"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("시간 선택"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("여행자 수"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("숙박"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("몰디브 말레"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("수상 방갈로"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage("미국 애스펀"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("이집트 카이로"),
        "craneSleep10SemanticLabel":
            MessageLookupByLibrary.simpleMessage("해질녘의 알아즈하르 모스크 탑"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("대만 타이베이"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("타이베이 101 마천루"),
        "craneSleep1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("상록수가 있는 설경 속 샬레"),
        "craneSleep2": MessageLookupByLibrary.simpleMessage("페루 마추픽추"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("마추픽추 시타델"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("쿠바 아바나"),
        "craneSleep3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("파란색 앤티크 자동차에 기대 있는 남자"),
        "craneSleep4": MessageLookupByLibrary.simpleMessage("스위스 비츠나우"),
        "craneSleep4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("산을 배경으로 한 호숫가 호텔"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage("미국 빅 서어"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("들판의 텐트"),
        "craneSleep6": MessageLookupByLibrary.simpleMessage("미국 나파"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("야자수가 있는 수영장"),
        "craneSleep7": MessageLookupByLibrary.simpleMessage("포르투갈 포르토"),
        "craneSleep7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("히베이라 광장의 알록달록한 아파트"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("멕시코 툴룸"),
        "craneSleep8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("해안가 절벽 위 마야 문명 유적지"),
        "craneSleep9": MessageLookupByLibrary.simpleMessage("포르투갈 리스본"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("벽돌로 지은 바다의 등대"),
        "craneSleepProperties": m4,
        "craneSleepSubhead":
            MessageLookupByLibrary.simpleMessage("목적지별 숙박업체 살펴보기"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("허용"),
        "cupertinoAlertApplePie": MessageLookupByLibrary.simpleMessage("애플 파이"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("취소"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("치즈 케이크"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("초콜릿 브라우니"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "아래 목록에서 가장 좋아하는 디저트를 선택하세요. 선택한 옵션은 지역 내 식당 추천 목록을 맞춤설정하는 데 사용됩니다."),
        "cupertinoAlertDiscard": MessageLookupByLibrary.simpleMessage("삭제"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("허용 안함"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("가장 좋아하는 디저트 선택"),
        "cupertinoAlertLocationDescription":
            MessageLookupByLibrary.simpleMessage(
                "현재 위치가 지도에 표시되며 길안내, 근처 검색결과, 예상 소요 시간 계산에 사용됩니다."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "\'지도\'를 사용하는 동안 앱에서 사용자의 위치에 액세스할 수 있도록 허용할까요?"),
        "cupertinoAlertTiramisu": MessageLookupByLibrary.simpleMessage("티라미수"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("버튼"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("배경 포함"),
        "cupertinoShowAlert": MessageLookupByLibrary.simpleMessage("알림 표시"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "작업 칩은 주 콘텐츠와 관련된 작업을 실행하는 옵션 세트입니다. 작업 칩은 동적이고 맥락에 맞는 방식으로 UI에 표시되어야 합니다."),
        "demoActionChipTitle": MessageLookupByLibrary.simpleMessage("작업 칩"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "알림 대화상자는 사용자에게 인지가 필요한 상황을 알려줍니다. 알림 대화상자에는 제목과 작업 목록이 선택사항으로 포함됩니다."),
        "demoAlertDialogTitle": MessageLookupByLibrary.simpleMessage("알림"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("제목이 있는 알림"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "하단 탐색 메뉴는 화면 하단에 3~5개의 대상을 표시합니다. 각 대상은 아이콘과 텍스트 라벨(선택사항)로 표현됩니다. 하단 탐색 아이콘을 탭하면 아이콘과 연결된 최상위 탐색 대상으로 이동합니다."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("지속적 라벨"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("선택한 라벨"),
        "demoBottomNavigationSubtitle":
            MessageLookupByLibrary.simpleMessage("크로스 페이딩 보기가 있는 하단 탐색 메뉴"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("하단 탐색 메뉴"),
        "demoBottomSheetAddLabel": MessageLookupByLibrary.simpleMessage("추가"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("하단 시트 표시"),
        "demoBottomSheetHeader": MessageLookupByLibrary.simpleMessage("헤더"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "모달 하단 시트는 메뉴나 대화상자의 대안으로, 사용자가 앱의 나머지 부분과 상호작용하지 못하도록 합니다."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("모달 하단 시트"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "지속적 하단 시트는 앱의 주요 콘텐츠를 보완하는 정보를 표시합니다. 또한 사용자가 앱의 다른 부분과 상호작용할 때도 계속해서 표시됩니다."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("지속적 하단 시트"),
        "demoBottomSheetSubtitle":
            MessageLookupByLibrary.simpleMessage("지속적 하단 시트 및 모달 하단 시트"),
        "demoBottomSheetTitle": MessageLookupByLibrary.simpleMessage("하단 시트"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("입력란"),
        "demoButtonSubtitle":
            MessageLookupByLibrary.simpleMessage("평면, 돌출, 윤곽 등"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("버튼"),
        "demoChipSubtitle":
            MessageLookupByLibrary.simpleMessage("입력, 속성, 작업을 나타내는 간단한 요소입니다."),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("칩"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "선택 칩은 세트 중 하나의 선택지를 나타냅니다. 선택 칩은 관련 설명 텍스트 또는 카테고리를 포함합니다."),
        "demoChoiceChipTitle": MessageLookupByLibrary.simpleMessage("선택 칩"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("코드 샘플"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("클립보드에 복사되었습니다."),
        "demoCodeViewerCopyAll": MessageLookupByLibrary.simpleMessage("모두 복사"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "머티리얼 디자인의 색상 팔레트를 나타내는 색상 및 색상 견본 상수입니다."),
        "demoColorsSubtitle":
            MessageLookupByLibrary.simpleMessage("사전 정의된 모든 색상"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("색상"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "작업 시트는 현재 컨텍스트와 관련하여 사용자에게 2개 이상의 선택지를 제시하는 섹션별 스타일 알림입니다. 작업 시트에는 제목, 추가 메시지, 작업 목록이 포함될 수 있습니다."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("작업 시트"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("알림 버튼만"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("버튼이 있는 알림"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "알림 대화상자는 사용자에게 인지가 필요한 상황을 알려줍니다. 알림 대화상자에는 제목, 콘텐츠, 작업 목록이 선택사항으로 포함됩니다. 제목은 콘텐츠 위에 표시되고 작업은 콘텐츠 아래에 표시됩니다."),
        "demoCupertinoAlertTitle": MessageLookupByLibrary.simpleMessage("알림"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("제목이 있는 알림"),
        "demoCupertinoAlertsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS 스타일 알림 대화상자"),
        "demoCupertinoAlertsTitle": MessageLookupByLibrary.simpleMessage("알림"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "iOS 스타일 버튼입니다. 터치하면 페이드인 또는 페이드아웃되는 텍스트 및 아이콘을 담을 수 있습니다. 선택사항으로 배경을 넣을 수 있습니다."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS 스타일 버튼"),
        "demoCupertinoButtonsTitle": MessageLookupByLibrary.simpleMessage("버튼"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "여러 개의 상호 배타적인 옵션 중에 선택할 때 사용됩니다. 세그먼트 컨트롤에서 하나의 옵션을 선택하면 세그먼트 컨트롤에 포함된 다른 옵션은 선택이 해제됩니다."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS 스타일 세그먼트 컨트롤"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("세그먼트 컨트롤"),
        "demoDialogSubtitle":
            MessageLookupByLibrary.simpleMessage("단순함, 알림, 전체 화면"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("대화상자"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("API 도움말"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "필터 칩은 태그 또는 설명을 사용해 콘텐츠를 필터링합니다."),
        "demoFilterChipTitle": MessageLookupByLibrary.simpleMessage("필터 칩"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "평면 버튼은 누르면 잉크가 퍼지는 모양이 나타나지만 버튼이 올라오지는 않습니다. 툴바, 대화상자, 인라인에서 평면 버튼을 패딩과 함께 사용합니다."),
        "demoFlatButtonTitle": MessageLookupByLibrary.simpleMessage("평면 버튼"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "플로팅 작업 버튼은 콘텐츠 위에 마우스를 가져가면 애플리케이션의 기본 작업을 알려주는 원형 아이콘 버튼입니다."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("플로팅 작업 버튼"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "fullscreenDialog 속성은 수신 페이지가 전체 화면 모달 대화상자인지 여부를 지정합니다."),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("전체 화면"),
        "demoFullscreenTooltip": MessageLookupByLibrary.simpleMessage("전체 화면"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("정보"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "입력 칩은 항목(사람, 장소, 사물) 또는 대화 텍스트 등의 복잡한 정보를 간단한 형식으로 나타낸 것입니다."),
        "demoInputChipTitle": MessageLookupByLibrary.simpleMessage("입력 칩"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("다음 URL을 표시할 수 없습니다."),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "목록은 고정된 높이의 단일 행으로 구성되어 있으며 각 행에는 일반적으로 일부 텍스트와 선행 및 후행 들여쓰기 아이콘이 포함됩니다."),
        "demoListsSecondary": MessageLookupByLibrary.simpleMessage("보조 텍스트"),
        "demoListsSubtitle":
            MessageLookupByLibrary.simpleMessage("스크롤 목록 레이아웃"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("목록"),
        "demoOneLineListsTitle": MessageLookupByLibrary.simpleMessage("한 줄"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Tap here to view available options for this demo."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("View options"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("옵션"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "윤곽 버튼은 누르면 불투명해지면서 올라옵니다. 돌출 버튼과 함께 사용하여 대체 작업이나 보조 작업을 나타내는 경우가 많습니다."),
        "demoOutlineButtonTitle": MessageLookupByLibrary.simpleMessage("윤곽 버튼"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "돌출 버튼은 대부분 평면인 레이아웃에 깊이감을 주는 데 사용합니다. 돌출 버튼은 꽉 차 있거나 넓은 공간에서 기능을 강조합니다."),
        "demoRaisedButtonTitle": MessageLookupByLibrary.simpleMessage("돌출 버튼"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "체크박스를 사용하면 집합에서 여러 옵션을 선택할 수 있습니다. 체크박스의 값은 보통 true 또는 false이며, 3상 체크박스의 경우 null 값도 가질 수 있습니다."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("체크박스"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "라디오 버튼을 사용하면 세트에서 한 가지 옵션을 선택할 수 있습니다. 사용자에게 선택 가능한 모든 옵션을 나란히 표시해야 한다고 판단된다면 라디오 버튼을 사용하여 한 가지만 선택할 수 있도록 하세요."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("라디오"),
        "demoSelectionControlsSubtitle":
            MessageLookupByLibrary.simpleMessage("체크박스, 라디오 버튼, 스위치"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "사용/사용 중지 스위치로 설정 옵션 하나의 상태를 전환합니다. 스위치로 제어하는 옵션 및 옵션의 상태는 해당하는 인라인 라벨에 명확하게 나타나야 합니다."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("스위치"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("선택 컨트롤"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "단순 대화상자는 사용자가 택일할 몇 가지 옵션을 제공합니다. 단순 대화상자에는 옵션 위에 표시되는 제목이 선택사항으로 포함됩니다."),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("단순함"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "탭을 사용하면 다양한 화면, 데이터 세트 및 기타 상호작용에서 콘텐츠를 정리할 수 있습니다."),
        "demoTabsSubtitle":
            MessageLookupByLibrary.simpleMessage("개별적으로 스크롤 가능한 뷰가 있는 탭"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("탭"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "사용자는 입력란을 통해 UI에 텍스트를 입력할 수 있습니다. 일반적으로 양식 및 대화상자로 표시됩니다."),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("이메일"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("비밀번호를 입력하세요."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### - 미국 전화번호를 입력하세요."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "제출하기 전에 빨간색으로 표시된 오류를 수정해 주세요."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("비밀번호 숨기기"),
        "demoTextFieldKeepItShort":
            MessageLookupByLibrary.simpleMessage("데모이므로 간결하게 적으세요."),
        "demoTextFieldLifeStory": MessageLookupByLibrary.simpleMessage("전기"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("이름*"),
        "demoTextFieldNameHasPhoneNumber": m7,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("이름을 입력해야 합니다."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("8자를 넘을 수 없습니다."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage("영문자만 입력해 주세요."),
        "demoTextFieldPassword": MessageLookupByLibrary.simpleMessage("비밀번호*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("비밀번호가 일치하지 않습니다."),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("전화번호*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("* 기호는 필수 입력란을 의미합니다."),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("비밀번호 확인*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("급여"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("비밀번호 표시"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("제출"),
        "demoTextFieldSubtitle":
            MessageLookupByLibrary.simpleMessage("편집 가능한 텍스트와 숫자 행 1개"),
        "demoTextFieldTellUsAboutYourself":
            MessageLookupByLibrary.simpleMessage("자기소개(예: 직업, 취미 등)"),
        "demoTextFieldTitle": MessageLookupByLibrary.simpleMessage("입력란"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("이름"),
        "demoTextFieldWhereCanWeReachYou":
            MessageLookupByLibrary.simpleMessage("연락 가능한 전화번호"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("이메일 주소"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "전환 버튼은 관련 옵션을 그룹으로 묶는 데 사용할 수 있습니다. 관련 전환 버튼 그룹임을 강조하기 위해 하나의 그룹은 동일한 컨테이너를 공유해야 합니다."),
        "demoToggleButtonTitle": MessageLookupByLibrary.simpleMessage("전환 버튼"),
        "demoTwoLineListsTitle": MessageLookupByLibrary.simpleMessage("두 줄"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "머티리얼 디자인에서 찾을 수 있는 다양한 타이포그래피 스타일의 정의입니다."),
        "demoTypographySubtitle":
            MessageLookupByLibrary.simpleMessage("사전 정의된 모든 텍스트 스타일"),
        "demoTypographyTitle": MessageLookupByLibrary.simpleMessage("타이포그래피"),
        "dialogAddAccount": MessageLookupByLibrary.simpleMessage("계정 추가"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("동의"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("취소"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("동의 안함"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("삭제"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("초안을 삭제할까요?"),
        "dialogFullscreenDescription":
            MessageLookupByLibrary.simpleMessage("전체 화면 대화상자 데모"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("저장"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("전체 화면 대화상자"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "앱이 Google을 통해 위치 정보를 파악할 수 있도록 설정하세요. 이 경우 실행되는 앱이 없을 때도 익명의 위치 데이터가 Google에 전송됩니다."),
        "dialogLocationTitle":
            MessageLookupByLibrary.simpleMessage("Google의 위치 서비스를 사용하시겠습니까?"),
        "dialogSelectedOption": m8,
        "dialogSetBackup": MessageLookupByLibrary.simpleMessage("백업 계정 설정"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("대화상자 표시"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("참조 스타일 및 미디어"),
        "homeHeaderCategories": MessageLookupByLibrary.simpleMessage("카테고리"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("갤러리"),
        "rallyAccountAmount": m9,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("자동차 구매 저축"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("자유 입출금"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("주택마련 저축"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("휴가 대비 저축"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("계정 소유자"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("연이율"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("작년 지급 이자"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("이율"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("연간 발생 이자"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("다음 명세서"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("합계"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("계정"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("알림"),
        "rallyAlertsMessageATMFees": m10,
        "rallyAlertsMessageCheckingAccount": m11,
        "rallyAlertsMessageHeadsUpShopping": m12,
        "rallyAlertsMessageSpentOnRestaurants": m13,
        "rallyAlertsMessageUnassignedTransactions": m14,
        "rallyBillAmount": m15,
        "rallyBills": MessageLookupByLibrary.simpleMessage("청구서"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("마감일:"),
        "rallyBudgetAmount": m16,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("의류"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("커피숍"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("식료품"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("음식점"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("남음"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("예산"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage("개인 자산관리 앱"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("남음"),
        "rallyLoginButtonLogin": MessageLookupByLibrary.simpleMessage("로그인"),
        "rallyLoginLabelLogin": MessageLookupByLibrary.simpleMessage("로그인"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Rally 로그인"),
        "rallyLoginNoAccount": MessageLookupByLibrary.simpleMessage("계정이 없나요?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("비밀번호"),
        "rallyLoginRememberMe": MessageLookupByLibrary.simpleMessage("로그인 유지"),
        "rallyLoginSignUp": MessageLookupByLibrary.simpleMessage("가입"),
        "rallyLoginUsername": MessageLookupByLibrary.simpleMessage("사용자 이름"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("모두 보기"),
        "rallySeeAllAccounts": MessageLookupByLibrary.simpleMessage("모든 계좌 보기"),
        "rallySeeAllBills": MessageLookupByLibrary.simpleMessage("모든 청구서 보기"),
        "rallySeeAllBudgets": MessageLookupByLibrary.simpleMessage("모든 예산 보기"),
        "rallySettingsFindAtms": MessageLookupByLibrary.simpleMessage("ATM 찾기"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("도움말"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("계정 관리"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("알림"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("페이퍼리스 설정"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("비밀번호 및 Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("개인정보"),
        "rallySettingsSignOut": MessageLookupByLibrary.simpleMessage("로그아웃"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("세무 서류"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("계정"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("청구서"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("예산"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("개요"),
        "rallyTitleSettings": MessageLookupByLibrary.simpleMessage("설정"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("Flutter Gallery 정보"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "Designed by TOASTER in London"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("설정 닫기"),
        "settingsButtonLabel": MessageLookupByLibrary.simpleMessage("설정"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("어둡게"),
        "settingsFeedback": MessageLookupByLibrary.simpleMessage("의견 보내기"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("밝게"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("언어"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("플랫폼 메커니즘"),
        "settingsSlowMotion": MessageLookupByLibrary.simpleMessage("슬로우 모션"),
        "settingsSystemDefault": MessageLookupByLibrary.simpleMessage("시스템"),
        "settingsTextDirection": MessageLookupByLibrary.simpleMessage("텍스트 방향"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("왼쪽에서 오른쪽으로"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("언어 기준"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("오른쪽에서 왼쪽으로"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("텍스트 크기 조정"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("아주 크게"),
        "settingsTextScalingLarge": MessageLookupByLibrary.simpleMessage("크게"),
        "settingsTextScalingNormal": MessageLookupByLibrary.simpleMessage("보통"),
        "settingsTextScalingSmall": MessageLookupByLibrary.simpleMessage("작게"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("테마"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("설정"),
        "shrineCancelButtonCaption": MessageLookupByLibrary.simpleMessage("취소"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("장바구니 비우기"),
        "shrineCartItemCount": m17,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("장바구니"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("배송:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("소계:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("세금:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("합계"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("액세서리"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("전체"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("의류"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("홈"),
        "shrineDescription":
            MessageLookupByLibrary.simpleMessage("패셔너블한 리테일 앱"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("비밀번호"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("사용자 이름"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("로그아웃"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("메뉴"),
        "shrineNextButtonCaption": MessageLookupByLibrary.simpleMessage("다음"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("블루 스톤 머그잔"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("세리즈 스캘롭 티"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("샴브레이 냅킨"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("샴브레이 셔츠"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("클래식 화이트 칼라"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("클레이 스웨터"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("코퍼 와이어 랙"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("파인 라인 티"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("가든 스트랜드"),
        "shrineProductGatsbyHat": MessageLookupByLibrary.simpleMessage("개츠비 햇"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("젠트리 재킷"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("길트 데스크 3개 세트"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("진저 스카프"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("회색 슬라우치 탱크톱"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("허라스 티 세트"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("키친 콰트로"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("네이비 트라우저"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("플라스터 튜닉"),
        "shrineProductPrice": m18,
        "shrineProductQuantity": m19,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("테이블 4개 세트"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("빗물받이"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("라모나 크로스오버"),
        "shrineProductSeaTunic": MessageLookupByLibrary.simpleMessage("시 튜닉"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("시 브리즈 스웨터"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("숄더 롤 티"),
        "shrineProductShrugBag": MessageLookupByLibrary.simpleMessage("슈러그 백"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("수드 세라믹 세트"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("스텔라 선글라스"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("스트러트 귀고리"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("다육식물 화분"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("선셔츠 드레스"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("서프 앤 퍼프 셔츠"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("배가본드 색"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("스포츠 양말"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("월터 헨리(화이트)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("위빙 열쇠고리"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("화이트 핀스트라이프 셔츠"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("휘트니 벨트"),
        "shrineScreenReaderCart": m20,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("장바구니에 추가"),
        "shrineScreenReaderRemoveProductButton": m21,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("장바구니 닫기"),
        "shrineTooltipCloseMenu": MessageLookupByLibrary.simpleMessage("메뉴 닫기"),
        "shrineTooltipOpenMenu": MessageLookupByLibrary.simpleMessage("메뉴 열기"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("항목 삭제"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("검색"),
        "shrineTooltipSettings": MessageLookupByLibrary.simpleMessage("설정"),
        "starterAppDescription":
            MessageLookupByLibrary.simpleMessage("반응형 스타터 레이아웃"),
        "starterAppDrawerItem": m22,
        "starterAppGenericBody": MessageLookupByLibrary.simpleMessage("본문"),
        "starterAppGenericButton": MessageLookupByLibrary.simpleMessage("버튼"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("헤드라인"),
        "starterAppGenericSubtitle": MessageLookupByLibrary.simpleMessage("자막"),
        "starterAppGenericTitle": MessageLookupByLibrary.simpleMessage("제목"),
        "starterAppTitle": MessageLookupByLibrary.simpleMessage("스타터 앱"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("추가"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("즐겨찾기"),
        "starterAppTooltipSearch": MessageLookupByLibrary.simpleMessage("검색"),
        "starterAppTooltipShare": MessageLookupByLibrary.simpleMessage("공유")
      };
}
