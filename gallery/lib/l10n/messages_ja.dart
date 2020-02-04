// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ja locale. All the
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
  String get localeName => 'ja';

  static m0(value) => "このアプリのソースコードは ${value} で確認できます。";

  static m1(title) => "${title} タブのプレースホルダ";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'レストランなし', one: '1 件のレストラン', other: '${totalRestaurants} 件のレストラン')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: '直行便', one: '乗継: 1 回', other: '乗継: ${numberOfStops} 回')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: '短期賃貸物件なし', one: '1 件の短期賃貸物件', other: '${totalProperties} 件の短期賃貸物件')}";

  static m5(value) => "項目 ${value}";

  static m6(error) => "クリップボードにコピーできませんでした。${error}";

  static m7(value) => "連続: ${value}";

  static m8(value) => "不連続: ${value}";

  static m9(value) => "オン: ${value}";

  static m10(value) => "選択: ${value}";

  static m11(name, phoneNumber) => "${name} さんの電話番号は ${phoneNumber} です";

  static m12(value) => "「${value}」を選択しました";

  static m13(accountName, accountNumber, amount) =>
      "${accountName}、口座番号 ${accountNumber}、残高 ${amount}。";

  static m14(amount) => "今月は ATM 手数料に ${amount} 使いました";

  static m15(percent) => "がんばりました！当座預金口座の残高が先月より ${percent} 増えました。";

  static m16(percent) => "今月のショッピング予算の ${percent} を使いました。";

  static m17(amount) => "今週はレストランに ${amount} 使いました。";

  static m18(count) =>
      "${Intl.plural(count, one: '税額控除を受けられる可能性を高めましょう。1 件の未割り当ての取引にカテゴリを割り当ててください。', other: '税額控除を受けられる可能性を高めましょう。${count} 件の未割り当ての取引にカテゴリを割り当ててください。')}";

  static m19(billName, date, amount) =>
      "${billName}、支払い期限 ${date}、金額 ${amount}。";

  static m20(budgetName, amountUsed, amountTotal, amountLeft) =>
      "${budgetName}、使用済み予算 ${amountUsed}、総予算 ${amountTotal}、予算残高 ${amountLeft}";

  static m21(quantity) =>
      "${Intl.plural(quantity, zero: 'アイテムなし', one: '1 件のアイテム', other: '${quantity} 件のアイテム')}";

  static m22(price) => "x ${price}";

  static m23(quantity) => "数量: ${quantity}";

  static m24(quantity) =>
      "${Intl.plural(quantity, zero: 'ショッピングカートにアイテムはありません', one: 'ショッピングカートに1件のアイテムがあります', other: 'ショッピングカートに${quantity}件のアイテムがあります')}";

  static m25(product) => "${product}を削除";

  static m26(value) => "項目 ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo":
            MessageLookupByLibrary.simpleMessage("Flutter サンプル GitHub レポジトリ"),
        "backToGallery": MessageLookupByLibrary.simpleMessage("ギャラリーに戻る"),
        "bottomAppBarNotch": MessageLookupByLibrary.simpleMessage("ノッチ"),
        "bottomAppBarPosition":
            MessageLookupByLibrary.simpleMessage("フローティング アクション ボタンの位置"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage("固定 - 中央"),
        "bottomAppBarPositionDockedEnd":
            MessageLookupByLibrary.simpleMessage("固定 - 端"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage("フローティング - 中央"),
        "bottomAppBarPositionFloatingEnd":
            MessageLookupByLibrary.simpleMessage("フローティング - 端"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("口座"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("アラーム"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("カレンダー"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("カメラ"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("コメント"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("ボタン"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("作成"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("自転車"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("エレベーター"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("暖炉"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("大"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("中"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("小"),
        "chipTurnOnLights": MessageLookupByLibrary.simpleMessage("ライトをオンにする"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("洗濯機"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("アンバー"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("ブルー"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("ブルーグレー"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("ブラウン"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("シアン"),
        "colorsDeepOrange": MessageLookupByLibrary.simpleMessage("ディープ オレンジ"),
        "colorsDeepPurple": MessageLookupByLibrary.simpleMessage("ディープ パープル"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("グリーン"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("グレー"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("インディゴ"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("ライトブルー"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("ライトグリーン"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("ライム"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("オレンジ"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("ピンク"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("パープル"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("レッド"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("ティール"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("イエロー"),
        "craneDescription":
            MessageLookupByLibrary.simpleMessage("カスタマイズ トラベル アプリ"),
        "craneEat": MessageLookupByLibrary.simpleMessage("食事"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("ナポリ（イタリア）"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ウッドファイヤー オーブン内のピザ"),
        "craneEat1": MessageLookupByLibrary.simpleMessage("ダラス（米国）"),
        "craneEat10": MessageLookupByLibrary.simpleMessage("リスボン（ポルトガル）"),
        "craneEat10SemanticLabel":
            MessageLookupByLibrary.simpleMessage("巨大なパストラミ サンドイッチを持つ女性"),
        "craneEat1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ダイナー スタイルのスツールが置かれた誰もいないバー"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("コルドバ（アルゼンチン）"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ハンバーガー"),
        "craneEat3": MessageLookupByLibrary.simpleMessage("ポートランド（米国）"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("韓国風タコス"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("パリ（フランス）"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("チョコレート デザート"),
        "craneEat5": MessageLookupByLibrary.simpleMessage("ソウル（韓国）"),
        "craneEat5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("アート風レストランの座席エリア"),
        "craneEat6": MessageLookupByLibrary.simpleMessage("シアトル（米国）"),
        "craneEat6SemanticLabel": MessageLookupByLibrary.simpleMessage("エビ料理"),
        "craneEat7": MessageLookupByLibrary.simpleMessage("ナッシュビル（米国）"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ベーカリーの入口"),
        "craneEat8": MessageLookupByLibrary.simpleMessage("アトランタ（米国）"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ザリガニが載った皿"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("マドリッド（スペイン）"),
        "craneEat9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ペストリーが置かれたカフェ カウンター"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage("目的地でレストランを検索"),
        "craneFly": MessageLookupByLibrary.simpleMessage("飛行機"),
        "craneFly0": MessageLookupByLibrary.simpleMessage("アスペン（米国）"),
        "craneFly0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("常緑樹の雪景色の中にあるシャレー"),
        "craneFly1": MessageLookupByLibrary.simpleMessage("ビッグサー（米国）"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("カイロ（エジプト）"),
        "craneFly10SemanticLabel":
            MessageLookupByLibrary.simpleMessage("日没時のアズハルモスク"),
        "craneFly11": MessageLookupByLibrary.simpleMessage("リスボン（ポルトガル）"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("レンガ作りの海の灯台"),
        "craneFly12": MessageLookupByLibrary.simpleMessage("ナパ（米国）"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ヤシの木があるプール"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("バリ島（インドネシア）"),
        "craneFly13SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ヤシの木があるシーサイド プール"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("野に張られたテント"),
        "craneFly2": MessageLookupByLibrary.simpleMessage("クンブ渓谷（ネパール）"),
        "craneFly2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("後ろに雪山が広がる祈祷旗"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("マチュピチュ（ペルー）"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("マチュピチュの砦"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("マレ（モルディブ）"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("水上バンガロー"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("ヴィッツナウ（スイス）"),
        "craneFly5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("後ろに山が広がる湖畔のホテル"),
        "craneFly6": MessageLookupByLibrary.simpleMessage("メキシコシティ（メキシコ）"),
        "craneFly6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ペジャス アルテス宮殿の空撮映像"),
        "craneFly7": MessageLookupByLibrary.simpleMessage("ラシュモア山（米国）"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ラシュモア山"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("シンガポール"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("スーパーツリー グローブ"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("ハバナ（キューバ）"),
        "craneFly9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("青いクラシック カーに寄りかかる男性"),
        "craneFlyStops": m3,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage("目的地でフライトを検索"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("日付を選択"),
        "craneFormDates": MessageLookupByLibrary.simpleMessage("日付を選択"),
        "craneFormDestination": MessageLookupByLibrary.simpleMessage("目的地を選択"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("食堂数"),
        "craneFormLocation": MessageLookupByLibrary.simpleMessage("場所を選択"),
        "craneFormOrigin": MessageLookupByLibrary.simpleMessage("出発地を選択"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("時間を選択"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("訪問者数"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("宿泊"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("マレ（モルディブ）"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("水上バンガロー"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage("アスペン（米国）"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("カイロ（エジプト）"),
        "craneSleep10SemanticLabel":
            MessageLookupByLibrary.simpleMessage("日没時のアズハルモスク"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("台北（台湾）"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("台北 101（超高層ビル）"),
        "craneSleep1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("常緑樹の雪景色の中にあるシャレー"),
        "craneSleep2": MessageLookupByLibrary.simpleMessage("マチュピチュ（ペルー）"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("マチュピチュの砦"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("ハバナ（キューバ）"),
        "craneSleep3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("青いクラシック カーに寄りかかる男性"),
        "craneSleep4": MessageLookupByLibrary.simpleMessage("ヴィッツナウ（スイス）"),
        "craneSleep4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("後ろに山が広がる湖畔のホテル"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage("ビッグサー（米国）"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("野に張られたテント"),
        "craneSleep6": MessageLookupByLibrary.simpleMessage("ナパ（米国）"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ヤシの木があるプール"),
        "craneSleep7": MessageLookupByLibrary.simpleMessage("ポルト（ポルトガル）"),
        "craneSleep7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("リベイラ広場のカラフルなアパートメント"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("トゥルム（メキシコ）"),
        "craneSleep8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("海岸の断崖の上にあるマヤ遺跡"),
        "craneSleep9": MessageLookupByLibrary.simpleMessage("リスボン（ポルトガル）"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("レンガ作りの海の灯台"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage("目的地で物件を検索"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("許可"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("アップルパイ"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("キャンセル"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("チーズケーキ"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("チョコレート ブラウニー"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "以下のリストからお気に入りのデザートの種類を選択してください。選択項目に基づいて、地域にあるおすすめのフードショップのリストがカスタマイズされます。"),
        "cupertinoAlertDiscard": MessageLookupByLibrary.simpleMessage("破棄"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("許可しない"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("お気に入りのデザートの選択"),
        "cupertinoAlertLocationDescription":
            MessageLookupByLibrary.simpleMessage(
                "現在の位置情報が地図に表示され、経路、近くの検索結果、予想所要時間に使用されます。"),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "マップアプリの使用中に「マップ」に位置情報にアクセスすることを許可しますか？"),
        "cupertinoAlertTiramisu": MessageLookupByLibrary.simpleMessage("ティラミス"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("ボタン"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("背景付き"),
        "cupertinoShowAlert": MessageLookupByLibrary.simpleMessage("アラートを表示"),
        "cupertinoTabBarChatTab": MessageLookupByLibrary.simpleMessage("チャット"),
        "cupertinoTabBarHomeTab": MessageLookupByLibrary.simpleMessage("ホーム"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("プロフィール"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "アクション チップは、メイン コンテンツに関連するアクションをトリガーするオプションの集合です。アクション チップは UI にコンテキストに基づいて動的に表示されます。"),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("アクション チップ"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "アラート ダイアログでは、確認を要する状況をユーザーに伝えることができます。必要に応じて、タイトルとアクション リストを設定できます。"),
        "demoAlertDialogTitle": MessageLookupByLibrary.simpleMessage("アラート"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("タイトル付きアラート"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "ボトム アプリバーでは、ボトム ナビゲーション ドロワーと、フローティング アクション ボタンなど最大 4 つのアクションにアクセスできます。"),
        "demoBottomAppBarSubtitle":
            MessageLookupByLibrary.simpleMessage("下部にナビゲーションとアクションが表示されます"),
        "demoBottomAppBarTitle":
            MessageLookupByLibrary.simpleMessage("ボトム アプリバー"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "画面の下部には、ボトム ナビゲーション バーに 3～5 件の移動先が表示されます。各移動先はアイコンとテキストラベル（省略可）で表されます。ボトム ナビゲーション アイコンをタップすると、そのアイコンに関連付けられた移動先のトップレベルに移動します。"),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("永続ラベル"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("選択済みのラベル"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "クロスフェーディング ビュー付きのボトム ナビゲーション"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("ボトム ナビゲーション"),
        "demoBottomSheetAddLabel": MessageLookupByLibrary.simpleMessage("追加"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("ボトムシートを表示"),
        "demoBottomSheetHeader": MessageLookupByLibrary.simpleMessage("ヘッダー"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "モーダル ボトムシートとは、メニューまたはダイアログの代わりになるもので、これが表示されている場合、ユーザーはアプリの他の部分を操作できません。"),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("モーダル ボトムシート"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "永続ボトムシートには、アプリのメイン コンテンツを補う情報が表示されます。永続ボトムシートは、ユーザーがアプリの他の部分を操作している場合も表示されたままとなります。"),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("永続ボトムシート"),
        "demoBottomSheetSubtitle":
            MessageLookupByLibrary.simpleMessage("永続ボトムシートとモーダル ボトムシート"),
        "demoBottomSheetTitle": MessageLookupByLibrary.simpleMessage("ボトムシート"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("テキスト欄"),
        "demoButtonSubtitle":
            MessageLookupByLibrary.simpleMessage("フラット、浮き出し、アウトラインなど"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("ボタン"),
        "demoChecklistMenuTitle":
            MessageLookupByLibrary.simpleMessage("チェックリスト メニュー"),
        "demoChipSubtitle":
            MessageLookupByLibrary.simpleMessage("入力、属性、アクションを表すコンパクトな要素"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("チップ"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "選択チップは、集合からの 1 つの選択肢を表すものです。選択チップには、関連する説明テキストまたはカテゴリが含まれます。"),
        "demoChoiceChipTitle": MessageLookupByLibrary.simpleMessage("選択チップ"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "くるくる回ることでアプリがビジー状態であることを示す、マテリアル デザインの円形進行状況インジケーター。"),
        "demoCircularProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("円形進行状況インジケーター"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("コードサンプル"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("クリップボードにコピーしました。"),
        "demoCodeViewerCopyAll": MessageLookupByLibrary.simpleMessage("すべてコピー"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "マテリアル デザインのカラーパレットを表す、カラーとカラー スウォッチの定数です。"),
        "demoColorsSubtitle":
            MessageLookupByLibrary.simpleMessage("定義済みのすべてのカラー"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("カラー"),
        "demoContextMenuTitle":
            MessageLookupByLibrary.simpleMessage("コンテキスト メニュー"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "アクション シートは、現在のコンテキストに関連する 2 つ以上の選択肢の集合をユーザーに提示する特定のスタイルのアラートです。タイトル、追加メッセージ、アクション リストを設定できます。"),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("アクション シート"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "時計回りにくるくる回る iOS スタイルのアクティビティ インジケーター。"),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS スタイルのアクティビティ インジケーター"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("アクティビティ インジケーター"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("アラートボタンのみ"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("ボタン付きアラート"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "アラート ダイアログでは、確認を要する状況をユーザーに伝えることができます。必要に応じて、タイトル、コンテンツ、アクション リストを設定できます。コンテンツの上にタイトル、コンテンツの下にアクションが表示されます。"),
        "demoCupertinoAlertTitle": MessageLookupByLibrary.simpleMessage("アラート"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("タイトル付きアラート"),
        "demoCupertinoAlertsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS スタイルのアラート ダイアログ"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("アラート"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "iOS スタイルのボタンです。テキスト / アイコン形式のボタンで、タップでフェードアウトとフェードインが切り替わります。必要に応じて、背景を設定することもできます。"),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS スタイルのボタン"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("ボタン"),
        "demoCupertinoNavigationBarDescription":
            MessageLookupByLibrary.simpleMessage(
                "iOS スタイルのナビゲーション バーです。ナビゲーション バーは、ページタイトルを最小限含むツールバーです（ページタイトルはツールバーの中央に表示されます）。"),
        "demoCupertinoNavigationBarSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS スタイルのナビゲーション バー"),
        "demoCupertinoNavigationBarTitle":
            MessageLookupByLibrary.simpleMessage("ナビゲーション バー"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage(
                "iOS スタイルの「下にスワイプしてコンテンツを更新」コントロールを実装するウィジェットです。"),
        "demoCupertinoPullToRefreshSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS スタイルの「下にスワイプして更新」コントロール"),
        "demoCupertinoPullToRefreshTitle":
            MessageLookupByLibrary.simpleMessage("下にスワイプして更新"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "相互に排他的な複数のオプションから選択する場合に使用します。セグメンテッド コントロール内の 1 つのオプションが選択されると、そのセグメンテッド コントロール内の他のオプションは選択されなくなります。"),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS スタイルのセグメンテッド コントロール"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("セグメンテッド コントロール"),
        "demoCupertinoSliderContinuous": m7,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "スライダーでは、連続する値の集合または不連続な値の集合から値を選択できます。"),
        "demoCupertinoSliderDiscrete": m8,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS スタイルのスライダー"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("スライダー"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "スイッチでは、1 つの設定のオン / オフ状態を切り替えることができます。"),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS スタイルのスイッチ"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "iOS スタイルのボトム ナビゲーション タブバーには複数のタブが表示され、そのうちの 1 つのタブ（デフォルトでは最初のタブ）がアクティブになります。"),
        "demoCupertinoTabBarSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS スタイルのボトムタブバー"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("タブバー"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "スライダーはバー上の値の範囲を表すもので、ユーザーはスライダーから 1 つの値または値の範囲を選択できます。テーマを設定したりカスタマイズしたりできます。"),
        "demoCustomSlidersTitle":
            MessageLookupByLibrary.simpleMessage("カスタム スライダー"),
        "demoDialogSubtitle":
            MessageLookupByLibrary.simpleMessage("シンプル、アラート、全画面表示"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("ダイアログ"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("API ドキュメント"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "フィルタチップは、コンテンツをフィルタする方法としてタグやキーワードを使用します。"),
        "demoFilterChipTitle": MessageLookupByLibrary.simpleMessage("フィルタチップ"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "フラットボタンを押すと、インク スプラッシュが表示されますが、このボタンは浮き上がりません。ツールバー、ダイアログのほか、パディング入りインラインで使用されます"),
        "demoFlatButtonTitle": MessageLookupByLibrary.simpleMessage("フラットボタン"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "フローティング アクション ボタンは円形のアイコンボタンで、コンテンツにカーソルを合わせると、アプリのメイン アクションが表示されます。"),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("フローティング アクションボタン"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "fullscreenDialog プロパティで、着信ページが全画面モード ダイアログかどうかを指定します"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("全画面表示"),
        "demoFullscreenTooltip": MessageLookupByLibrary.simpleMessage("全画面表示"),
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "グリッドリストは、同種のデータ（一般的には画像）を表す場合に最適です。グリッドリスト内の各項目をタイルと言います。"),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("フッターあり"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("ヘッダーあり"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("画像のみ"),
        "demoGridListsSubtitle":
            MessageLookupByLibrary.simpleMessage("行と列のレイアウト"),
        "demoGridListsTitle": MessageLookupByLibrary.simpleMessage("グリッドリスト"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("情報"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "入力チップは、エンティティ（人、場所、アイテムなど）や会話テキストなどの複雑な情報をコンパクトな形式で表すものです。"),
        "demoInputChipTitle": MessageLookupByLibrary.simpleMessage("入力チップ"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("URL を表示できませんでした:"),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "マテリアル デザインの線形進行状況インジケーター。進行状況バーとも呼ばれます。"),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("線形進行状況インジケーター"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "通常、高さが固定された 1 行には、テキストとその前後のアイコンが含まれます。"),
        "demoListsSecondary": MessageLookupByLibrary.simpleMessage("サブテキスト"),
        "demoListsSubtitle":
            MessageLookupByLibrary.simpleMessage("リスト レイアウトのスクロール"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("リスト"),
        "demoMenuADisabledMenuItem":
            MessageLookupByLibrary.simpleMessage("無効なメニュー項目"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage("チェックリスト メニュー付きの項目"),
        "demoMenuAnItemWithAContextMenuButton":
            MessageLookupByLibrary.simpleMessage("コンテキスト メニュー付きの項目"),
        "demoMenuAnItemWithASectionedMenu":
            MessageLookupByLibrary.simpleMessage("セクション分割メニュー付きの項目"),
        "demoMenuAnItemWithASimpleMenu":
            MessageLookupByLibrary.simpleMessage("シンプル メニュー付きの項目"),
        "demoMenuChecked": m9,
        "demoMenuContextMenuItemOne":
            MessageLookupByLibrary.simpleMessage("コンテキスト メニュー項目 1"),
        "demoMenuContextMenuItemThree":
            MessageLookupByLibrary.simpleMessage("コンテキスト メニュー項目 3"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "メニューでは、一時的なサーフェス上に選択肢の一覧が表示されます。ユーザーがボタン、アクション、その他のコントロールを操作すると表示されます。"),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("4"),
        "demoMenuGetLink": MessageLookupByLibrary.simpleMessage("リンクを取得"),
        "demoMenuItemValueOne":
            MessageLookupByLibrary.simpleMessage("メニュー項目 1"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("メニュー項目 3"),
        "demoMenuItemValueTwo":
            MessageLookupByLibrary.simpleMessage("メニュー項目 2"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("1"),
        "demoMenuPreview": MessageLookupByLibrary.simpleMessage("プレビュー"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("削除"),
        "demoMenuSelected": m10,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("共有"),
        "demoMenuSubtitle":
            MessageLookupByLibrary.simpleMessage("メニューボタンとシンプル メニュー"),
        "demoMenuThree": MessageLookupByLibrary.simpleMessage("3"),
        "demoMenuTitle": MessageLookupByLibrary.simpleMessage("メニュー"),
        "demoMenuTwo": MessageLookupByLibrary.simpleMessage("2"),
        "demoOneLineListsTitle": MessageLookupByLibrary.simpleMessage("1 行"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "ここをタップすると、このデモの利用可能なオプションが表示されます。"),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("オプションの表示"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("オプション"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "アウトライン ボタンは、押すと不透明になり、浮き上がります。通常は、浮き出しボタンと組み合わせて、代替のサブアクションを提示します。"),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("アウトライン ボタン"),
        "demoProgressIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage("線形、円形、不確定"),
        "demoProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("進行状況インジケーター"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "浮き出しボタンでは、ほぼ平面のレイアウトに次元を追加できます。スペースに余裕がある場所でもない場所でも、機能が強調されます。"),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("浮き出しボタン"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "スライダーはバー上の値の範囲を表すものです。スライダーには、バーの両端に値の範囲を表すアイコンを付けることができます。音量、明るさなどの設定を調整したり、画像フィルタを適用したりするのに最適です。"),
        "demoRangeSlidersTitle":
            MessageLookupByLibrary.simpleMessage("範囲スライダー"),
        "demoSectionedMenuTitle":
            MessageLookupByLibrary.simpleMessage("セクション分割メニュー"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "チェックボックスでは、ユーザーが選択肢のセットから複数の項目を選択できます。通常のチェックボックスの値は True または False で、3 状態のチェックボックスの値は Null になることもあります。"),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("チェックボックス"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "ラジオボタンでは、ユーザーが選択肢のセットから 1 つ選択できます。すべての選択肢を並べて、その中からユーザーが 1 つだけ選べるようにする場合は、ラジオボタンを使用します。"),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("ラジオ"),
        "demoSelectionControlsSubtitle":
            MessageLookupByLibrary.simpleMessage("チェックボックス、ラジオボタン、スイッチ"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "オンとオフのスイッチでは、1 つの設定の状態を切り替えることができます。スイッチでコントロールする設定とその状態は、対応するインライン ラベルと明確に区別する必要があります。"),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("スイッチ"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("選択コントロール"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "シンプル ダイアログでは、ユーザーに複数の選択肢を提示できます。必要に応じて、選択肢の上に表示するタイトルを設定できます。"),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("シンプル"),
        "demoSimpleMenuTitle":
            MessageLookupByLibrary.simpleMessage("シンプル メニュー"),
        "demoSlidersContinuous": MessageLookupByLibrary.simpleMessage("連続"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage("カスタムテーマが設定された連続範囲スライダー"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage("編集可能な数値の連続"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "スライダーはバー上の値の範囲を表すもので、ユーザーはスライダーから 1 つの値を選択できます。音量、明るさなどの設定を調整したり、画像フィルタを適用したりするのに最適です。"),
        "demoSlidersDiscrete": MessageLookupByLibrary.simpleMessage("非連続"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage("カスタムテーマが設定された非連続スライダー"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage("編集可能な数値"),
        "demoSlidersSubtitle":
            MessageLookupByLibrary.simpleMessage("スワイプで値を選択するためのウィジェット"),
        "demoSlidersTitle": MessageLookupByLibrary.simpleMessage("スライダー"),
        "demoSnackbarsAction":
            MessageLookupByLibrary.simpleMessage("スナックバーのアクションを押しました。"),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("アクション"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("スナックバーを表示"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "スナックバーを使用して、アプリが実行したまたはこれから実行するプロセスをユーザーに伝えます。スナックバーは画面の下部に一時的に表示されるため、ユーザーの操作性を妨げることがありません。また、削除するためのユーザーの入力操作も必要ありません。"),
        "demoSnackbarsSubtitle":
            MessageLookupByLibrary.simpleMessage("スナックバーでは、画面の下部にメッセージが表示されます"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("これがスナックバーです。"),
        "demoSnackbarsTitle": MessageLookupByLibrary.simpleMessage("スナックバー"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "タブを使うことで、さまざまな画面、データセットや、その他のインタラクションにまたがるコンテンツを整理できます。"),
        "demoTabsSubtitle":
            MessageLookupByLibrary.simpleMessage("個別にスクロール可能なビューを含むタブ"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("タブ"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "テキスト欄では、ユーザーが UI にテキストを入力できます。一般にフォームやダイアログで表示されます。"),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("メールアドレス"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("パスワードを入力してください。"),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "（###）###-#### - 米国の電話番号を入力してください。"),
        "demoTextFieldFormErrors":
            MessageLookupByLibrary.simpleMessage("送信する前に赤色で表示されたエラーを修正してください。"),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("パスワードを隠す"),
        "demoTextFieldKeepItShort":
            MessageLookupByLibrary.simpleMessage("簡単にご記入ください。これはデモです。"),
        "demoTextFieldLifeStory": MessageLookupByLibrary.simpleMessage("略歴"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("名前*"),
        "demoTextFieldNameHasPhoneNumber": m11,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("名前は必須です。"),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("8 文字以内で入力してください。"),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage("使用できるのは英字のみです。"),
        "demoTextFieldPassword": MessageLookupByLibrary.simpleMessage("パスワード*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("パスワードが一致しません"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("電話番号*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("* は必須項目です"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("パスワードを再入力*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("給与"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("パスワードを表示"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("送信"),
        "demoTextFieldSubtitle":
            MessageLookupByLibrary.simpleMessage("1 行（編集可能な文字と数字）"),
        "demoTextFieldTellUsAboutYourself":
            MessageLookupByLibrary.simpleMessage("自己紹介をご記入ください（仕事、趣味など）"),
        "demoTextFieldTitle": MessageLookupByLibrary.simpleMessage("テキスト欄"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("名前を入力してください"),
        "demoTextFieldWhereCanWeReachYou":
            MessageLookupByLibrary.simpleMessage("電話番号を入力してください"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("メールアドレス"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "切り替えボタンでは、関連するオプションを 1 つのグループにまとめることができます。関連する切り替えボタンのグループを強調するには、グループが共通コンテナを共有する必要があります"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("切り替えボタン"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "ツールチップでは、ボタンやその他のユーザー インターフェース アクションの機能を紹介するテキストラベルが提供されます。ユーザーが要素にカーソルを合わせたり、フォーカスを置いたり、要素を長押ししたりすると、ツールチップに情報メッセージが表示されます。"),
        "demoTooltipInstructions": MessageLookupByLibrary.simpleMessage(
            "長押しするかカーソルを合わせると、ツールチップが表示されます。"),
        "demoTooltipSubtitle": MessageLookupByLibrary.simpleMessage(
            "長押しするかカーソルを合わせると表示される短いメッセージ"),
        "demoTooltipTitle": MessageLookupByLibrary.simpleMessage("ツールチップ"),
        "demoTwoLineListsTitle": MessageLookupByLibrary.simpleMessage("2 行"),
        "demoTypographyDescription":
            MessageLookupByLibrary.simpleMessage("マテリアル デザインにあるさまざまな字体の定義です。"),
        "demoTypographySubtitle":
            MessageLookupByLibrary.simpleMessage("定義済みテキスト スタイルすべて"),
        "demoTypographyTitle": MessageLookupByLibrary.simpleMessage("タイポグラフィ"),
        "dialogAddAccount": MessageLookupByLibrary.simpleMessage("アカウントを追加"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("同意する"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("キャンセル"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("同意しない"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("破棄"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("下書きを破棄しますか？"),
        "dialogFullscreenDescription":
            MessageLookupByLibrary.simpleMessage("全画面表示ダイアログのデモ"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("保存"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("全画面表示ダイアログ"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Google を利用してアプリが位置情報を特定できるようにします。この場合、アプリが起動していなくても匿名の位置情報が Google に送信されます。"),
        "dialogLocationTitle":
            MessageLookupByLibrary.simpleMessage("Google の位置情報サービスを使用しますか？"),
        "dialogSelectedOption": m12,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("バックアップ アカウントの設定"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("ダイアログを表示"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("リファレンス スタイルとメディア"),
        "homeHeaderCategories": MessageLookupByLibrary.simpleMessage("カテゴリ"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("ギャラリー"),
        "placeBeach": MessageLookupByLibrary.simpleMessage("ビーチ"),
        "placeBronzeWorks": MessageLookupByLibrary.simpleMessage("ブロンズ作品"),
        "placeChennai": MessageLookupByLibrary.simpleMessage("チェンナイ"),
        "placeChettinad": MessageLookupByLibrary.simpleMessage("チェティナード"),
        "placeFisherman": MessageLookupByLibrary.simpleMessage("漁師"),
        "placeFlowerMarket": MessageLookupByLibrary.simpleMessage("フラワー マーケット"),
        "placeLunchPrep": MessageLookupByLibrary.simpleMessage("ランチの準備"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("マーケット"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("ポンディシェリ"),
        "placeSaltFarm": MessageLookupByLibrary.simpleMessage("塩田"),
        "placeScooters": MessageLookupByLibrary.simpleMessage("スクーター"),
        "placeSilkMaker": MessageLookupByLibrary.simpleMessage("絹織物の製作"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("タンジョール"),
        "placeThanjavurTemple":
            MessageLookupByLibrary.simpleMessage("タンジャーヴール寺院"),
        "rallyAccountAmount": m13,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("マイカー貯金"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("当座預金"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("マイホーム貯金"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("バケーション"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("口座所有者"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("年利回り"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("昨年の利息"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("利率"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("年累計利息"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("次回の取引明細書発行日"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("合計"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("口座"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("アラート"),
        "rallyAlertsMessageATMFees": m14,
        "rallyAlertsMessageCheckingAccount": m15,
        "rallyAlertsMessageHeadsUpShopping": m16,
        "rallyAlertsMessageSpentOnRestaurants": m17,
        "rallyAlertsMessageUnassignedTransactions": m18,
        "rallyBillAmount": m19,
        "rallyBills": MessageLookupByLibrary.simpleMessage("請求"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("期限"),
        "rallyBudgetAmount": m20,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("衣料品"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("カフェ"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("食料品"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("レストラン"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("残"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("予算"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage("資産管理アプリ"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("残"),
        "rallyLoginButtonLogin": MessageLookupByLibrary.simpleMessage("ログイン"),
        "rallyLoginLabelLogin": MessageLookupByLibrary.simpleMessage("ログイン"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Rally にログイン"),
        "rallyLoginNoAccount": MessageLookupByLibrary.simpleMessage("口座を開設する"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("パスワード"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("次回から入力を省略する"),
        "rallyLoginSignUp": MessageLookupByLibrary.simpleMessage("登録"),
        "rallyLoginUsername": MessageLookupByLibrary.simpleMessage("ユーザー名"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("すべて表示"),
        "rallySeeAllAccounts": MessageLookupByLibrary.simpleMessage("口座をすべて表示"),
        "rallySeeAllBills": MessageLookupByLibrary.simpleMessage("請求をすべて表示"),
        "rallySeeAllBudgets": MessageLookupByLibrary.simpleMessage("予算をすべて表示"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("ATM を探す"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("ヘルプ"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("口座を管理"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("通知"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("ペーパーレスの設定"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("パスコードと Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("個人情報"),
        "rallySettingsSignOut": MessageLookupByLibrary.simpleMessage("ログアウト"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("税務書類"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("口座"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("請求"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("予算"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("概要"),
        "rallyTitleSettings": MessageLookupByLibrary.simpleMessage("設定"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("Flutter ギャラリーについて"),
        "settingsAttribution":
            MessageLookupByLibrary.simpleMessage("デザイン: TOASTER（ロンドン）"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("設定を閉じる"),
        "settingsButtonLabel": MessageLookupByLibrary.simpleMessage("設定"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("ダーク"),
        "settingsFeedback": MessageLookupByLibrary.simpleMessage("フィードバックを送信"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("ライト"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("言語 / 地域"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("プラットフォームのメカニクス"),
        "settingsSlowMotion": MessageLookupByLibrary.simpleMessage("スロー モーション"),
        "settingsSystemDefault": MessageLookupByLibrary.simpleMessage("システム"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("テキストの向き"),
        "settingsTextDirectionLTR": MessageLookupByLibrary.simpleMessage("LTR"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("言語 / 地域に基づく"),
        "settingsTextDirectionRTL": MessageLookupByLibrary.simpleMessage("RTL"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("テキストの拡大縮小"),
        "settingsTextScalingHuge": MessageLookupByLibrary.simpleMessage("極大"),
        "settingsTextScalingLarge": MessageLookupByLibrary.simpleMessage("大"),
        "settingsTextScalingNormal": MessageLookupByLibrary.simpleMessage("標準"),
        "settingsTextScalingSmall": MessageLookupByLibrary.simpleMessage("小"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("テーマ"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("設定"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("キャンセル"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("カートをクリア"),
        "shrineCartItemCount": m21,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("カート"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("送料:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("小計:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("税金:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("合計"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("アクセサリ"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("すべて"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("ファッション"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("家"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage("お洒落なお店のアプリ"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("パスワード"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("ユーザー名"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("ログアウト"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("メニュー"),
        "shrineNextButtonCaption": MessageLookupByLibrary.simpleMessage("次へ"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("ストーンマグ（ブルー）"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("T シャツ（セリーズ スカロップ）"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("シャンブレー ナプキン"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("シャンブレー シャツ"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("クラッシック ホワイトカラー シャツ"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("セーター（クレイ）"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("銅製ワイヤー ラック"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("T シャツ（ファイン ラインズ）"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("ガーデン スタンド"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("ギャツビー ハット"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("ジェントリー ジャケット"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("ギルト デスク トリオ"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("スカーフ（ジンジャー）"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("スラウチタンク（グレー）"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("フラーズ ティー セット"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("キッチン クアトロ"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("ズボン（ネイビー）"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("チュニック（パステル）"),
        "shrineProductPrice": m22,
        "shrineProductQuantity": m23,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("カルテット テーブル"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("レインウォーター トレイ"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("ラモナ クロスオーバー"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("シー タニック"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("セーター（シーブリーズ）"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("T シャツ（ショルダー ロール）"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("シュラグバッグ"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("スーズ セラミック セット"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("ステラ サングラス"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("ストラット イヤリング"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("サキュレント プランター"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("サンシャツ ドレス"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("サーフ アンド パーフ シャツ"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("バガボンド サック"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("ソックス（ヴァーシティ）"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("ウォルター ヘンレイ（ホワイト）"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("ウィーブ キーリング"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("ホワイト ピンストライプ シャツ"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("ホイットニー ベルト"),
        "shrineScreenReaderCart": m24,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("カートに追加"),
        "shrineScreenReaderRemoveProductButton": m25,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("カートを閉じます"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("メニューを閉じます"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("メニューを開きます"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("アイテムを削除します"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("検索"),
        "shrineTooltipSettings": MessageLookupByLibrary.simpleMessage("設定"),
        "starterAppDescription":
            MessageLookupByLibrary.simpleMessage("レスポンシブ スターター レイアウト"),
        "starterAppDrawerItem": m26,
        "starterAppGenericBody": MessageLookupByLibrary.simpleMessage("本文"),
        "starterAppGenericButton": MessageLookupByLibrary.simpleMessage("ボタン"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("見出し"),
        "starterAppGenericSubtitle": MessageLookupByLibrary.simpleMessage("字幕"),
        "starterAppGenericTitle": MessageLookupByLibrary.simpleMessage("タイトル"),
        "starterAppTitle": MessageLookupByLibrary.simpleMessage("スターター アプリ"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("追加"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("お気に入り"),
        "starterAppTooltipSearch": MessageLookupByLibrary.simpleMessage("検索"),
        "starterAppTooltipShare": MessageLookupByLibrary.simpleMessage("共有")
      };
}
