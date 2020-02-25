// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:gallery/data/gallery_options.dart';
import 'package:gallery/layout/text_scale.dart';
import 'package:gallery/l10n/gallery_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class ArticleData {
  ArticleData({this.imageUrl, this.category, this.title, this.snippet});

  final String imageUrl;
  final String category;
  final String title;
  final String snippet;
}

class HorizontalArticlePreview extends StatelessWidget {
  HorizontalArticlePreview({this.data, this.minutes});

  final ArticleData data;
  final int minutes;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.category,
                style: textTheme.subtitle1,
              ),
              SizedBox(height: 12),
              Text(
                data.title,
                style: textTheme.headline5.copyWith(fontSize: 16),
              ),
            ],
          ),
        ),
        if (minutes != null) ...[
          Text(
            GalleryLocalizations.of(context).craneMinutes(minutes),
            style: textTheme.bodyText1,
          ),
          SizedBox(width: 8),
        ],
        Image.asset(
          data.imageUrl,
          fit: BoxFit.cover,
          excludeFromSemantics: true,
        ),
      ],
    );
  }
}

class VerticalArticlePreview extends StatelessWidget {
  VerticalArticlePreview({
    this.data,
    this.width,
    this.headlineTextStyle,
    this.showSnippet = false,
  });

  final ArticleData data;
  final double width;
  final TextStyle headlineTextStyle;
  final bool showSnippet;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return SizedBox(
      width: width ?? double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              data.imageUrl,
              fit: BoxFit.fitWidth,
              excludeFromSemantics: true,
            ),
          ),
          SizedBox(height: 12),
          Text(
            data.category,
            style: textTheme.subtitle1,
          ),
          SizedBox(height: 12),
          Text(
            data.title,
            style: headlineTextStyle ?? textTheme.headline5,
          ),
          if (showSnippet) ...[
            SizedBox(height: 4),
            Text(
              data.snippet,
              style: textTheme.bodyText2,
            ),
          ],
        ],
      ),
    );
  }
}

List<Widget> buildArticlePreviewItems(BuildContext context) {
  Widget articleDivider = Container(
    margin: const EdgeInsets.symmetric(vertical: 16),
    color: Colors.black.withOpacity(0.07),
    height: 1,
  );
  Widget sectionDivider = Container(
    margin: const EdgeInsets.symmetric(vertical: 16),
    color: Colors.black.withOpacity(0.2),
    height: 1,
  );
  TextTheme textTheme = Theme.of(context).textTheme;

  return <Widget>[
    VerticalArticlePreview(
      data: ArticleData(
        imageUrl: 'assets/fortnightly/fortnightly_healthcare.jpg',
        category:
            GalleryLocalizations.of(context).fortnightlyMenuWorld.toUpperCase(),
        title: GalleryLocalizations.of(context).fortnightlyHeadlineHealthcare,
      ),
      headlineTextStyle: textTheme.headline5.copyWith(fontSize: 20),
    ),
    articleDivider,
    HorizontalArticlePreview(
      data: ArticleData(
        imageUrl: 'assets/fortnightly/fortnightly_war.png',
        category: GalleryLocalizations.of(context)
            .fortnightlyMenuPolitics
            .toUpperCase(),
        title: GalleryLocalizations.of(context).fortnightlyHeadlineWar,
      ),
    ),
    articleDivider,
    HorizontalArticlePreview(
      data: ArticleData(
        imageUrl: 'assets/fortnightly/fortnightly_gas.png',
        category:
            GalleryLocalizations.of(context).fortnightlyMenuTech.toUpperCase(),
        title: GalleryLocalizations.of(context).fortnightlyHeadlineGasoline,
      ),
    ),
    sectionDivider,
    Text(
      GalleryLocalizations.of(context).fortnightlyLatestUpdates,
      style: textTheme.headline6,
    ),
    articleDivider,
    HorizontalArticlePreview(
      data: ArticleData(
        imageUrl: 'assets/fortnightly/fortnightly_army.png',
        category: GalleryLocalizations.of(context)
            .fortnightlyMenuPolitics
            .toUpperCase(),
        title: GalleryLocalizations.of(context).fortnightlyHeadlineArmy,
      ),
      minutes: 2,
    ),
    articleDivider,
    HorizontalArticlePreview(
      data: ArticleData(
        imageUrl: 'assets/fortnightly/fortnightly_stocks.png',
        category:
            GalleryLocalizations.of(context).fortnightlyMenuWorld.toUpperCase(),
        title: GalleryLocalizations.of(context).fortnightlyHeadlineStocks,
      ),
      minutes: 5,
    ),
    articleDivider,
    HorizontalArticlePreview(
      data: ArticleData(
        imageUrl: 'assets/fortnightly/fortnightly_fabrics.png',
        category:
            GalleryLocalizations.of(context).fortnightlyMenuTech.toUpperCase(),
        title: GalleryLocalizations.of(context).fortnightlyHeadlineFabrics,
      ),
      minutes: 4,
    ),
    articleDivider,
  ];
}

class HashtagBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final verticalDivider = Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: Colors.black.withOpacity(0.1),
      width: 1,
    );
    final textTheme = Theme.of(context).textTheme;
    final height = 32 * reducedTextScale(context);

    return SizedBox(
      height: height,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: 16),
          Center(
            child: Text(
              '#${GalleryLocalizations.of(context).fortnightlyTrendingTechDesign}',
              style: textTheme.subtitle2,
            ),
          ),
          verticalDivider,
          Center(
            child: Text(
              '#${GalleryLocalizations.of(context).fortnightlyTrendingReform}',
              style: textTheme.subtitle2,
            ),
          ),
          verticalDivider,
          Center(
            child: Text(
              '#${GalleryLocalizations.of(context).fortnightlyTrendingHealthcareRevolution}',
              style: textTheme.subtitle2,
            ),
          ),
          verticalDivider,
          Center(
            child: Text(
              '#${GalleryLocalizations.of(context).fortnightlyTrendingGreenArmy}',
              style: textTheme.subtitle2,
            ),
          ),
          verticalDivider,
          Center(
            child: Text(
              '#${GalleryLocalizations.of(context).fortnightlyTrendingStocks}',
              style: textTheme.subtitle2,
            ),
          ),
          verticalDivider,
        ],
      ),
    );
  }
}

class NavigationMenu extends StatelessWidget {
  NavigationMenu({this.isCloseable = false});

  final bool isCloseable;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        if (isCloseable)
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.close),
                tooltip: MaterialLocalizations.of(context).closeButtonTooltip,
                onPressed: () => Navigator.pop(context),
              ),
              Image.asset(
                'assets/fortnightly/fortnightly_title.png',
                excludeFromSemantics: true,
              ),
            ],
          ),
        SizedBox(height: 32),
        MenuItem(
          GalleryLocalizations.of(context).fortnightlyMenuFrontPage,
          header: true,
        ),
        MenuItem(GalleryLocalizations.of(context).fortnightlyMenuWorld),
        MenuItem(GalleryLocalizations.of(context).fortnightlyMenuUS),
        MenuItem(GalleryLocalizations.of(context).fortnightlyMenuPolitics),
        MenuItem(GalleryLocalizations.of(context).fortnightlyMenuBusiness),
        MenuItem(GalleryLocalizations.of(context).fortnightlyMenuTech),
        MenuItem(GalleryLocalizations.of(context).fortnightlyMenuScience),
        MenuItem(GalleryLocalizations.of(context).fortnightlyMenuSports),
        MenuItem(GalleryLocalizations.of(context).fortnightlyMenuTravel),
        MenuItem(GalleryLocalizations.of(context).fortnightlyMenuCulture),
      ],
    );
  }
}

class MenuItem extends StatelessWidget {
  MenuItem(this.title, {this.header = false});

  final String title;
  final bool header;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            width: 32,
            alignment: Alignment.centerLeft,
            child: header ? null : Icon(Icons.arrow_drop_down),
          ),
          Expanded(
            child: Text(
              title,
              style: Theme.of(context).textTheme.subtitle1.copyWith(
                    fontWeight: header ? FontWeight.w700 : FontWeight.w600,
                    fontSize: 16,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

class StockItem extends StatelessWidget {
  StockItem({this.ticker, this.price, this.percent});

  final String ticker;
  final String price;
  final double percent;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final percentFormat = NumberFormat.decimalPercentPattern(
      locale: GalleryOptions.of(context).locale.toString(),
      decimalDigits: 2,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(ticker, style: textTheme.subtitle1),
        SizedBox(height: 2),
        Row(
          children: [
            Expanded(
              child: Text(
                price,
                style: textTheme.subtitle2.copyWith(
                  color: textTheme.subtitle2.color.withOpacity(0.75),
                ),
              ),
            ),
            Text(
              percent > 0 ? '+' : '-',
              style: textTheme.subtitle2.copyWith(
                fontSize: 12,
                color: percent > 0 ? Color(0xff20CF63) : Color(0xff661FFF),
              ),
            ),
            SizedBox(width: 4),
            Text(
              percentFormat.format(percent.abs() / 100),
              style: textTheme.caption.copyWith(
                fontSize: 12,
                color: textTheme.subtitle2.color.withOpacity(0.75),
              ),
            ),
          ],
        )
      ],
    );
  }
}

List<Widget> buildStockItems(BuildContext context) {
  Widget articleDivider = Container(
    margin: EdgeInsets.symmetric(vertical: 16),
    color: Colors.black.withOpacity(0.07),
    height: 1,
  );

  return <Widget>[
    SizedBox(
      width: double.infinity,
      child: Image.asset(
        'assets/fortnightly/fortnightly_chart.png',
        fit: BoxFit.contain,
        excludeFromSemantics: true,
      ),
    ),
    articleDivider,
    StockItem(
      ticker: 'DIJA',
      price: '7,031.21',
      percent: -0.48,
    ),
    articleDivider,
    StockItem(
      ticker: 'SP',
      price: '1,967.84',
      percent: -0.23,
    ),
    articleDivider,
    StockItem(
      ticker: 'Nasdaq',
      price: '6,211.46',
      percent: 0.52,
    ),
    articleDivider,
    StockItem(
      ticker: 'Nikkei',
      price: '5,891',
      percent: 1.16,
    ),
    articleDivider,
    StockItem(
      ticker: 'DJ Total',
      price: '89.02',
      percent: 0.80,
    ),
    articleDivider,
  ];
}

class VideoPreview extends StatelessWidget {
  VideoPreview({this.data, this.time});

  final ArticleData data;
  final String time;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset(
            data.imageUrl,
            fit: BoxFit.contain,
            excludeFromSemantics: true,
          ),
        ),
        SizedBox(height: 4),
        Row(
          children: [
            Expanded(
              child: Text(data.category, style: textTheme.subtitle1),
            ),
            Text(time, style: textTheme.bodyText1)
          ],
        ),
        SizedBox(height: 4),
        Text(data.title, style: textTheme.headline5.copyWith(fontSize: 16)),
      ],
    );
  }
}

List<Widget> buildVideoPreviewItems(BuildContext context) {
  return <Widget>[
    VideoPreview(
      data: ArticleData(
        imageUrl: 'assets/fortnightly/fortnightly_feminists.jpg',
        category: GalleryLocalizations.of(context)
            .fortnightlyMenuPolitics
            .toUpperCase(),
        title: GalleryLocalizations.of(context).fortnightlyHeadlineFeminists,
      ),
      time: '2:31',
    ),
    SizedBox(height: 32),
    VideoPreview(
      data: ArticleData(
        imageUrl: 'assets/fortnightly/fortnightly_bees.jpg',
        category:
            GalleryLocalizations.of(context).fortnightlyMenuUS.toUpperCase(),
        title: GalleryLocalizations.of(context).fortnightlyHeadlineBees,
      ),
      time: '1:37',
    ),
  ];
}

ThemeData buildTheme(BuildContext context) {
  TextTheme textTheme = Theme.of(context).textTheme;
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0,
      iconTheme: IconTheme.of(context).copyWith(color: Colors.black),
    ),
    highlightColor: Colors.transparent,
    textTheme: textTheme.copyWith(
      // preview snippet
      bodyText2: GoogleFonts.merriweather(
        fontWeight: FontWeight.w300,
        fontSize: 16,
        textStyle: textTheme.bodyText2,
      ),
      // time in latest updates
      bodyText1: GoogleFonts.libreFranklin(
        fontWeight: FontWeight.w500,
        fontSize: 11,
        color: Colors.black.withOpacity(0.5),
        textStyle: textTheme.bodyText1,
      ),
      // preview headlines
      headline5: GoogleFonts.libreFranklin(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        textStyle: textTheme.headline5,
      ),
      // TODO: Use GoogleFonts.robotoCondensed when available
      // (caption 2), preview category, stock ticker
      subtitle1: textTheme.subtitle1.copyWith(
        fontFamily: 'Roboto Condensed',
        fontWeight: FontWeight.w700,
        fontSize: 16,
      ),
      subtitle2: GoogleFonts.libreFranklin(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        textStyle: textTheme.subtitle2,
      ),
      // section titles: Top Highlights, Last Updated...
      headline6: GoogleFonts.merriweather(
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.italic,
        fontSize: 14,
        textStyle: textTheme.headline6,
      ),
    ),
  );
}
