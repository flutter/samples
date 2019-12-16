// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh_TW locale. All the
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
  String get localeName => 'zh_TW';

  static m0(value) => "如要查看這個應用程式的原始碼，請前往 ${value}。";

  static m1(title) => "「${title}」分頁的預留位置";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: '沒有餐廳', one: '1 間餐廳', other: '${totalRestaurants} 間餐廳')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: '直達航班', one: '1 次轉機', other: '${numberOfStops} 次轉機')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: '沒有空房', one: '1 間空房', other: '${totalProperties} 間空房')}";

  static m5(value) => "商品：${value}";

  static m6(error) => "無法複製到剪貼簿：${error}";

  static m7(name, phoneNumber) => "${name}的電話號碼為 ${phoneNumber}";

  static m8(value) => "你已選取：「${value}」";

  static m9(accountName, accountNumber, amount) =>
      "${accountName}帳戶 ${accountNumber} 的存款金額為 ${amount}。";

  static m10(amount) => "你這個月支出了 ${amount} 的自動提款機手續費";

  static m11(percent) => "好極了！你的支票帳戶比上個月高出 ${percent}。";

  static m12(percent) => "請注意，你已經使用本月購物預算的 ${percent}。";

  static m13(amount) => "你這個月在餐廳消費了 ${amount}。";

  static m14(count) =>
      "${Intl.plural(count, one: '提高可減免稅額的機率！請替 1 筆尚未指派類別的交易指派類別。', other: '提高可減免稅額的機率！請替 ${count} 筆尚未指派類別的交易指派類別。')}";

  static m15(billName, date, amount) =>
      "${billName}帳單繳費期限為 ${date}，金額為 ${amount}。";

  static m16(budgetName, amountUsed, amountTotal, amountLeft) =>
      "${budgetName}預算金額為 ${amountTotal}，已使用 ${amountUsed}，還剩下 ${amountLeft}";

  static m17(quantity) =>
      "${Intl.plural(quantity, zero: '沒有項目', one: '1 個項目', other: '${quantity} 個項目')}";

  static m18(price) => "x ${price}";

  static m19(quantity) => "數量：${quantity}";

  static m20(quantity) =>
      "${Intl.plural(quantity, zero: '購物車中沒有項目', one: '購物車中有 1 個項目', other: '購物車中有 ${quantity} 個項目')}";

  static m21(product) => "移除「${product}」";

  static m22(value) => "商品：${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo":
            MessageLookupByLibrary.simpleMessage("Flutter 範本 Github 存放區"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("帳戶"),
        "bottomNavigationAlarmTab": MessageLookupByLibrary.simpleMessage("鬧鐘"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("日曆"),
        "bottomNavigationCameraTab": MessageLookupByLibrary.simpleMessage("相機"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("留言"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("按鈕"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("建立"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("騎自行車"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("電梯"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("壁爐"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("大"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("中"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("小"),
        "chipTurnOnLights": MessageLookupByLibrary.simpleMessage("開燈"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("洗衣機"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("琥珀色"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("藍色"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("藍灰色"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("棕色"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("青色"),
        "colorsDeepOrange": MessageLookupByLibrary.simpleMessage("深橘色"),
        "colorsDeepPurple": MessageLookupByLibrary.simpleMessage("深紫色"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("綠色"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("灰色"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("靛藍色"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("淺藍色"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("淺綠色"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("萊姆綠"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("橘色"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("粉紅色"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("紫色"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("紅色"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("藍綠色"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("黃色"),
        "craneDescription":
            MessageLookupByLibrary.simpleMessage("為你量身打造的旅遊應用程式"),
        "craneEat": MessageLookupByLibrary.simpleMessage("飲食"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("義大利那不勒斯"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("窯烤爐中的披薩"),
        "craneEat1": MessageLookupByLibrary.simpleMessage("美國達拉斯"),
        "craneEat10": MessageLookupByLibrary.simpleMessage("葡萄牙里斯本"),
        "craneEat10SemanticLabel":
            MessageLookupByLibrary.simpleMessage("手握巨大燻牛肉三明治的女人"),
        "craneEat1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("空無一人的吧台與具有簡餐店風格的吧台凳"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("阿根廷哥多華"),
        "craneEat2SemanticLabel": MessageLookupByLibrary.simpleMessage("漢堡"),
        "craneEat3": MessageLookupByLibrary.simpleMessage("美國波特蘭"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("韓式墨西哥夾餅"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("法國巴黎"),
        "craneEat4SemanticLabel": MessageLookupByLibrary.simpleMessage("巧克力甜點"),
        "craneEat5": MessageLookupByLibrary.simpleMessage("南韓首爾"),
        "craneEat5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("藝術餐廳座位區"),
        "craneEat6": MessageLookupByLibrary.simpleMessage("美國西雅圖"),
        "craneEat6SemanticLabel": MessageLookupByLibrary.simpleMessage("蝦子料理"),
        "craneEat7": MessageLookupByLibrary.simpleMessage("美國納士維"),
        "craneEat7SemanticLabel": MessageLookupByLibrary.simpleMessage("麵包店門口"),
        "craneEat8": MessageLookupByLibrary.simpleMessage("美國亞特蘭大"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("淡水螯蝦料理"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("西班牙馬德里"),
        "craneEat9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("擺放甜點的咖啡廳吧台"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage("依目的地瀏覽餐廳"),
        "craneFly": MessageLookupByLibrary.simpleMessage("航班"),
        "craneFly0": MessageLookupByLibrary.simpleMessage("美國阿斯本"),
        "craneFly0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("雪中的小木屋和常綠植物"),
        "craneFly1": MessageLookupByLibrary.simpleMessage("美國碧蘇爾"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("埃及開羅"),
        "craneFly10SemanticLabel":
            MessageLookupByLibrary.simpleMessage("夕陽下的愛智哈爾清真寺叫拜塔"),
        "craneFly11": MessageLookupByLibrary.simpleMessage("葡萄牙里斯本"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("海邊的磚造燈塔"),
        "craneFly12": MessageLookupByLibrary.simpleMessage("美國納帕"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("周圍有棕櫚樹的池塘"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("印尼峇里省"),
        "craneFly13SemanticLabel":
            MessageLookupByLibrary.simpleMessage("周圍有棕櫚樹的海濱池塘"),
        "craneFly1SemanticLabel": MessageLookupByLibrary.simpleMessage("野外的帳篷"),
        "craneFly2": MessageLookupByLibrary.simpleMessage("尼泊爾坤布谷"),
        "craneFly2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("雪山前的經幡"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("秘魯馬丘比丘"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("馬丘比丘堡壘"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("馬爾地夫馬列"),
        "craneFly4SemanticLabel": MessageLookupByLibrary.simpleMessage("水上平房"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("瑞士維茨瑙"),
        "craneFly5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("山前的湖邊飯店"),
        "craneFly6": MessageLookupByLibrary.simpleMessage("墨西哥墨西哥市"),
        "craneFly6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("國家劇院藝術宮的鳥瞰圖"),
        "craneFly7": MessageLookupByLibrary.simpleMessage("美國拉什莫爾山"),
        "craneFly7SemanticLabel": MessageLookupByLibrary.simpleMessage("拉什莫爾山"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("新加坡"),
        "craneFly8SemanticLabel": MessageLookupByLibrary.simpleMessage("擎天巨樹"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("古巴哈瓦那"),
        "craneFly9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("靠在古典藍色汽車上的男人"),
        "craneFlyStops": m3,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage("依目的地瀏覽航班"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("選取日期"),
        "craneFormDates": MessageLookupByLibrary.simpleMessage("選取日期"),
        "craneFormDestination": MessageLookupByLibrary.simpleMessage("選擇目的地"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("用餐人數"),
        "craneFormLocation": MessageLookupByLibrary.simpleMessage("選取地點"),
        "craneFormOrigin": MessageLookupByLibrary.simpleMessage("選擇起點"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("選取時間"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("旅客人數"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("住宿"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("馬爾地夫馬列"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("水上平房"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage("美國阿斯本"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("埃及開羅"),
        "craneSleep10SemanticLabel":
            MessageLookupByLibrary.simpleMessage("夕陽下的愛智哈爾清真寺叫拜塔"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("台灣台北市"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("台北 101 大樓"),
        "craneSleep1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("雪中的小木屋和常綠植物"),
        "craneSleep2": MessageLookupByLibrary.simpleMessage("秘魯馬丘比丘"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("馬丘比丘堡壘"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("古巴哈瓦那"),
        "craneSleep3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("靠在古典藍色汽車上的男人"),
        "craneSleep4": MessageLookupByLibrary.simpleMessage("瑞士維茨瑙"),
        "craneSleep4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("山前的湖邊飯店"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage("美國碧蘇爾"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("野外的帳篷"),
        "craneSleep6": MessageLookupByLibrary.simpleMessage("美國納帕"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("周圍有棕櫚樹的池塘"),
        "craneSleep7": MessageLookupByLibrary.simpleMessage("葡萄牙波土"),
        "craneSleep7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("里貝拉廣場上色彩繽紛的公寓"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("墨西哥土魯母"),
        "craneSleep8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("海邊懸崖上的馬雅遺跡"),
        "craneSleep9": MessageLookupByLibrary.simpleMessage("葡萄牙里斯本"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("海邊的磚造燈塔"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage("依目的地瀏覽房源"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("允許"),
        "cupertinoAlertApplePie": MessageLookupByLibrary.simpleMessage("蘋果派"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("取消"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("乳酪蛋糕"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("巧克力布朗尼"),
        "cupertinoAlertDessertDescription":
            MessageLookupByLibrary.simpleMessage(
                "請從下方清單中選取你喜愛的甜點類型。系統會根據你的選擇和所在地區，提供個人化的餐廳建議清單。"),
        "cupertinoAlertDiscard": MessageLookupByLibrary.simpleMessage("捨棄"),
        "cupertinoAlertDontAllow": MessageLookupByLibrary.simpleMessage("不允許"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("選取喜愛的甜點"),
        "cupertinoAlertLocationDescription":
            MessageLookupByLibrary.simpleMessage(
                "您的目前位置會顯示於地圖並用於路線、附近搜尋結果和估計路程時間。"),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "要允許「Google 地圖」在你使用時存取你的位置資訊嗎？"),
        "cupertinoAlertTiramisu": MessageLookupByLibrary.simpleMessage("提拉米蘇"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("按鈕"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("設有背景"),
        "cupertinoShowAlert": MessageLookupByLibrary.simpleMessage("顯示快訊"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "「動作方塊」是一組選項，可觸發與主要內容相關的動作。系統會根據 UI 中的內容動態顯示這種方塊。"),
        "demoActionChipTitle": MessageLookupByLibrary.simpleMessage("動作方塊"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "快訊對話方塊會通知使用者有待確認的情況。你可以視需要為這類對話方塊設定標題和動作清單。"),
        "demoAlertDialogTitle": MessageLookupByLibrary.simpleMessage("快訊"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("具有標題的快訊"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "底部導覽列會在畫面底部顯示三至五個目的地。每個目的地都是以圖示和選用文字標籤呈現。當使用者輕觸底部導覽圖示時，系統就會將使用者導向至與該圖示相關聯的頂層導覽目的地。"),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("常駐標籤"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("選取的標籤"),
        "demoBottomNavigationSubtitle":
            MessageLookupByLibrary.simpleMessage("採用交錯淡出視覺效果的底部導覽"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("底部導覽"),
        "demoBottomSheetAddLabel": MessageLookupByLibrary.simpleMessage("新增"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("顯示底部資訊表"),
        "demoBottomSheetHeader": MessageLookupByLibrary.simpleMessage("標題"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "強制回應底部資訊表是選單或對話方塊的替代方案，而且可以禁止使用者與其他應用程式的其他部分進行互動。"),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("強制回應底部資訊表"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "持續性底部資訊表會顯示應用程式主要內容的補充資訊。即便使用者正在與應用程式的其他部分進行互動，這種資訊表仍會持續顯示。"),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("持續性底部資訊表"),
        "demoBottomSheetSubtitle":
            MessageLookupByLibrary.simpleMessage("持續性和強制回應底部資訊表"),
        "demoBottomSheetTitle": MessageLookupByLibrary.simpleMessage("底部資訊表"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("文字欄位"),
        "demoButtonSubtitle":
            MessageLookupByLibrary.simpleMessage("平面、凸起、外框等等"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("按鈕"),
        "demoChipSubtitle":
            MessageLookupByLibrary.simpleMessage("代表輸入內容、屬性或動作的精簡元素"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("方塊"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "「選擇方塊」代表某個組合中的單一選項，可提供相關的說明文字或類別。"),
        "demoChoiceChipTitle": MessageLookupByLibrary.simpleMessage("選擇方塊"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("程式碼範例"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("已複製到剪貼簿。"),
        "demoCodeViewerCopyAll": MessageLookupByLibrary.simpleMessage("全部複製"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription":
            MessageLookupByLibrary.simpleMessage("代表質感設計調色盤的顏色和色樣常數。"),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage("所有預先定義的顏色"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("顏色"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "動作表是一種特定樣式的快訊，可根據目前的使用情況，為使用者提供兩個以上的相關選項。你可以視需要替動作表設定標題、訊息內容和動作清單。"),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("動作表"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("僅限快訊按鈕"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("含有按鈕的快訊"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "快訊對話方塊會通知使用者有待確認的情況。你可以視需要為這類對話方塊設定標題、內容和動作清單。標題會顯示在內容上方，動作會顯示在內容下方。"),
        "demoCupertinoAlertTitle": MessageLookupByLibrary.simpleMessage("快訊"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("具有標題的快訊"),
        "demoCupertinoAlertsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS 樣式的快訊對話方塊"),
        "demoCupertinoAlertsTitle": MessageLookupByLibrary.simpleMessage("快訊"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "iOS 樣式的按鈕，當中的文字和/或圖示會在使用者輕觸按鈕時淡出及淡入。可視需要設定背景。"),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS 樣式按鈕"),
        "demoCupertinoButtonsTitle": MessageLookupByLibrary.simpleMessage("按鈕"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "當有多個互斥項目時，用於選取其中一個項目。如果選取區隔控制元件中的其中一個選項，就無法選取區隔控制元件中的其他選項。"),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS 樣式的區隔控制元件"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("區隔控制元件"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage("簡潔、快訊和全螢幕"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("對話方塊"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("API 說明文件"),
        "demoFilterChipDescription":
            MessageLookupByLibrary.simpleMessage("「篩選器方塊」會利用標記或描述性字詞篩選內容。"),
        "demoFilterChipTitle": MessageLookupByLibrary.simpleMessage("篩選器方塊"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "平面式按鈕，按下後會出現墨水擴散特效，但不會有升起效果。這類按鈕用於工具列、對話方塊和設有邊框間距的內嵌元素"),
        "demoFlatButtonTitle": MessageLookupByLibrary.simpleMessage("平面式按鈕"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "懸浮動作按鈕是一種懸停在內容上方的圓形圖示按鈕，可用來執行應用程式中的主要動作。"),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("懸浮動作按鈕"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "你可以利用 fullscreenDialog 屬性，指定接下來顯示的頁面是否為全螢幕強制回應對話方塊"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("全螢幕"),
        "demoFullscreenTooltip": MessageLookupByLibrary.simpleMessage("全螢幕"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("資訊"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "「輸入方塊」是一項經過簡化的複雜資訊 (例如人物、地點或事物這類實體) 或對話內容。"),
        "demoInputChipTitle": MessageLookupByLibrary.simpleMessage("輸入方塊"),
        "demoInvalidURL": MessageLookupByLibrary.simpleMessage("無法顯示網址："),
        "demoListsDescription":
            MessageLookupByLibrary.simpleMessage("高度固定的單列，通常包含一些文字以及開頭或結尾圖示。"),
        "demoListsSecondary": MessageLookupByLibrary.simpleMessage("次要文字"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage("捲動清單版面配置"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("清單"),
        "demoOneLineListsTitle": MessageLookupByLibrary.simpleMessage("單行"),
        "demoOptionsFeatureDescription":
            MessageLookupByLibrary.simpleMessage("輕觸這裡即可查看示範模式的可用選項。"),
        "demoOptionsFeatureTitle": MessageLookupByLibrary.simpleMessage("查看選項"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("選項"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "外框按鈕會在使用者按下時轉為不透明，且高度增加。這類按鈕通常會與凸起的按鈕搭配使用，用於指出次要的替代動作。"),
        "demoOutlineButtonTitle": MessageLookupByLibrary.simpleMessage("外框按鈕"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "凸起的按鈕可替多為平面的版面設計增添層次。這類按鈕可在擁擠或寬廣的空間中強調其功能。"),
        "demoRaisedButtonTitle": MessageLookupByLibrary.simpleMessage("凸起的按鈕"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "核取方塊可讓使用者從一組選項中選取多個項目。一般核取方塊的值為 true 或 false。如果核取方塊有三種狀態，其值也可以是 null。"),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("核取方塊"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "圓形按鈕可讓使用者從一組選項中選取一個項目。如果你想並排列出所有可選擇的項目，並讓使用者選出其中一項，請使用圓形按鈕。"),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("圓形"),
        "demoSelectionControlsSubtitle":
            MessageLookupByLibrary.simpleMessage("核取方塊、圓形按鈕和切換按鈕"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "「開啟/關閉」切換按鈕是用來切換單一設定選項的狀態。切換按鈕控制的選項及其所處狀態，都應在對應的內嵌標籤中表達清楚。"),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("切換按鈕"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("選取控制項"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "簡潔對話方塊可讓使用者在幾個選項之間做選擇。你可以視需要為簡潔對話方塊設定標題 (標題會顯示在選項上方)。"),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("簡潔"),
        "demoTabsDescription":
            MessageLookupByLibrary.simpleMessage("使用分頁整理不同畫面、資料集和其他互動項目的內容。"),
        "demoTabsSubtitle":
            MessageLookupByLibrary.simpleMessage("含有個別捲動式檢視畫面的分頁"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("分頁"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "文字欄位可讓使用者在 UI 中輸入文字。這類欄位通常會出現在表單或對話方塊中。"),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("電子郵件地址"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("請輸入密碼。"),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### - 請輸入美國地區的電話號碼。"),
        "demoTextFieldFormErrors":
            MessageLookupByLibrary.simpleMessage("請先修正以紅色標示的錯誤部分，然後再提交。"),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("隱藏密碼"),
        "demoTextFieldKeepItShort":
            MessageLookupByLibrary.simpleMessage("盡量簡短扼要，這只是示範模式。"),
        "demoTextFieldLifeStory": MessageLookupByLibrary.simpleMessage("個人簡介"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("姓名*"),
        "demoTextFieldNameHasPhoneNumber": m7,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("請填寫姓名。"),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("不得超過 8 個字元。"),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage("請勿輸入字母以外的字元。"),
        "demoTextFieldPassword": MessageLookupByLibrary.simpleMessage("密碼*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("密碼不符"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("電話號碼*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("* 代表必填欄位"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("重新輸入密碼*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("薪資"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("顯示密碼"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("提交"),
        "demoTextFieldSubtitle":
            MessageLookupByLibrary.simpleMessage("一行可編輯的文字和數字"),
        "demoTextFieldTellUsAboutYourself":
            MessageLookupByLibrary.simpleMessage("介紹一下你自己 (比方說，你可以輸入自己的職業或嗜好)"),
        "demoTextFieldTitle": MessageLookupByLibrary.simpleMessage("文字欄位"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("美元"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("大家都怎麼稱呼你？"),
        "demoTextFieldWhereCanWeReachYou":
            MessageLookupByLibrary.simpleMessage("我們該透過哪個電話號碼與你聯絡？"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("你的電子郵件地址"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "切換鈕可用於將相關的選項分組。為凸顯相關的切換鈕群組，單一群組應共用同一個容器"),
        "demoToggleButtonTitle": MessageLookupByLibrary.simpleMessage("切換鈕"),
        "demoTwoLineListsTitle": MessageLookupByLibrary.simpleMessage("雙行"),
        "demoTypographyDescription":
            MessageLookupByLibrary.simpleMessage("質感設計中的多種版面樣式定義。"),
        "demoTypographySubtitle":
            MessageLookupByLibrary.simpleMessage("所有預先定義的文字樣式"),
        "demoTypographyTitle": MessageLookupByLibrary.simpleMessage("字體排版"),
        "dialogAddAccount": MessageLookupByLibrary.simpleMessage("新增帳戶"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("同意"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("取消"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("不同意"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("捨棄"),
        "dialogDiscardTitle": MessageLookupByLibrary.simpleMessage("要捨棄草稿嗎？"),
        "dialogFullscreenDescription":
            MessageLookupByLibrary.simpleMessage("全螢幕對話方塊範例"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("儲存"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("全螢幕對話方塊"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "允許 Google 協助應用程式判斷你的位置。這麼做會將匿名的位置資料傳送給 Google (即使你未執行任何應用程式)。"),
        "dialogLocationTitle":
            MessageLookupByLibrary.simpleMessage("要使用 Google 的定位服務嗎？"),
        "dialogSelectedOption": m8,
        "dialogSetBackup": MessageLookupByLibrary.simpleMessage("設定備份帳戶"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("顯示對話方塊"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("參考資料樣式與媒體"),
        "homeHeaderCategories": MessageLookupByLibrary.simpleMessage("類別"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("圖庫"),
        "rallyAccountAmount": m9,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("節省車輛相關支出"),
        "rallyAccountDataChecking": MessageLookupByLibrary.simpleMessage("支票"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("家庭儲蓄"),
        "rallyAccountDataVacation": MessageLookupByLibrary.simpleMessage("假期"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("帳戶擁有者"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("年產量百分率"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("去年支付的利息金額"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("利率"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("年初至今的利息"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("下一份帳戶對帳單"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("總計"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("帳戶"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("快訊"),
        "rallyAlertsMessageATMFees": m10,
        "rallyAlertsMessageCheckingAccount": m11,
        "rallyAlertsMessageHeadsUpShopping": m12,
        "rallyAlertsMessageSpentOnRestaurants": m13,
        "rallyAlertsMessageUnassignedTransactions": m14,
        "rallyBillAmount": m15,
        "rallyBills": MessageLookupByLibrary.simpleMessage("帳單"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("期限"),
        "rallyBudgetAmount": m16,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("服飾"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("咖啡店"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("雜貨"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("餐廳"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("剩餘預算"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("預算"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage("個人財經應用程式"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("餘額"),
        "rallyLoginButtonLogin": MessageLookupByLibrary.simpleMessage("登入"),
        "rallyLoginLabelLogin": MessageLookupByLibrary.simpleMessage("登入"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("登入 Rally"),
        "rallyLoginNoAccount": MessageLookupByLibrary.simpleMessage("還沒有帳戶嗎？"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("密碼"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("記住我的登入資訊"),
        "rallyLoginSignUp": MessageLookupByLibrary.simpleMessage("註冊"),
        "rallyLoginUsername": MessageLookupByLibrary.simpleMessage("使用者名稱"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("查看全部"),
        "rallySeeAllAccounts": MessageLookupByLibrary.simpleMessage("查看所有帳戶"),
        "rallySeeAllBills": MessageLookupByLibrary.simpleMessage("查看所有帳單"),
        "rallySeeAllBudgets": MessageLookupByLibrary.simpleMessage("查看所有預算"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("尋找自動提款機"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("說明"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("管理帳戶"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("通知"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("無紙化設定"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("密碼和 Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("個人資訊"),
        "rallySettingsSignOut": MessageLookupByLibrary.simpleMessage("登出"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("稅務文件"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("帳戶"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("帳單"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("預算"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("總覽"),
        "rallyTitleSettings": MessageLookupByLibrary.simpleMessage("設定"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("關於 Flutter Gallery"),
        "settingsAttribution":
            MessageLookupByLibrary.simpleMessage("由倫敦的 TOASTER 設計"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("關閉設定"),
        "settingsButtonLabel": MessageLookupByLibrary.simpleMessage("設定"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("深色"),
        "settingsFeedback": MessageLookupByLibrary.simpleMessage("傳送意見回饋"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("淺色"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("語言代碼"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("平台操作"),
        "settingsSlowMotion": MessageLookupByLibrary.simpleMessage("慢動作"),
        "settingsSystemDefault": MessageLookupByLibrary.simpleMessage("系統"),
        "settingsTextDirection": MessageLookupByLibrary.simpleMessage("文字方向"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("由左至右"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("根據地區設定"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("由右至左"),
        "settingsTextScaling": MessageLookupByLibrary.simpleMessage("文字比例"),
        "settingsTextScalingHuge": MessageLookupByLibrary.simpleMessage("極大"),
        "settingsTextScalingLarge": MessageLookupByLibrary.simpleMessage("大"),
        "settingsTextScalingNormal": MessageLookupByLibrary.simpleMessage("一般"),
        "settingsTextScalingSmall": MessageLookupByLibrary.simpleMessage("小"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("主題"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("設定"),
        "shrineCancelButtonCaption": MessageLookupByLibrary.simpleMessage("取消"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("清空購物車"),
        "shrineCartItemCount": m17,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("購物車"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("運費："),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("小計："),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("稅金："),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("總計"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("配飾"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("全部"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("服飾"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("居家用品"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage("時尚零售應用程式"),
        "shrineLoginPasswordLabel": MessageLookupByLibrary.simpleMessage("密碼"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("使用者名稱"),
        "shrineLogoutButtonCaption": MessageLookupByLibrary.simpleMessage("登出"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("選單"),
        "shrineNextButtonCaption": MessageLookupByLibrary.simpleMessage("繼續"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("藍石馬克杯"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("櫻桃色短袖 T 恤"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("水手布餐巾"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("水手布襯衫"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("經典白領"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("淺褐色毛衣"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("黃銅電線架"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("細紋 T 恤"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("海岸花園"),
        "shrineProductGatsbyHat": MessageLookupByLibrary.simpleMessage("報童帽"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Gentry 夾克"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("鍍金三層桌"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("薑黃色圍巾"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("灰色寬鬆背心"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("歡樂茶具組"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("廚房四部曲"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("海軍藍長褲"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("灰泥色長袍"),
        "shrineProductPrice": m18,
        "shrineProductQuantity": m19,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("四人桌"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("雨水托盤"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Ramona 風格變化"),
        "shrineProductSeaTunic": MessageLookupByLibrary.simpleMessage("海洋色長袍"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("淡藍色毛衣"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("肩部環繞 T 恤"),
        "shrineProductShrugBag": MessageLookupByLibrary.simpleMessage("肩背包"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("療癒陶瓷組"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Stella 太陽眼鏡"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("柱狀耳環"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("多肉植物盆栽"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("防曬裙"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Surf and perf 襯衫"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Vagabond 袋子"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("運動襪"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Walter 亨利衫 (白色)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("編織鑰匙圈"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("白色線條襯衫"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Whitney 皮帶"),
        "shrineScreenReaderCart": m20,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("加入購物車"),
        "shrineScreenReaderRemoveProductButton": m21,
        "shrineTooltipCloseCart": MessageLookupByLibrary.simpleMessage("關閉購物車"),
        "shrineTooltipCloseMenu": MessageLookupByLibrary.simpleMessage("關閉選單"),
        "shrineTooltipOpenMenu": MessageLookupByLibrary.simpleMessage("開啟選單"),
        "shrineTooltipRemoveItem": MessageLookupByLibrary.simpleMessage("移除項目"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("搜尋"),
        "shrineTooltipSettings": MessageLookupByLibrary.simpleMessage("設定"),
        "starterAppDescription":
            MessageLookupByLibrary.simpleMessage("回應式入門版面配置"),
        "starterAppDrawerItem": m22,
        "starterAppGenericBody": MessageLookupByLibrary.simpleMessage("內文"),
        "starterAppGenericButton": MessageLookupByLibrary.simpleMessage("按鈕"),
        "starterAppGenericHeadline": MessageLookupByLibrary.simpleMessage("標題"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("副標題"),
        "starterAppGenericTitle": MessageLookupByLibrary.simpleMessage("標題"),
        "starterAppTitle": MessageLookupByLibrary.simpleMessage("入門應用程式"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("新增"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("加入收藏"),
        "starterAppTooltipSearch": MessageLookupByLibrary.simpleMessage("搜尋"),
        "starterAppTooltipShare": MessageLookupByLibrary.simpleMessage("分享")
      };
}
