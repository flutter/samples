// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh locale. All the
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
  String get localeName => 'zh';

  static m0(value) => "要查看此应用的源代码，请访问 ${value}。";

  static m1(title) => "“${title}”标签页的占位符";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: '无餐厅', one: '1 家餐厅', other: '${totalRestaurants} 家餐厅')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: '直达', one: '经停 1 次', other: '经停 ${numberOfStops} 次')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: '无可租赁的房屋', one: '1 处可租赁的房屋', other: '${totalProperties} 处可租赁的房屋')}";

  static m5(value) => "项 ${value}";

  static m6(error) => "未能复制到剪贴板：${error}";

  static m7(value) => "连续：${value}";

  static m8(value) => "间续：${value}";

  static m9(name, phoneNumber) => "${name}的手机号码是 ${phoneNumber}";

  static m10(value) => "您已选择：“${value}”";

  static m11(accountName, accountNumber, amount) =>
      "账号为 ${accountNumber} 的${accountName}账户中的存款金额为 ${amount}。";

  static m12(amount) => "本月您已支付 ${amount}的 ATM 取款手续费";

  static m13(percent) => "做得好！您的支票帐号余额比上个月多 ${percent}。";

  static m14(percent) => "注意，您已使用本月购物预算的 ${percent}。";

  static m15(amount) => "本周您已在餐馆花费 ${amount}。";

  static m16(count) =>
      "${Intl.plural(count, one: '提高您可能获享的减免税额！为 1 笔未指定类别的交易指定类别。', other: '提高您可能获享的减免税额！为 ${count} 笔未指定类别的交易指定类别。')}";

  static m17(billName, date, amount) =>
      "${billName}帐单的付款日期为 ${date}，应付金额为 ${amount}。";

  static m18(budgetName, amountUsed, amountTotal, amountLeft) =>
      "${budgetName}预算的总金额为 ${amountTotal}，已用 ${amountUsed}，剩余 ${amountLeft}";

  static m19(quantity) =>
      "${Intl.plural(quantity, zero: '无商品', one: '1 件商品', other: '${quantity} 件商品')}";

  static m20(price) => "x ${price}";

  static m21(quantity) => "数量：${quantity}";

  static m22(quantity) =>
      "${Intl.plural(quantity, zero: '购物车，无商品', one: '购物车，1 件商品', other: '购物车，${quantity} 件商品')}";

  static m23(product) => "移除${product}";

  static m24(value) => "项 ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo":
            MessageLookupByLibrary.simpleMessage("Flutter 示例 GitHub 代码库"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("返回 Flutter Gallery"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("帐号"),
        "bottomNavigationAlarmTab": MessageLookupByLibrary.simpleMessage("闹钟"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("日历"),
        "bottomNavigationCameraTab": MessageLookupByLibrary.simpleMessage("相机"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("注释"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("按钮"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("创建"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("骑车"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("电梯"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("壁炉"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("大"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("中"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("小"),
        "chipTurnOnLights": MessageLookupByLibrary.simpleMessage("开灯"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("洗衣机"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("琥珀色"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("蓝色"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("蓝灰色"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("棕色"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("青色"),
        "colorsDeepOrange": MessageLookupByLibrary.simpleMessage("深橙色"),
        "colorsDeepPurple": MessageLookupByLibrary.simpleMessage("深紫色"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("绿色"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("灰色"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("靛青色"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("浅蓝色"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("浅绿色"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("绿黄色"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("橙色"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("粉红色"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("紫色"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("红色"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("青色"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("黄色"),
        "craneDescription": MessageLookupByLibrary.simpleMessage("个性化旅行应用"),
        "craneEat": MessageLookupByLibrary.simpleMessage("用餐"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("意大利那不勒斯"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("燃木烤箱中的披萨"),
        "craneEat1": MessageLookupByLibrary.simpleMessage("美国达拉斯"),
        "craneEat10": MessageLookupByLibrary.simpleMessage("葡萄牙里斯本"),
        "craneEat10SemanticLabel":
            MessageLookupByLibrary.simpleMessage("拿着超大熏牛肉三明治的女子"),
        "craneEat1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("摆着就餐用高脚椅的空荡荡的酒吧"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("阿根廷科尔多瓦"),
        "craneEat2SemanticLabel": MessageLookupByLibrary.simpleMessage("汉堡包"),
        "craneEat3": MessageLookupByLibrary.simpleMessage("美国波特兰"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("韩式玉米卷饼"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("法国巴黎"),
        "craneEat4SemanticLabel": MessageLookupByLibrary.simpleMessage("巧克力甜点"),
        "craneEat5": MessageLookupByLibrary.simpleMessage("韩国首尔"),
        "craneEat5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("充满艺术气息的餐厅座位区"),
        "craneEat6": MessageLookupByLibrary.simpleMessage("美国西雅图"),
        "craneEat6SemanticLabel": MessageLookupByLibrary.simpleMessage("虾料理"),
        "craneEat7": MessageLookupByLibrary.simpleMessage("美国纳什维尔"),
        "craneEat7SemanticLabel": MessageLookupByLibrary.simpleMessage("面包店门口"),
        "craneEat8": MessageLookupByLibrary.simpleMessage("美国亚特兰大"),
        "craneEat8SemanticLabel": MessageLookupByLibrary.simpleMessage("一盘小龙虾"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("西班牙马德里"),
        "craneEat9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("摆有甜点的咖啡厅柜台"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage("按目的地浏览餐厅"),
        "craneFly": MessageLookupByLibrary.simpleMessage("航班"),
        "craneFly0": MessageLookupByLibrary.simpleMessage("美国阿斯彭"),
        "craneFly0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("旁有常青树的雪中小屋"),
        "craneFly1": MessageLookupByLibrary.simpleMessage("美国大苏尔"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("埃及开罗"),
        "craneFly10SemanticLabel":
            MessageLookupByLibrary.simpleMessage("日落时分的爱资哈尔清真寺塔楼"),
        "craneFly11": MessageLookupByLibrary.simpleMessage("葡萄牙里斯本"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("海上的砖砌灯塔"),
        "craneFly12": MessageLookupByLibrary.simpleMessage("美国纳帕"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("旁有棕榈树的泳池"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("印度尼西亚巴厘岛"),
        "craneFly13SemanticLabel":
            MessageLookupByLibrary.simpleMessage("旁有棕榈树的海滨泳池"),
        "craneFly1SemanticLabel": MessageLookupByLibrary.simpleMessage("野外的帐篷"),
        "craneFly2": MessageLookupByLibrary.simpleMessage("尼泊尔坤布谷"),
        "craneFly2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("雪山前的经幡"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("秘鲁马丘比丘"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("马丘比丘古城"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("马尔代夫马累"),
        "craneFly4SemanticLabel": MessageLookupByLibrary.simpleMessage("水上小屋"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("瑞士维兹诺"),
        "craneFly5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("坐落在山前的湖畔酒店"),
        "craneFly6": MessageLookupByLibrary.simpleMessage("墨西哥的墨西哥城"),
        "craneFly6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("墨西哥城艺术宫的鸟瞰图"),
        "craneFly7": MessageLookupByLibrary.simpleMessage("美国拉什莫尔山"),
        "craneFly7SemanticLabel": MessageLookupByLibrary.simpleMessage("拉什莫尔山"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("新加坡"),
        "craneFly8SemanticLabel": MessageLookupByLibrary.simpleMessage("巨树丛林"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("古巴哈瓦那"),
        "craneFly9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("倚靠在一辆蓝色古董车上的男子"),
        "craneFlyStops": m3,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage("按目的地浏览航班"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("选择日期"),
        "craneFormDates": MessageLookupByLibrary.simpleMessage("选择日期"),
        "craneFormDestination": MessageLookupByLibrary.simpleMessage("选择目的地"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("小饭馆"),
        "craneFormLocation": MessageLookupByLibrary.simpleMessage("选择位置"),
        "craneFormOrigin": MessageLookupByLibrary.simpleMessage("选择出发地"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("选择时间"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("旅行者人数"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("睡眠"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("马尔代夫马累"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("水上小屋"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage("美国阿斯彭"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("埃及开罗"),
        "craneSleep10SemanticLabel":
            MessageLookupByLibrary.simpleMessage("日落时分的爱资哈尔清真寺塔楼"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("台湾台北"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("台北 101 摩天大楼"),
        "craneSleep1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("旁有常青树的雪中小屋"),
        "craneSleep2": MessageLookupByLibrary.simpleMessage("秘鲁马丘比丘"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("马丘比丘古城"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("古巴哈瓦那"),
        "craneSleep3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("倚靠在一辆蓝色古董车上的男子"),
        "craneSleep4": MessageLookupByLibrary.simpleMessage("瑞士维兹诺"),
        "craneSleep4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("坐落在山前的湖畔酒店"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage("美国大苏尔"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("野外的帐篷"),
        "craneSleep6": MessageLookupByLibrary.simpleMessage("美国纳帕"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("旁有棕榈树的泳池"),
        "craneSleep7": MessageLookupByLibrary.simpleMessage("葡萄牙波尔图"),
        "craneSleep7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("里贝拉广场中五颜六色的公寓"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("墨西哥图伦"),
        "craneSleep8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("坐落于海滩上方一处悬崖上的玛雅遗址"),
        "craneSleep9": MessageLookupByLibrary.simpleMessage("葡萄牙里斯本"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("海上的砖砌灯塔"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage("按目的地浏览住宿地"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("允许"),
        "cupertinoAlertApplePie": MessageLookupByLibrary.simpleMessage("苹果派"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("取消"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("奶酪蛋糕"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("巧克力布朗尼"),
        "cupertinoAlertDessertDescription":
            MessageLookupByLibrary.simpleMessage(
                "请从下面的列表中选择您最喜爱的甜点类型。系统将根据您的选择自定义您所在地区的推荐餐厅列表。"),
        "cupertinoAlertDiscard": MessageLookupByLibrary.simpleMessage("舍弃"),
        "cupertinoAlertDontAllow": MessageLookupByLibrary.simpleMessage("不允许"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("选择最喜爱的甜点"),
        "cupertinoAlertLocationDescription":
            MessageLookupByLibrary.simpleMessage(
                "您当前所在的位置将显示在地图上，并用于提供路线、附近位置的搜索结果和预计的行程时间。"),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "是否允许“Google 地图”在您使用该应用时获取您的位置信息？"),
        "cupertinoAlertTiramisu": MessageLookupByLibrary.simpleMessage("提拉米苏"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("按钮"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("设有背景"),
        "cupertinoShowAlert": MessageLookupByLibrary.simpleMessage("显示提醒"),
        "cupertinoTabBarChatTab": MessageLookupByLibrary.simpleMessage("聊天"),
        "cupertinoTabBarHomeTab": MessageLookupByLibrary.simpleMessage("首页"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("个人资料"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "操作信息块是一组选项，可触发与主要内容相关的操作。操作信息块应以动态和与上下文相关的形式显示在界面中。"),
        "demoActionChipTitle": MessageLookupByLibrary.simpleMessage("操作信息块"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "提醒对话框会通知用户需要知悉的情况。您可以选择性地为提醒对话框提供标题和操作列表。"),
        "demoAlertDialogTitle": MessageLookupByLibrary.simpleMessage("提醒"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("带有标题的提醒"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "底部导航栏会在屏幕底部显示三到五个目标位置。各个目标位置会显示为图标和文本标签（文本标签选择性显示）。用户点按底部导航栏中的图标后，系统会将用户转至与该图标关联的顶级导航目标位置。"),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("常驻标签页"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("已选择标签"),
        "demoBottomNavigationSubtitle":
            MessageLookupByLibrary.simpleMessage("采用交替淡变视图的底部导航栏"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("底部导航栏"),
        "demoBottomSheetAddLabel": MessageLookupByLibrary.simpleMessage("添加"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("显示底部工作表"),
        "demoBottomSheetHeader": MessageLookupByLibrary.simpleMessage("页眉"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "模态底部工作表可替代菜单或对话框，并且会阻止用户与应用的其余部分互动。"),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("模态底部工作表"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "常驻底部工作表会显示应用主要内容的补充信息。即使在用户与应用的其他部分互动时，常驻底部工作表也会一直显示。"),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("常驻底部工作表"),
        "demoBottomSheetSubtitle":
            MessageLookupByLibrary.simpleMessage("常驻底部工作表和模态底部工作表"),
        "demoBottomSheetTitle": MessageLookupByLibrary.simpleMessage("底部工作表"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("文本字段"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage("平面、凸起、轮廓等"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("按钮"),
        "demoChipSubtitle":
            MessageLookupByLibrary.simpleMessage("代表输入、属性或操作的精简元素"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("信息块"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "选择信息块代表一组选择中的一项。选择信息块包含相关的说明性文字或类别。"),
        "demoChoiceChipTitle": MessageLookupByLibrary.simpleMessage("选择信息块"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("代码示例"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("已复制到剪贴板。"),
        "demoCodeViewerCopyAll": MessageLookupByLibrary.simpleMessage("全部复制"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "代表 Material Design 调色板的颜色和色样常量。"),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage("所有预定义的颜色"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("颜色"),
        "demoCupertinoActionSheetDescription":
            MessageLookupByLibrary.simpleMessage(
                "操作表是一种特定样式的提醒，它会根据目前的使用情况向用户显示一组选项（最少两个选项）。操作表可有标题、附加消息和操作列表。"),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("操作表"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("仅限提醒按钮"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("带有按钮的提醒"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "提醒对话框会通知用户需要知悉的情况。您可以选择性地为提醒对话框提供标题、内容和操作列表。标题会显示在内容上方，操作则会显示在内容下方。"),
        "demoCupertinoAlertTitle": MessageLookupByLibrary.simpleMessage("提醒"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("带有标题的提醒"),
        "demoCupertinoAlertsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS 样式的提醒对话框"),
        "demoCupertinoAlertsTitle": MessageLookupByLibrary.simpleMessage("提醒"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "iOS 样式的按钮，这类按钮所采用的文本和/或图标会在用户轻触按钮时淡出和淡入，并可选择性地加入背景。"),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS 样式的按钮"),
        "demoCupertinoButtonsTitle": MessageLookupByLibrary.simpleMessage("按钮"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "用于在多个互斥的选项之间做选择。分段控件中的任一选项被选中后，该控件中的其余选项便无法被选中。"),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS 样式的分段控件"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("分段控件"),
        "demoCupertinoSliderContinuous": m7,
        "demoCupertinoSliderDescription":
            MessageLookupByLibrary.simpleMessage("滑块可用于从一组连续或间续的值中选择值。"),
        "demoCupertinoSliderDiscrete": m8,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS 样式的滑块"),
        "demoCupertinoSliderTitle": MessageLookupByLibrary.simpleMessage("滑块"),
        "demoCupertinoSwitchDescription":
            MessageLookupByLibrary.simpleMessage("开关用于切换单个设置的开启/关闭状态。"),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS 样式的开关"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "iOS 样式的底部导航标签页栏。显示多个标签页，其中一个标签页（默认为第一个标签页）处于活动状态。"),
        "demoCupertinoTabBarSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS 样式的底部标签页栏"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("标签页栏"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage("简易、提醒和全屏"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("对话框"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("API 文档"),
        "demoFilterChipDescription":
            MessageLookupByLibrary.simpleMessage("过滤条件信息块使用标签或说明性字词来过滤内容。"),
        "demoFilterChipTitle": MessageLookupByLibrary.simpleMessage("过滤条件信息块"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "平面按钮，按下后会出现墨水飞溅效果，但按钮本身没有升起效果。这类按钮适用于工具栏、对话框和设有内边距的内嵌元素"),
        "demoFlatButtonTitle": MessageLookupByLibrary.simpleMessage("平面按钮"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "悬浮操作按钮是一种圆形图标按钮，它会悬停在内容上，可用来在应用中执行一项主要操作。"),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("悬浮操作按钮"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "您可以利用 fullscreenDialog 属性指定接下来显示的页面是否为全屏模态对话框"),
        "demoFullscreenDialogTitle": MessageLookupByLibrary.simpleMessage("全屏"),
        "demoFullscreenTooltip": MessageLookupByLibrary.simpleMessage("全屏"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("信息"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "输入信息块以精简的形式显示一段复杂的信息，例如实体（人物、地点或内容）或对话文字。"),
        "demoInputChipTitle": MessageLookupByLibrary.simpleMessage("输入信息块"),
        "demoInvalidURL": MessageLookupByLibrary.simpleMessage("无法显示网址。"),
        "demoListsDescription":
            MessageLookupByLibrary.simpleMessage("单个固定高度的行通常包含一些文本以及行首或行尾的图标。"),
        "demoListsSecondary": MessageLookupByLibrary.simpleMessage("第二行文本"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage("可滚动列表布局"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("列表"),
        "demoOneLineListsTitle": MessageLookupByLibrary.simpleMessage("一行"),
        "demoOptionsFeatureDescription":
            MessageLookupByLibrary.simpleMessage("点按此处即可查看此演示可用的选项。"),
        "demoOptionsFeatureTitle": MessageLookupByLibrary.simpleMessage("查看选项"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("选项"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "轮廓按钮会在用户按下后变为不透明并升起。这类按钮通常会与凸起按钮配对使用，用于指示其他的次要操作。"),
        "demoOutlineButtonTitle": MessageLookupByLibrary.simpleMessage("轮廓按钮"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "凸起按钮能为以平面内容为主的布局增添立体感。此类按钮可突出强调位于拥挤或宽阔空间中的功能。"),
        "demoRaisedButtonTitle": MessageLookupByLibrary.simpleMessage("凸起按钮"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "复选框可让用户从一系列选项中选择多个选项。常规复选框的值为 true 或 false，三态复选框的值还可为 null。"),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("复选框"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "单选按钮可让用户从一系列选项中选择一个选项。设置排斥性选择时，如果您觉得用户需要并排看到所有可用选项，可以使用单选按钮。"),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("单选"),
        "demoSelectionControlsSubtitle":
            MessageLookupByLibrary.simpleMessage("复选框、单选按钮和开关"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "开关用于切换单个设置选项的状态。开关控制的选项和选项所处状态应通过相应的内嵌标签标明。"),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("开关"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("选择控件"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "简易对话框可以让用户在多个选项之间做选择。您可以选择性地为简易对话框提供标题（标题会显示在选项上方）。"),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("简洁"),
        "demoSnackbarsAction":
            MessageLookupByLibrary.simpleMessage("您已按下该信息提示控件上的操作按钮。"),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("操作"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("显示信息提示控件"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "信息提示控件会告知用户应用已执行或将要执行的程序。它们会暂时性显示在屏幕底部，不会干扰用户体验，并且不需要用户输入任何内容就会消失。"),
        "demoSnackbarsSubtitle":
            MessageLookupByLibrary.simpleMessage("信息提示控件会在屏幕底部显示信息"),
        "demoSnackbarsText": MessageLookupByLibrary.simpleMessage("这是信息提示控件。"),
        "demoSnackbarsTitle": MessageLookupByLibrary.simpleMessage("信息提示控件"),
        "demoTabsDescription":
            MessageLookupByLibrary.simpleMessage("标签页用于整理各个屏幕、数据集和其他互动中的内容。"),
        "demoTabsSubtitle":
            MessageLookupByLibrary.simpleMessage("包含可单独滚动的视图的标签页"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("标签页"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "文本字段可让用户在界面中输入文本。这些字段通常出现在表单和对话框中。"),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("电子邮件"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("请输入密码。"),
        "demoTextFieldEnterUSPhoneNumber":
            MessageLookupByLibrary.simpleMessage("(###) ###-#### - 请输入美国手机号码。"),
        "demoTextFieldFormErrors":
            MessageLookupByLibrary.simpleMessage("请先修正红色错误，然后再提交。"),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("隐藏密码"),
        "demoTextFieldKeepItShort":
            MessageLookupByLibrary.simpleMessage("请确保内容简洁，因为这只是一个演示。"),
        "demoTextFieldLifeStory": MessageLookupByLibrary.simpleMessage("生平事迹"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("姓名*"),
        "demoTextFieldNameHasPhoneNumber": m9,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("必须填写姓名。"),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("请勿超过 8 个字符。"),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage("请只输入字母字符。"),
        "demoTextFieldPassword": MessageLookupByLibrary.simpleMessage("密码*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("密码不一致"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("手机号码*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("* 表示必填字段"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("再次输入密码*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("工资"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("显示密码"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("提交"),
        "demoTextFieldSubtitle":
            MessageLookupByLibrary.simpleMessage("单行可修改的文字和数字"),
        "demoTextFieldTellUsAboutYourself":
            MessageLookupByLibrary.simpleMessage("请介绍一下您自己（例如，写出您的职业或爱好）"),
        "demoTextFieldTitle": MessageLookupByLibrary.simpleMessage("文本字段"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("美元"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("人们如何称呼您？"),
        "demoTextFieldWhereCanWeReachYou":
            MessageLookupByLibrary.simpleMessage("我们如何与您联系？"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("您的电子邮件地址"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "切换按钮可用于对相关选项进行分组。为了凸显相关切换按钮的群组，一个群组应该共用一个常用容器"),
        "demoToggleButtonTitle": MessageLookupByLibrary.simpleMessage("切换按钮"),
        "demoTwoLineListsTitle": MessageLookupByLibrary.simpleMessage("两行"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Material Design 中各种字体排版样式的定义。"),
        "demoTypographySubtitle":
            MessageLookupByLibrary.simpleMessage("所有预定义文本样式"),
        "demoTypographyTitle": MessageLookupByLibrary.simpleMessage("字体排版"),
        "dialogAddAccount": MessageLookupByLibrary.simpleMessage("添加帐号"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("同意"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("取消"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("不同意"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("舍弃"),
        "dialogDiscardTitle": MessageLookupByLibrary.simpleMessage("要舍弃草稿吗？"),
        "dialogFullscreenDescription":
            MessageLookupByLibrary.simpleMessage("全屏对话框演示"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("保存"),
        "dialogFullscreenTitle": MessageLookupByLibrary.simpleMessage("全屏对话框"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "让 Google 协助应用判断位置，即代表系统会将匿名的位置数据发送给 Google（即使设备并没有运行任何应用）。"),
        "dialogLocationTitle":
            MessageLookupByLibrary.simpleMessage("要使用 Google 的位置信息服务吗？"),
        "dialogSelectedOption": m10,
        "dialogSetBackup": MessageLookupByLibrary.simpleMessage("设置备份帐号"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("显示对话框"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("参考资料样式和媒体"),
        "homeHeaderCategories": MessageLookupByLibrary.simpleMessage("类别"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("图库"),
        "rallyAccountAmount": m11,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("购车储蓄"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("支票帐号"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("家庭储蓄"),
        "rallyAccountDataVacation": MessageLookupByLibrary.simpleMessage("度假"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("帐号所有者"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("年收益率"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("去年支付的利息"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("利率"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("年初至今的利息"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("下一个对帐单"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("总计"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("帐号"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("提醒"),
        "rallyAlertsMessageATMFees": m12,
        "rallyAlertsMessageCheckingAccount": m13,
        "rallyAlertsMessageHeadsUpShopping": m14,
        "rallyAlertsMessageSpentOnRestaurants": m15,
        "rallyAlertsMessageUnassignedTransactions": m16,
        "rallyBillAmount": m17,
        "rallyBills": MessageLookupByLibrary.simpleMessage("帐单"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("应付"),
        "rallyBudgetAmount": m18,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("服饰"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("咖啡店"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("杂货"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("餐馆"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("剩余"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("预算"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage("个人理财应用"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("剩余"),
        "rallyLoginButtonLogin": MessageLookupByLibrary.simpleMessage("登录"),
        "rallyLoginLabelLogin": MessageLookupByLibrary.simpleMessage("登录"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("登录 Rally"),
        "rallyLoginNoAccount": MessageLookupByLibrary.simpleMessage("还没有帐号？"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("密码"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("记住我的登录信息"),
        "rallyLoginSignUp": MessageLookupByLibrary.simpleMessage("注册"),
        "rallyLoginUsername": MessageLookupByLibrary.simpleMessage("用户名"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("查看全部"),
        "rallySeeAllAccounts": MessageLookupByLibrary.simpleMessage("查看所有账户"),
        "rallySeeAllBills": MessageLookupByLibrary.simpleMessage("查看所有帐单"),
        "rallySeeAllBudgets": MessageLookupByLibrary.simpleMessage("查看所有预算"),
        "rallySettingsFindAtms": MessageLookupByLibrary.simpleMessage("查找 ATM"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("帮助"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("管理帐号"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("通知"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("无纸化设置"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("密码和 Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("个人信息"),
        "rallySettingsSignOut": MessageLookupByLibrary.simpleMessage("退出"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("税费文件"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("帐号"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("帐单"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("预算"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("概览"),
        "rallyTitleSettings": MessageLookupByLibrary.simpleMessage("设置"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("关于 Flutter Gallery"),
        "settingsAttribution":
            MessageLookupByLibrary.simpleMessage("由伦敦的 TOASTER 设计"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("关闭设置"),
        "settingsButtonLabel": MessageLookupByLibrary.simpleMessage("设置"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("深色"),
        "settingsFeedback": MessageLookupByLibrary.simpleMessage("发送反馈"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("浅色"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("语言区域"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("平台力学"),
        "settingsSlowMotion": MessageLookupByLibrary.simpleMessage("慢镜头"),
        "settingsSystemDefault": MessageLookupByLibrary.simpleMessage("系统"),
        "settingsTextDirection": MessageLookupByLibrary.simpleMessage("文本方向"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("从左到右"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("根据语言区域"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("从右到左"),
        "settingsTextScaling": MessageLookupByLibrary.simpleMessage("文字缩放"),
        "settingsTextScalingHuge": MessageLookupByLibrary.simpleMessage("超大"),
        "settingsTextScalingLarge": MessageLookupByLibrary.simpleMessage("大"),
        "settingsTextScalingNormal": MessageLookupByLibrary.simpleMessage("正常"),
        "settingsTextScalingSmall": MessageLookupByLibrary.simpleMessage("小"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("主题背景"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("设置"),
        "shrineCancelButtonCaption": MessageLookupByLibrary.simpleMessage("取消"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("清空购物车"),
        "shrineCartItemCount": m19,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("购物车"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("运费："),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("小计："),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("税费："),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("总计"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("配件"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("全部"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("服饰"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("家用"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage("时尚的零售应用"),
        "shrineLoginPasswordLabel": MessageLookupByLibrary.simpleMessage("密码"),
        "shrineLoginUsernameLabel": MessageLookupByLibrary.simpleMessage("用户名"),
        "shrineLogoutButtonCaption": MessageLookupByLibrary.simpleMessage("退出"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("菜单"),
        "shrineNextButtonCaption": MessageLookupByLibrary.simpleMessage("下一步"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("蓝石杯子"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("樱桃色扇贝 T 恤衫"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("青年布餐巾"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("青年布衬衫"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("经典白色衣领"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("粘土色毛线衣"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("铜线支架"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("细条纹 T 恤衫"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("花园项链"),
        "shrineProductGatsbyHat": MessageLookupByLibrary.simpleMessage("盖茨比帽"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("绅士夹克"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("镀金桌上三件套"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("姜黄色围巾"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("灰色水槽"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Hurrahs 茶具"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("厨房工具四件套"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("海军蓝裤子"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("石膏色束腰外衣"),
        "shrineProductPrice": m20,
        "shrineProductQuantity": m21,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("四方桌"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("雨水排水沟"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Ramona 混搭"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("海蓝色束腰外衣"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("海风毛线衣"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("绕肩 T 恤衫"),
        "shrineProductShrugBag": MessageLookupByLibrary.simpleMessage("单肩包"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("典雅的陶瓷套装"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Stella 太阳镜"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Strut 耳环"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("多肉植物花盆"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("防晒衣"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("冲浪衬衫"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("流浪包"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("大学代表队袜子"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Walter henley（白色）"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("编织钥匙扣"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("白色细条纹衬衫"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Whitney 皮带"),
        "shrineScreenReaderCart": m22,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("加入购物车"),
        "shrineScreenReaderRemoveProductButton": m23,
        "shrineTooltipCloseCart": MessageLookupByLibrary.simpleMessage("关闭购物车"),
        "shrineTooltipCloseMenu": MessageLookupByLibrary.simpleMessage("关闭菜单"),
        "shrineTooltipOpenMenu": MessageLookupByLibrary.simpleMessage("打开菜单"),
        "shrineTooltipRemoveItem": MessageLookupByLibrary.simpleMessage("移除商品"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("搜索"),
        "shrineTooltipSettings": MessageLookupByLibrary.simpleMessage("设置"),
        "starterAppDescription":
            MessageLookupByLibrary.simpleMessage("自适应入门布局"),
        "starterAppDrawerItem": m24,
        "starterAppGenericBody": MessageLookupByLibrary.simpleMessage("正文"),
        "starterAppGenericButton": MessageLookupByLibrary.simpleMessage("按钮"),
        "starterAppGenericHeadline": MessageLookupByLibrary.simpleMessage("标题"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("副标题"),
        "starterAppGenericTitle": MessageLookupByLibrary.simpleMessage("标题"),
        "starterAppTitle": MessageLookupByLibrary.simpleMessage("入门应用"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("添加"),
        "starterAppTooltipFavorite": MessageLookupByLibrary.simpleMessage("收藏"),
        "starterAppTooltipSearch": MessageLookupByLibrary.simpleMessage("搜索"),
        "starterAppTooltipShare": MessageLookupByLibrary.simpleMessage("分享")
      };
}
