// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh_HK locale. All the
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
  String get localeName => 'zh_HK';

  static m0(value) => "如要查看此應用程式的原始碼，請前往 ${value}。";

  static m1(title) => "${title} 分頁嘅佔位符";

  static m2(destinationName) => "探索 ${destinationName}";

  static m3(destinationName) => "分享 ${destinationName}";

  static m4(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: '沒有餐廳', one: '1 間餐廳', other: '${totalRestaurants} 間餐廳')}";

  static m5(hoursShortForm, minutesShortForm) =>
      "${hoursShortForm} ${minutesShortForm}";

  static m6(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: '直航', one: '1 個中轉站', other: '${numberOfStops} 個中轉站')}";

  static m7(hours) => "${Intl.plural(hours, one: '1h', other: '${hours}h')}";

  static m8(minutes) =>
      "${Intl.plural(minutes, one: '1m', other: '${minutes}m')}";

  static m9(totalProperties) =>
      "${Intl.plural(totalProperties, zero: '沒有住宿', one: '1 個可短租的住宿', other: '${totalProperties} 個可短租的住宿')}";

  static m10(value) => "${value} 伴蜜糖";

  static m11(value) => "${value} 伴糖";

  static m12(value) => "項目 ${value}";

  static m13(error) => "無法複製到剪貼簿：${error}";

  static m14(value) => "連續：${value}";

  static m15(value) => "間續：${value}";

  static m16(value) => "已勾選：${value}";

  static m17(value) => "已選擇：${value}";

  static m18(name, phoneNumber) => "${name}的電話號碼是 ${phoneNumber}";

  static m19(value) => "您已選取：「${value}」";

  static m20(accountName, accountNumber, amount) =>
      "${accountName}帳戶 (${accountNumber}) 存入 ${amount}。";

  static m21(amount) => "您這個月已支付 ${amount} 的自動櫃員機費用";

  static m22(percent) => "做得好！您的支票帳戶結餘比上個月多了 ${percent}。";

  static m23(percent) => "請注意，您在這個月已經使用了「購物」預算的 ${percent}。";

  static m24(amount) => "您這個星期已於「餐廳」方面花了 ${amount}。";

  static m25(count) =>
      "${Intl.plural(count, one: '增加您可能獲得的稅務減免！為 1 個未指定的交易指定類別。', other: '增加您可能獲得的稅務減免！為 ${count} 個未指定的交易指定類別。')}";

  static m26(billName, date, amount) =>
      "${billName}帳單於 ${date} 到期，金額為 ${amount}。";

  static m27(budgetName, amountUsed, amountTotal, amountLeft) =>
      "${budgetName}財務預算已使用 ${amountTotal} 中的 ${amountUsed}，尚餘 ${amountLeft}";

  static m28(quantity) =>
      "${Intl.plural(quantity, zero: '沒有項目', one: '1 個項目', other: '${quantity} 個項目')}";

  static m29(price) => "x ${price}";

  static m30(quantity) => "數量：${quantity}";

  static m31(quantity) =>
      "${Intl.plural(quantity, zero: '購物車，冇產品', one: '購物車，1 件產品', other: '購物車，${quantity} 件產品')}";

  static m32(product) => "移除${product}";

  static m33(value) => "項目 ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo":
            MessageLookupByLibrary.simpleMessage("Flutter 範例的 GitHub 存放區"),
        "backToGallery": MessageLookupByLibrary.simpleMessage("返回圖片庫"),
        "bannerDemoLeadingText": MessageLookupByLibrary.simpleMessage("開頭圖示"),
        "bannerDemoMultipleText": MessageLookupByLibrary.simpleMessage("多項操作"),
        "bannerDemoResetText": MessageLookupByLibrary.simpleMessage("重設橫額"),
        "bannerDemoText":
            MessageLookupByLibrary.simpleMessage("您的密碼已在其他裝置上更新。請再次登入。"),
        "bottomAppBarNotch": MessageLookupByLibrary.simpleMessage("凹口"),
        "bottomAppBarPosition":
            MessageLookupByLibrary.simpleMessage("懸浮動作按鈕位置"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage("已固定 - 中間"),
        "bottomAppBarPositionDockedEnd":
            MessageLookupByLibrary.simpleMessage("已固定 - 末端"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage("懸浮 - 中間"),
        "bottomAppBarPositionFloatingEnd":
            MessageLookupByLibrary.simpleMessage("懸浮 - 末端"),
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
        "cardsDemoExplore": MessageLookupByLibrary.simpleMessage("探索"),
        "cardsDemoExploreSemantics": m2,
        "cardsDemoSelectable": MessageLookupByLibrary.simpleMessage("可選擇 (長按)"),
        "cardsDemoShareSemantics": m3,
        "cardsDemoTappable": MessageLookupByLibrary.simpleMessage("可輕按"),
        "cardsDemoTravelDestinationCity1":
            MessageLookupByLibrary.simpleMessage("坦賈武爾"),
        "cardsDemoTravelDestinationCity2":
            MessageLookupByLibrary.simpleMessage("切蒂納德"),
        "cardsDemoTravelDestinationDescription1":
            MessageLookupByLibrary.simpleMessage("第 10 位"),
        "cardsDemoTravelDestinationDescription2":
            MessageLookupByLibrary.simpleMessage("紡絲機"),
        "cardsDemoTravelDestinationDescription3":
            MessageLookupByLibrary.simpleMessage("寺廟"),
        "cardsDemoTravelDestinationLocation1":
            MessageLookupByLibrary.simpleMessage("泰米爾納德邦坦賈武爾"),
        "cardsDemoTravelDestinationLocation2":
            MessageLookupByLibrary.simpleMessage("泰米爾納德邦西瓦岡格阿"),
        "cardsDemoTravelDestinationTitle1":
            MessageLookupByLibrary.simpleMessage("泰米爾納德邦必到 10 大城市"),
        "cardsDemoTravelDestinationTitle2":
            MessageLookupByLibrary.simpleMessage("印度南部的工匠"),
        "cardsDemoTravelDestinationTitle3":
            MessageLookupByLibrary.simpleMessage("布里哈迪希瓦拉神廟"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("踏單車"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("電梯"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("壁爐"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("大"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("中"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("小"),
        "chipTurnOnLights": MessageLookupByLibrary.simpleMessage("開燈"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("洗衣機"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("琥珀色"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("藍色"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("灰藍色"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("啡色"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("青藍色"),
        "colorsDeepOrange": MessageLookupByLibrary.simpleMessage("深橙色"),
        "colorsDeepPurple": MessageLookupByLibrary.simpleMessage("深紫色"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("綠色"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("灰色"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("靛藍色"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("淺藍色"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("淺綠色"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("青檸色"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("橙色"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("粉紅色"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("紫色"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("紅色"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("藍綠色"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("黃色"),
        "craneDescription": MessageLookupByLibrary.simpleMessage("個人化旅遊應用程式"),
        "craneEat": MessageLookupByLibrary.simpleMessage("食肆"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("意大利那不勒斯"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("柴火焗爐中的薄餅"),
        "craneEat1": MessageLookupByLibrary.simpleMessage("美國達拉斯"),
        "craneEat10": MessageLookupByLibrary.simpleMessage("葡萄牙里斯本"),
        "craneEat10SemanticLabel":
            MessageLookupByLibrary.simpleMessage("拿著巨型燻牛肉三文治的女人"),
        "craneEat1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("只有空櫈的酒吧無人光顧"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("阿根廷科爾多瓦"),
        "craneEat2SemanticLabel": MessageLookupByLibrary.simpleMessage("漢堡包"),
        "craneEat3": MessageLookupByLibrary.simpleMessage("美國波特蘭"),
        "craneEat3SemanticLabel": MessageLookupByLibrary.simpleMessage("韓式玉米捲"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("法國巴黎"),
        "craneEat4SemanticLabel": MessageLookupByLibrary.simpleMessage("朱古力甜品"),
        "craneEat5": MessageLookupByLibrary.simpleMessage("南韓首爾"),
        "craneEat5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("藝術風格餐廳的用餐區"),
        "craneEat6": MessageLookupByLibrary.simpleMessage("美國西雅圖"),
        "craneEat6SemanticLabel": MessageLookupByLibrary.simpleMessage("鮮蝦大餐"),
        "craneEat7": MessageLookupByLibrary.simpleMessage("美國納什維爾"),
        "craneEat7SemanticLabel": MessageLookupByLibrary.simpleMessage("麵包店店門"),
        "craneEat8": MessageLookupByLibrary.simpleMessage("美國亞特蘭大"),
        "craneEat8SemanticLabel": MessageLookupByLibrary.simpleMessage("一碟小龍蝦"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("西班牙馬德里"),
        "craneEat9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("擺放著糕餅的咖啡店櫃檯"),
        "craneEatRestaurants": m4,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage("根據目的地探尋餐廳"),
        "craneFlightDuration": m5,
        "craneFly": MessageLookupByLibrary.simpleMessage("航班"),
        "craneFly0": MessageLookupByLibrary.simpleMessage("美國阿斯彭"),
        "craneFly0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("雪地中的小木屋和長青樹"),
        "craneFly1": MessageLookupByLibrary.simpleMessage("美國大蘇爾"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("埃及開羅"),
        "craneFly10SemanticLabel":
            MessageLookupByLibrary.simpleMessage("夕陽下的愛資哈爾清真寺"),
        "craneFly11": MessageLookupByLibrary.simpleMessage("葡萄牙里斯本"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("海上的磚燈塔"),
        "craneFly12": MessageLookupByLibrary.simpleMessage("美國納帕"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("樹影婆娑的泳池"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("印尼峇里"),
        "craneFly13SemanticLabel":
            MessageLookupByLibrary.simpleMessage("樹影婆娑的海邊泳池"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("田野中的帳篷"),
        "craneFly2": MessageLookupByLibrary.simpleMessage("尼泊爾坤布山谷"),
        "craneFly2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("雪山前的經幡"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("秘魯馬丘比丘"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("古城馬丘比丘"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("馬爾代夫馬累"),
        "craneFly4SemanticLabel": MessageLookupByLibrary.simpleMessage("水上小屋"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("瑞士維茨瑙"),
        "craneFly5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("背山而建的湖邊酒店"),
        "craneFly6": MessageLookupByLibrary.simpleMessage("墨西哥墨西哥城"),
        "craneFly6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("俯瞰墨西哥藝術宮"),
        "craneFly7": MessageLookupByLibrary.simpleMessage("美國拉什莫爾山"),
        "craneFly7SemanticLabel": MessageLookupByLibrary.simpleMessage("拉什莫爾山"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("新加坡"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("新加坡超級樹"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("古巴哈瓦那"),
        "craneFly9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("靠著藍色古董車的男人"),
        "craneFlyStops": m6,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage("根據目的地探索航班"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("選取日期"),
        "craneFormDates": MessageLookupByLibrary.simpleMessage("選取日期"),
        "craneFormDestination": MessageLookupByLibrary.simpleMessage("選取目的地"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("用餐人數"),
        "craneFormLocation": MessageLookupByLibrary.simpleMessage("選取位置"),
        "craneFormOrigin": MessageLookupByLibrary.simpleMessage("選取出發點"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("選取時間"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("旅客人數"),
        "craneHours": m7,
        "craneMinutes": m8,
        "craneSleep": MessageLookupByLibrary.simpleMessage("過夜"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("馬爾代夫馬累"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("水上小屋"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage("美國阿斯彭"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("埃及開羅"),
        "craneSleep10SemanticLabel":
            MessageLookupByLibrary.simpleMessage("夕陽下的愛資哈爾清真寺"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("台灣台北"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("台北 101 摩天大樓"),
        "craneSleep1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("雪地中的小木屋和長青樹"),
        "craneSleep2": MessageLookupByLibrary.simpleMessage("秘魯馬丘比丘"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("古城馬丘比丘"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("古巴哈瓦那"),
        "craneSleep3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("靠著藍色古董車的男人"),
        "craneSleep4": MessageLookupByLibrary.simpleMessage("瑞士維茨瑙"),
        "craneSleep4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("背山而建的湖邊酒店"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage("美國大蘇爾"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("田野中的帳篷"),
        "craneSleep6": MessageLookupByLibrary.simpleMessage("美國納帕"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("樹影婆娑的泳池"),
        "craneSleep7": MessageLookupByLibrary.simpleMessage("葡萄牙波多"),
        "craneSleep7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("里貝拉廣場的彩色公寓"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("墨西哥圖盧姆"),
        "craneSleep8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("座落在懸崖上遙望海灘的馬雅遺跡"),
        "craneSleep9": MessageLookupByLibrary.simpleMessage("葡萄牙里斯本"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("海上的磚燈塔"),
        "craneSleepProperties": m9,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage("根據目的地探索住宿"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("允許"),
        "cupertinoAlertApplePie": MessageLookupByLibrary.simpleMessage("蘋果批"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("取消"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("芝士蛋糕"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("朱古力布朗尼"),
        "cupertinoAlertDessertDescription":
            MessageLookupByLibrary.simpleMessage(
                "請從下方清單中選取您喜愛的甜點類型。系統會根據您的選擇和所在地區，提供個人化的餐廳建議清單。"),
        "cupertinoAlertDiscard": MessageLookupByLibrary.simpleMessage("捨棄"),
        "cupertinoAlertDontAllow": MessageLookupByLibrary.simpleMessage("不允許"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("選取喜愛的甜品"),
        "cupertinoAlertLocationDescription":
            MessageLookupByLibrary.simpleMessage(
                "您的目前位置會在地圖上顯示，並用於路線、附近搜尋結果和預計的行程時間。"),
        "cupertinoAlertLocationTitle":
            MessageLookupByLibrary.simpleMessage("要允許「Google 地圖」在您使用時存取位置資訊嗎？"),
        "cupertinoAlertTiramisu": MessageLookupByLibrary.simpleMessage("提拉米蘇"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("按鈕"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("設有背景"),
        "cupertinoShowAlert": MessageLookupByLibrary.simpleMessage("顯示通知"),
        "cupertinoTabBarChatTab": MessageLookupByLibrary.simpleMessage("即時通訊"),
        "cupertinoTabBarHomeTab": MessageLookupByLibrary.simpleMessage("首頁"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("個人檔案"),
        "dataTableColumnCalcium": MessageLookupByLibrary.simpleMessage("鈣 (%)"),
        "dataTableColumnCalories": MessageLookupByLibrary.simpleMessage("卡路里"),
        "dataTableColumnCarbs":
            MessageLookupByLibrary.simpleMessage("碳水化合物 (克)"),
        "dataTableColumnDessert":
            MessageLookupByLibrary.simpleMessage("甜品 (1 人份量)"),
        "dataTableColumnFat": MessageLookupByLibrary.simpleMessage("脂肪 (克)"),
        "dataTableColumnIron": MessageLookupByLibrary.simpleMessage("鐵 (%)"),
        "dataTableColumnProtein":
            MessageLookupByLibrary.simpleMessage("蛋白質 (克)"),
        "dataTableColumnSodium": MessageLookupByLibrary.simpleMessage("鈉 (毫克)"),
        "dataTableHeader": MessageLookupByLibrary.simpleMessage("營養"),
        "dataTableRowApplePie": MessageLookupByLibrary.simpleMessage("蘋果批"),
        "dataTableRowCupcake": MessageLookupByLibrary.simpleMessage("杯子蛋糕"),
        "dataTableRowDonut": MessageLookupByLibrary.simpleMessage("冬甩"),
        "dataTableRowEclair": MessageLookupByLibrary.simpleMessage("法式泡芙"),
        "dataTableRowFrozenYogurt":
            MessageLookupByLibrary.simpleMessage("乳酪雪糕"),
        "dataTableRowGingerbread": MessageLookupByLibrary.simpleMessage("薑餅"),
        "dataTableRowHoneycomb": MessageLookupByLibrary.simpleMessage("蜂窩糖"),
        "dataTableRowIceCreamSandwich":
            MessageLookupByLibrary.simpleMessage("雪糕三文治"),
        "dataTableRowJellyBean": MessageLookupByLibrary.simpleMessage("啫喱豆"),
        "dataTableRowLollipop": MessageLookupByLibrary.simpleMessage("波板糖"),
        "dataTableRowWithHoney": m10,
        "dataTableRowWithSugar": m11,
        "demo2dTransformationsDescription": MessageLookupByLibrary.simpleMessage(
            "Tap to edit tiles, and use gestures to move around the scene. Drag to pan, pinch to zoom, rotate with two fingers. Press the reset button to return to the starting orientation."),
        "demo2dTransformationsEditTooltip":
            MessageLookupByLibrary.simpleMessage("Edit tile"),
        "demo2dTransformationsResetTooltip":
            MessageLookupByLibrary.simpleMessage("Reset transformations"),
        "demo2dTransformationsSubtitle":
            MessageLookupByLibrary.simpleMessage("Pan, zoom, rotate"),
        "demo2dTransformationsTitle":
            MessageLookupByLibrary.simpleMessage("2D transformations"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "動作方塊列出一組選項，可觸發與主要內容相關的動作。動作方塊應在使用者介面上以動態和與內容相關的方式顯示。"),
        "demoActionChipTitle": MessageLookupByLibrary.simpleMessage("動作方塊"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "通知對話框會通知使用者目前發生要確認的情況。您可按需要為這類對話框設定標題和動作清單。"),
        "demoAlertDialogTitle": MessageLookupByLibrary.simpleMessage("通知"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("具有標題的通知"),
        "demoBannerDescription": MessageLookupByLibrary.simpleMessage(
            "橫額可展示重要而簡潔的訊息，並讓使用者執行操作以作回應 (或關閉橫額)。使用者需要執行操作才能關閉橫額。"),
        "demoBannerSubtitle": MessageLookupByLibrary.simpleMessage("在清單中顯示橫額"),
        "demoBannerTitle": MessageLookupByLibrary.simpleMessage("橫額"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "在底部應用程式列中，您可存取底部導覽列和最多 4 個動作，包括懸浮動作按鈕。"),
        "demoBottomAppBarSubtitle":
            MessageLookupByLibrary.simpleMessage("在底部顯示導覽和動作"),
        "demoBottomAppBarTitle":
            MessageLookupByLibrary.simpleMessage("底部應用程式列"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "底部的導覽列會在螢幕底部顯示 3 至 5 個目的地。每個目的地均以圖示和選擇性的文字標籤標示。當使用者輕按底部導覽列的圖示時，畫面將會顯示與圖示相關的頂層導覽目的地。"),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("固定標籤"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("已選取標籤"),
        "demoBottomNavigationSubtitle":
            MessageLookupByLibrary.simpleMessage("交叉淡出檢視效果的底部導覽列"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("底部導覽"),
        "demoBottomSheetAddLabel": MessageLookupByLibrary.simpleMessage("新增"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("顯示底部工作表"),
        "demoBottomSheetHeader": MessageLookupByLibrary.simpleMessage("頁首"),
        "demoBottomSheetItem": m12,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "強制回應底部工作表是選單或對話框的替代選擇，可防止使用者與應用程式其他部分互動。"),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("強制回應底部工作表"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "固定底部工作表會顯示應用程式主要內容以外的補充資訊。即使使用者與應用程式的其他部分互動，仍會看到固定底部工作表。"),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("固定底部工作表"),
        "demoBottomSheetSubtitle":
            MessageLookupByLibrary.simpleMessage("固定及強制回應底部工作表"),
        "demoBottomSheetTitle": MessageLookupByLibrary.simpleMessage("底部工作表"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("文字欄位"),
        "demoButtonSubtitle":
            MessageLookupByLibrary.simpleMessage("平面、凸起、外框等等"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("按鈕"),
        "demoCardDescription": MessageLookupByLibrary.simpleMessage(
            "資訊卡是用於展示相關資訊的質感設計資訊頁，如相簿、地理位置、菜色、聯絡詳情等。"),
        "demoCardSubtitle": MessageLookupByLibrary.simpleMessage("圓角基準線資訊卡"),
        "demoCardTitle": MessageLookupByLibrary.simpleMessage("資訊卡"),
        "demoChecklistMenuTitle":
            MessageLookupByLibrary.simpleMessage("檢查清單選單"),
        "demoChipSubtitle":
            MessageLookupByLibrary.simpleMessage("顯示輸入內容、屬性或動作的精簡元素"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("方塊"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "選擇方塊從一組選項中顯示單一選項。選擇方塊載有相關的說明文字或類別。"),
        "demoChoiceChipTitle": MessageLookupByLibrary.simpleMessage("選擇方塊"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "一種 Material Design 環形進度指標，轉動時即表示應用程式忙碌中。"),
        "demoCircularProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("環形進度指標"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("示範代碼"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("已複製到剪貼簿。"),
        "demoCodeViewerCopyAll": MessageLookupByLibrary.simpleMessage("全部複製"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m13,
        "demoColorsDescription":
            MessageLookupByLibrary.simpleMessage("代表質感設計調色碟的顏色和色板常數。"),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage("所有預先定義的顏色"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("顏色"),
        "demoContextMenuTitle": MessageLookupByLibrary.simpleMessage("內容選單"),
        "demoCupertinoActionSheetDescription":
            MessageLookupByLibrary.simpleMessage(
                "動作表是一種特定樣式的通知，根據目前情況向使用者提供兩個或以上的相關選項。您可按需要為動作表設定標題、額外訊息和動作清單。"),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("動作表"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage("順時針方向轉動的 iOS 樣式活動指標"),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS 樣式活動指標"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Activity indicator"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("只限通知按鈕"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("含有按鈕的通知"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "通知對話框會通知使用者目前發生要確認的情況。您可按需要為這類對話框設定標題、內容和動作清單。標題會在內容上方顯示，動作會在內容下方顯示。"),
        "demoCupertinoAlertTitle": MessageLookupByLibrary.simpleMessage("通知"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("具有標題的通知"),
        "demoCupertinoAlertsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS 樣式的通知對話框"),
        "demoCupertinoAlertsTitle": MessageLookupByLibrary.simpleMessage("通知"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "iOS 樣式的按鈕，當中的文字和/或圖示會在使用者輕觸按鈕時淡出及淡入。可按需要設定背景。"),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS 樣式按鈕"),
        "demoCupertinoButtonsTitle": MessageLookupByLibrary.simpleMessage("按鈕"),
        "demoCupertinoNavigationBarDescription":
            MessageLookupByLibrary.simpleMessage(
                "iOS 樣式的導覽列。導覽列為於中間設有頁面標題的工具列。"),
        "demoCupertinoNavigationBarSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS 樣式導覽列"),
        "demoCupertinoNavigationBarTitle":
            MessageLookupByLibrary.simpleMessage("Navigation bar"),
        "demoCupertinoPickerDate": MessageLookupByLibrary.simpleMessage("日期"),
        "demoCupertinoPickerDateTime":
            MessageLookupByLibrary.simpleMessage("日期和時間"),
        "demoCupertinoPickerDescription": MessageLookupByLibrary.simpleMessage(
            "iOS 樣式的日期和時間點選器小工具可用於選擇日期和/或時間。"),
        "demoCupertinoPickerSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS 樣式的日期和時間點選器"),
        "demoCupertinoPickerTime": MessageLookupByLibrary.simpleMessage("時間"),
        "demoCupertinoPickerTimer": MessageLookupByLibrary.simpleMessage("計時器"),
        "demoCupertinoPickerTitle": MessageLookupByLibrary.simpleMessage("點選器"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage("採用 iOS 樣式的拉動以重新整理內容控制項的小工具。"),
        "demoCupertinoPullToRefreshSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS 樣式的拉動，用於重新整理控制項"),
        "demoCupertinoPullToRefreshTitle":
            MessageLookupByLibrary.simpleMessage("Pull to refresh"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "用以在多個互相排斥的選項之間進行選擇。選擇了劃分控制的其中一個選項後，便將無法選擇其他劃分控制選項。"),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS 樣式的劃分控制"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Segmented control"),
        "demoCupertinoSliderContinuous": m14,
        "demoCupertinoSliderDescription":
            MessageLookupByLibrary.simpleMessage("滑桿可以用來選擇連續或間續數值。"),
        "demoCupertinoSliderDiscrete": m15,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS 樣式滑桿"),
        "demoCupertinoSliderTitle": MessageLookupByLibrary.simpleMessage("滑桿"),
        "demoCupertinoSwitchDescription":
            MessageLookupByLibrary.simpleMessage("開關可以用來切換個別設定的開關狀態。"),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS 樣式開關"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "iOS 樣式底部導覽分頁列。顯示多個分頁，其中一個為使用中 (預設為第一個分頁)。"),
        "demoCupertinoTabBarSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS 樣式底部分頁列"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Tab bar"),
        "demoCupertinoTextFieldDescription":
            MessageLookupByLibrary.simpleMessage("文字欄位讓使用者利用實體鍵盤或螢幕鍵盤輸入文字。"),
        "demoCupertinoTextFieldPIN":
            MessageLookupByLibrary.simpleMessage("PIN"),
        "demoCupertinoTextFieldSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS 樣式文字欄位"),
        "demoCupertinoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Text fields"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "滑桿上列有特定範圍內的值，使用者可選擇其中一個值或某範圍的值。您可選擇滑桿的設計主題，亦可加以自訂。"),
        "demoCustomSlidersTitle": MessageLookupByLibrary.simpleMessage("自訂滑桿"),
        "demoDataTableDescription": MessageLookupByLibrary.simpleMessage(
            "資料表以列和欄的格狀形式展示資訊，用以整理資訊，方便查閱，讓使用者找出模式和分析資料。"),
        "demoDataTableSubtitle":
            MessageLookupByLibrary.simpleMessage("載有資訊的列和欄"),
        "demoDataTableTitle": MessageLookupByLibrary.simpleMessage("資料表"),
        "demoDatePickerDescription": MessageLookupByLibrary.simpleMessage(
            "顯示載有 Material Design 日期點選器的對話框。"),
        "demoDatePickerTitle": MessageLookupByLibrary.simpleMessage("日期點選器"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage("簡單、通知和全螢幕"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("對話框"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("API 說明文件"),
        "demoFilterChipDescription":
            MessageLookupByLibrary.simpleMessage("篩選器方塊使用標籤或說明文字篩選內容。"),
        "demoFilterChipTitle": MessageLookupByLibrary.simpleMessage("篩選器方塊"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "平面式按鈕，按下後會出現墨水擴散特效，但不會有升起效果。這類按鈕用於工具列、對話框和設有邊框間距的內嵌元素"),
        "demoFlatButtonTitle": MessageLookupByLibrary.simpleMessage("平面式按鈕"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "懸浮動作按鈕是個圓形圖示按鈕，會懸停在內容上，可用來在應用程式中執行一項主要動作。"),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("懸浮動作按鈕"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "您可以利用 fullscreenDialog 屬性指定接下來顯示的頁面是否顯示為全螢幕強制回應對話框"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("全螢幕"),
        "demoFullscreenTooltip": MessageLookupByLibrary.simpleMessage("全屏幕"),
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "格狀清單最適合用於展示同類資料，通常為圖片。格狀清單中的每個項目稱為圖塊。"),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("設有頁尾"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("設有頁首"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("只限圖片"),
        "demoGridListsSubtitle":
            MessageLookupByLibrary.simpleMessage("列和欄的版面配置"),
        "demoGridListsTitle": MessageLookupByLibrary.simpleMessage("格狀清單"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("資料"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "輸入方塊以精簡的形式顯示複雜的資訊，如實體 (人物、地點或事物) 或對話文字。"),
        "demoInputChipTitle": MessageLookupByLibrary.simpleMessage("輸入方塊"),
        "demoInvalidURL": MessageLookupByLibrary.simpleMessage("無法顯示網址："),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "一種 Material Design 直線進度指標，亦稱為進度列。"),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("直線進度指標"),
        "demoListsDescription":
            MessageLookupByLibrary.simpleMessage("這種固定高度的單列一般載有文字和在開頭或結尾載有圖示。"),
        "demoListsSecondary": MessageLookupByLibrary.simpleMessage("次行文字"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage("可捲動清單的版面配置"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("清單"),
        "demoMenuADisabledMenuItem":
            MessageLookupByLibrary.simpleMessage("已停用選單項目"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage("設有檢查清單選單的項目"),
        "demoMenuAnItemWithAContextMenuButton":
            MessageLookupByLibrary.simpleMessage("設有內容選單的項目"),
        "demoMenuAnItemWithASectionedMenu":
            MessageLookupByLibrary.simpleMessage("設有分類選單的項目"),
        "demoMenuAnItemWithASimpleMenu":
            MessageLookupByLibrary.simpleMessage("設有簡單選單的項目"),
        "demoMenuChecked": m16,
        "demoMenuContextMenuItemOne":
            MessageLookupByLibrary.simpleMessage("第一個內容選單項目"),
        "demoMenuContextMenuItemThree":
            MessageLookupByLibrary.simpleMessage("第三個內容選單項目"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "選單會在臨時界面中顯示選項清單，並會在使用者與按鈕、操作或其他控制項互動時出現。"),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("四"),
        "demoMenuGetLink": MessageLookupByLibrary.simpleMessage("取得連結"),
        "demoMenuItemValueOne": MessageLookupByLibrary.simpleMessage("第一個選單項目"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("第三個選單項目"),
        "demoMenuItemValueTwo": MessageLookupByLibrary.simpleMessage("第二個選單項目"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("一"),
        "demoMenuPreview": MessageLookupByLibrary.simpleMessage("預覽"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("移除"),
        "demoMenuSelected": m17,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("分享"),
        "demoMenuSubtitle": MessageLookupByLibrary.simpleMessage("選單按鈕和簡單選單"),
        "demoMenuThree": MessageLookupByLibrary.simpleMessage("三"),
        "demoMenuTitle": MessageLookupByLibrary.simpleMessage("選單"),
        "demoMenuTwo": MessageLookupByLibrary.simpleMessage("二"),
        "demoOneLineListsTitle": MessageLookupByLibrary.simpleMessage("單行"),
        "demoOptionsFeatureDescription":
            MessageLookupByLibrary.simpleMessage("輕按這裡即可查看此示範的可用選項。"),
        "demoOptionsFeatureTitle": MessageLookupByLibrary.simpleMessage("查看選項"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("選項"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "外框按鈕會在使用者按下時轉為不透明並升起。這類按鈕通常會與凸起的按鈕一同使用，用於指出次要的替代動作。"),
        "demoOutlineButtonTitle": MessageLookupByLibrary.simpleMessage("外框按鈕"),
        "demoPickersShowPicker": MessageLookupByLibrary.simpleMessage("顯示點選器"),
        "demoPickersSubtitle": MessageLookupByLibrary.simpleMessage("選擇日期和時間"),
        "demoPickersTitle": MessageLookupByLibrary.simpleMessage("點選器"),
        "demoProgressIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage("直線、環形、不確定"),
        "demoProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("進度指標"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "凸起的按鈕可為主要為平面的版面配置增添層次。這類按鈕可在擁擠或寬闊的空間中突顯其功能。"),
        "demoRaisedButtonTitle": MessageLookupByLibrary.simpleMessage("凸起的按鈕"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "滑桿上列有特定範圍內的值，兩端可用圖示來代表不同的值。滑桿最適合用來調整設定，例如調校音量或光暗，以及套用圖片濾鏡。"),
        "demoRangeSlidersTitle": MessageLookupByLibrary.simpleMessage("範圍滑桿"),
        "demoSectionedMenuTitle": MessageLookupByLibrary.simpleMessage("分類選單"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "選框讓使用者從一組選項中選擇多個選項。一般選框的數值為 true 或 false，而三值選框則可包括空白值。"),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("選框"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "圓形按鈕讓使用者從一組選項中選擇一個選項。如果您認為使用者需要並排查看所有選項並從中選擇一個選項，便可使用圓形按鈕。"),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("圓形按鈕"),
        "demoSelectionControlsSubtitle":
            MessageLookupByLibrary.simpleMessage("選框、圓形按鈕和開關"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "使用開關可切換個別設定選項的狀態。開關控制的選項及其狀態應以相應的內嵌標籤清晰標示。"),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("開關"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("選項控制項"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "簡單對話框讓使用者在幾個選項之間選擇。您可按需要為簡單對話框設定標題 (標題會在選項上方顯示)。"),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("簡單"),
        "demoSimpleMenuTitle": MessageLookupByLibrary.simpleMessage("簡單選單"),
        "demoSlidersContinuous": MessageLookupByLibrary.simpleMessage("連續"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage("自訂主題的連續範圍滑桿"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage("可編輯的連續數值"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "滑桿上列有特定範圍內的值，使用者可選擇其中一個值。滑桿最適合用來調整設定，例如調校音量或光暗，以及套用圖片濾鏡。"),
        "demoSlidersDiscrete": MessageLookupByLibrary.simpleMessage("不連續"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage("自訂主題的不連續滑桿"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage("可編輯的數值"),
        "demoSlidersSubtitle":
            MessageLookupByLibrary.simpleMessage("滑動來選擇值的小工具"),
        "demoSlidersTitle": MessageLookupByLibrary.simpleMessage("滑桿"),
        "demoSnackbarsAction":
            MessageLookupByLibrary.simpleMessage("您已按下資訊列動作。"),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("動作"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("顯示資訊列"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "資訊列會通知使用者有關應用程式已執行或將會執行的程序。它們會在螢幕底部短暫出現，並不會干擾使用者體驗，同時無需使用者輸入任何指令便會消失。"),
        "demoSnackbarsSubtitle":
            MessageLookupByLibrary.simpleMessage("資訊列會在螢幕底部顯示訊息"),
        "demoSnackbarsText": MessageLookupByLibrary.simpleMessage("這是資訊列。"),
        "demoSnackbarsTitle": MessageLookupByLibrary.simpleMessage("資訊列"),
        "demoTabsDescription":
            MessageLookupByLibrary.simpleMessage("分頁可整理不同畫面、資料集及其他互動的內容。"),
        "demoTabsNonScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Non-scrolling"),
        "demoTabsScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Scrolling"),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage("可獨立捲動檢視的分頁"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("分頁"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "文字欄位讓使用者將文字輸入至使用者界面，通常在表格和對話框中出現。"),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("電郵"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("請輸入密碼。"),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### - 請輸入美國的電話號碼。"),
        "demoTextFieldFormErrors":
            MessageLookupByLibrary.simpleMessage("在提交前，請修正以紅色標示的錯誤。"),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("隱藏密碼"),
        "demoTextFieldKeepItShort":
            MessageLookupByLibrary.simpleMessage("保持精簡，這只是示範。"),
        "demoTextFieldLifeStory": MessageLookupByLibrary.simpleMessage("生平事跡"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("名稱*"),
        "demoTextFieldNameHasPhoneNumber": m18,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("必須提供名稱。"),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("最多 8 個字元"),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage("請只輸入字母。"),
        "demoTextFieldPassword": MessageLookupByLibrary.simpleMessage("密碼*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("密碼不相符"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("電話號碼*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("* 代表必填欄位"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("再次輸入密碼*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("薪金"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("顯示密碼"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("提交"),
        "demoTextFieldSubtitle":
            MessageLookupByLibrary.simpleMessage("單行可編輯的文字和數字"),
        "demoTextFieldTellUsAboutYourself":
            MessageLookupByLibrary.simpleMessage("自我介紹 (例如您的職業或興趣)"),
        "demoTextFieldTitle": MessageLookupByLibrary.simpleMessage("文字欄位"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("美元"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("如何稱呼您？"),
        "demoTextFieldWhereCanWeReachYou":
            MessageLookupByLibrary.simpleMessage("如何聯絡您？"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("您的電郵地址"),
        "demoTimePickerDescription": MessageLookupByLibrary.simpleMessage(
            "顯示載有 Material Design 時間點選器的對話框。"),
        "demoTimePickerTitle": MessageLookupByLibrary.simpleMessage("時間點選器"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "切換按鈕可用於將相關的選項分組。為突顯相關的切換按鈕群組，單一群組應共用同一個容器"),
        "demoToggleButtonTitle": MessageLookupByLibrary.simpleMessage("切換按鈕"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "附帶文字標籤的提示，用於說明按鈕功能或其他使用者介面的操作。提示會在使用者將滑鼠游標移至、對準或長按元素時顯示說明文字。"),
        "demoTooltipInstructions":
            MessageLookupByLibrary.simpleMessage("長按或將滑鼠游標懸停時便會顯示提示。"),
        "demoTooltipSubtitle":
            MessageLookupByLibrary.simpleMessage("長按或將滑鼠游標懸停時顯示的短訊息"),
        "demoTooltipTitle": MessageLookupByLibrary.simpleMessage("提示"),
        "demoTwoLineListsTitle": MessageLookupByLibrary.simpleMessage("雙行"),
        "demoTypographyDescription":
            MessageLookupByLibrary.simpleMessage("在質感設計所定義的不同排版樣式。"),
        "demoTypographySubtitle":
            MessageLookupByLibrary.simpleMessage("所有預先定義的文字樣式"),
        "demoTypographyTitle": MessageLookupByLibrary.simpleMessage("排版"),
        "dialogAddAccount": MessageLookupByLibrary.simpleMessage("新增帳戶"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("同意"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("取消"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("不同意"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("捨棄"),
        "dialogDiscardTitle": MessageLookupByLibrary.simpleMessage("要捨棄草稿嗎？"),
        "dialogFullscreenDescription":
            MessageLookupByLibrary.simpleMessage("全螢幕對話框示範"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("儲存"),
        "dialogFullscreenTitle": MessageLookupByLibrary.simpleMessage("全螢幕對話框"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "允許 Google 協助應用程式判斷您的位置。這麼做會將匿名的位置資料傳送給 Google (即使您未執行任何應用程式)。"),
        "dialogLocationTitle":
            MessageLookupByLibrary.simpleMessage("要使用 Google 的定位服務嗎？"),
        "dialogSelectedOption": m19,
        "dialogSetBackup": MessageLookupByLibrary.simpleMessage("設定備份帳戶"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("顯示對話框"),
        "dismiss": MessageLookupByLibrary.simpleMessage("關閉"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("STYLES & OTHER"),
        "homeHeaderCategories": MessageLookupByLibrary.simpleMessage("類別"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("相片集"),
        "placeBeach": MessageLookupByLibrary.simpleMessage("海灘"),
        "placeBronzeWorks": MessageLookupByLibrary.simpleMessage("青銅廠"),
        "placeChennai": MessageLookupByLibrary.simpleMessage("欽奈"),
        "placeChettinad": MessageLookupByLibrary.simpleMessage("切蒂納德"),
        "placeFisherman": MessageLookupByLibrary.simpleMessage("漁夫"),
        "placeFlowerMarket": MessageLookupByLibrary.simpleMessage("花墟"),
        "placeLunchPrep": MessageLookupByLibrary.simpleMessage("準備午餐"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("市場"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("本地治里"),
        "placeSaltFarm": MessageLookupByLibrary.simpleMessage("鹽田"),
        "placeScooters": MessageLookupByLibrary.simpleMessage("綿羊仔電單車"),
        "placeSilkMaker": MessageLookupByLibrary.simpleMessage("製絲人"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("坦賈武爾"),
        "placeThanjavurTemple": MessageLookupByLibrary.simpleMessage("坦賈武爾寺廟"),
        "rallyAccountAmount": m20,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("買車儲蓄"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("支票戶口"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("家庭儲蓄"),
        "rallyAccountDataVacation": MessageLookupByLibrary.simpleMessage("度假"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("帳戶擁有者"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("每年收益率"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("去年已付利息"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("利率"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("年初至今利息"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("下一張結單"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("總計"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("帳戶"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("通知"),
        "rallyAlertsMessageATMFees": m21,
        "rallyAlertsMessageCheckingAccount": m22,
        "rallyAlertsMessageHeadsUpShopping": m23,
        "rallyAlertsMessageSpentOnRestaurants": m24,
        "rallyAlertsMessageUnassignedTransactions": m25,
        "rallyBillAmount": m26,
        "rallyBills": MessageLookupByLibrary.simpleMessage("帳單"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("到期"),
        "rallyBudgetAmount": m27,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("服飾"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("咖啡店"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("雜貨"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("餐廳"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("(餘額)"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("預算"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage("個人理財應用程式"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("(餘額)"),
        "rallyLoginButtonLogin": MessageLookupByLibrary.simpleMessage("登入"),
        "rallyLoginLabelLogin": MessageLookupByLibrary.simpleMessage("登入"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("登入 Rally"),
        "rallyLoginNoAccount": MessageLookupByLibrary.simpleMessage("還未有帳戶嗎？"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("密碼"),
        "rallyLoginRememberMe": MessageLookupByLibrary.simpleMessage("記住我"),
        "rallyLoginSignUp": MessageLookupByLibrary.simpleMessage("申請"),
        "rallyLoginUsername": MessageLookupByLibrary.simpleMessage("使用者名稱"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("查看全部"),
        "rallySeeAllAccounts": MessageLookupByLibrary.simpleMessage("查看所有帳戶"),
        "rallySeeAllBills": MessageLookupByLibrary.simpleMessage("查看所有帳單"),
        "rallySeeAllBudgets": MessageLookupByLibrary.simpleMessage("查看所有財務預算"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("尋找自動櫃員機"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("說明"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("管理帳戶"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("通知"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("無紙化設定"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("密碼及 Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("個人資料"),
        "rallySettingsSignOut": MessageLookupByLibrary.simpleMessage("登出"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("稅務文件"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("帳戶"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("帳單"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("預算"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("概覽"),
        "rallyTitleSettings": MessageLookupByLibrary.simpleMessage("設定"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("關於 Flutter Gallery"),
        "settingsAttribution":
            MessageLookupByLibrary.simpleMessage("由倫敦的 TOASTER 設計"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("閂咗設定"),
        "settingsButtonLabel": MessageLookupByLibrary.simpleMessage("設定"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("深色"),
        "settingsFeedback": MessageLookupByLibrary.simpleMessage("傳送意見"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("淺色"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("語言代碼"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("平台運作方式"),
        "settingsSlowMotion": MessageLookupByLibrary.simpleMessage("慢動作"),
        "settingsSystemDefault": MessageLookupByLibrary.simpleMessage("系統"),
        "settingsTextDirection": MessageLookupByLibrary.simpleMessage("文字方向"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("由左至右顯示文字"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("根據語言代碼設定"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("由右至左顯示文字"),
        "settingsTextScaling": MessageLookupByLibrary.simpleMessage("文字比例"),
        "settingsTextScalingHuge": MessageLookupByLibrary.simpleMessage("巨大"),
        "settingsTextScalingLarge": MessageLookupByLibrary.simpleMessage("大"),
        "settingsTextScalingNormal": MessageLookupByLibrary.simpleMessage("中"),
        "settingsTextScalingSmall": MessageLookupByLibrary.simpleMessage("小"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("主題"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("設定"),
        "shrineCancelButtonCaption": MessageLookupByLibrary.simpleMessage("取消"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("清除購物車"),
        "shrineCartItemCount": m28,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("購物車"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("運費："),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("小計："),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("稅項："),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("總計"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("配飾"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("全部"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("服飾"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("家居"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage("時尚零售應用程式"),
        "shrineLoginPasswordLabel": MessageLookupByLibrary.simpleMessage("密碼"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("使用者名稱"),
        "shrineLogoutButtonCaption": MessageLookupByLibrary.simpleMessage("登出"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("選單"),
        "shrineNextButtonCaption": MessageLookupByLibrary.simpleMessage("繼續"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("藍色石製咖啡杯"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("櫻桃色圓擺 T 恤"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("水手布餐巾"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("水手布恤衫"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("經典白領上衣"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("淺啡色毛衣"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("銅製儲物架"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("幼紋 T 恤"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("園藝繩索"),
        "shrineProductGatsbyHat": MessageLookupByLibrary.simpleMessage("報童帽"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("紳士風格外套"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("鍍金書桌 3 件裝"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("橙褐色圍巾"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("灰色鬆身背心"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Hurrahs 茶具套裝"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("廚房用品 4 件裝"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("軍藍色長褲"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("灰色長袍"),
        "shrineProductPrice": m29,
        "shrineProductQuantity": m30,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("4 座位桌子"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("雨水盤"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("與 Ramona 跨界合作"),
        "shrineProductSeaTunic": MessageLookupByLibrary.simpleMessage("海藍色長袍"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("海藍色毛衣"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("露膊 T 恤"),
        "shrineProductShrugBag": MessageLookupByLibrary.simpleMessage("單肩袋"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Soothe 瓷器套裝"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Stella 太陽眼鏡"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Strut 耳環"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("多肉植物盆栽"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("防曬長裙"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Surf and perf 恤衫"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Vagabond 背囊"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("校園風襪子"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Walter 亨利衫 (白色)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("編織鑰匙扣"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("白色細條紋恤衫"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Whitney 腰帶"),
        "shrineScreenReaderCart": m31,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("加入購物車"),
        "shrineScreenReaderRemoveProductButton": m32,
        "shrineTooltipCloseCart": MessageLookupByLibrary.simpleMessage("閂埋購物車"),
        "shrineTooltipCloseMenu": MessageLookupByLibrary.simpleMessage("閂埋選單"),
        "shrineTooltipOpenMenu": MessageLookupByLibrary.simpleMessage("打開選單"),
        "shrineTooltipRemoveItem": MessageLookupByLibrary.simpleMessage("移除項目"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("搜尋"),
        "shrineTooltipSettings": MessageLookupByLibrary.simpleMessage("設定"),
        "signIn": MessageLookupByLibrary.simpleMessage("登入"),
        "starterAppDescription":
            MessageLookupByLibrary.simpleMessage("回應式入門版面配置"),
        "starterAppDrawerItem": m33,
        "starterAppGenericBody": MessageLookupByLibrary.simpleMessage("內文"),
        "starterAppGenericButton": MessageLookupByLibrary.simpleMessage("按鈕"),
        "starterAppGenericHeadline": MessageLookupByLibrary.simpleMessage("標題"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("副標題"),
        "starterAppGenericTitle": MessageLookupByLibrary.simpleMessage("標題"),
        "starterAppTitle": MessageLookupByLibrary.simpleMessage("入門應用程式"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("新增"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("我的最愛"),
        "starterAppTooltipSearch": MessageLookupByLibrary.simpleMessage("搜尋"),
        "starterAppTooltipShare": MessageLookupByLibrary.simpleMessage("分享")
      };
}
