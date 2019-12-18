// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that looks up messages for specific locales by
// delegating to the appropriate library.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:implementation_imports, file_names, unnecessary_new
// ignore_for_file:unnecessary_brace_in_string_interps, directives_ordering
// ignore_for_file:argument_type_not_assignable, invalid_assignment
// ignore_for_file:prefer_single_quotes, prefer_generic_function_type_aliases
// ignore_for_file:comment_references

import 'dart:async';

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';
import 'package:intl/src/intl_helpers.dart';

import 'messages_ko.dart' as messages_ko;
import 'messages_es.dart' as messages_es;
import 'messages_gl.dart' as messages_gl;
import 'messages_en_ZA.dart' as messages_en_za;
import 'messages_si.dart' as messages_si;
import 'messages_es_NI.dart' as messages_es_ni;
import 'messages_es_CO.dart' as messages_es_co;
import 'messages_fi.dart' as messages_fi;
import 'messages_da.dart' as messages_da;
import 'messages_hu.dart' as messages_hu;
import 'messages_kn.dart' as messages_kn;
import 'messages_ky.dart' as messages_ky;
import 'messages_id.dart' as messages_id;
import 'messages_is.dart' as messages_is;
import 'messages_es_AR.dart' as messages_es_ar;
import 'messages_ar_SA.dart' as messages_ar_sa;
import 'messages_es_CL.dart' as messages_es_cl;
import 'messages_ro.dart' as messages_ro;
import 'messages_sk.dart' as messages_sk;
import 'messages_km.dart' as messages_km;
import 'messages_en_CA.dart' as messages_en_ca;
import 'messages_hr.dart' as messages_hr;
import 'messages_he.dart' as messages_he;
import 'messages_pt_BR.dart' as messages_pt_br;
import 'messages_eu.dart' as messages_eu;
import 'messages_pt.dart' as messages_pt;
import 'messages_fr_CA.dart' as messages_fr_ca;
import 'messages_es_US.dart' as messages_es_us;
import 'messages_de_CH.dart' as messages_de_ch;
import 'messages_et.dart' as messages_et;
import 'messages_de.dart' as messages_de;
import 'messages_gsw.dart' as messages_gsw;
import 'messages_sl.dart' as messages_sl;
import 'messages_es_BO.dart' as messages_es_bo;
import 'messages_de_AT.dart' as messages_de_at;
import 'messages_pa.dart' as messages_pa;
import 'messages_kk.dart' as messages_kk;
import 'messages_it.dart' as messages_it;
import 'messages_ml.dart' as messages_ml;
import 'messages_sr_Latn.dart' as messages_sr_latn;
import 'messages_es_SV.dart' as messages_es_sv;
import 'messages_uk.dart' as messages_uk;
import 'messages_es_419.dart' as messages_es_419;
import 'messages_or.dart' as messages_or;
import 'messages_cs.dart' as messages_cs;
import 'messages_es_PY.dart' as messages_es_py;
import 'messages_tl.dart' as messages_tl;
import 'messages_am.dart' as messages_am;
import 'messages_az.dart' as messages_az;
import 'messages_mn.dart' as messages_mn;
import 'messages_my.dart' as messages_my;
import 'messages_nb.dart' as messages_nb;
import 'messages_en_IE.dart' as messages_en_ie;
import 'messages_be.dart' as messages_be;
import 'messages_ca.dart' as messages_ca;
import 'messages_th.dart' as messages_th;
import 'messages_pt_PT.dart' as messages_pt_pt;
import 'messages_es_DO.dart' as messages_es_do;
import 'messages_es_GT.dart' as messages_es_gt;
import 'messages_ar_MA.dart' as messages_ar_ma;
import 'messages_zu.dart' as messages_zu;
import 'messages_uz.dart' as messages_uz;
import 'messages_bs.dart' as messages_bs;
import 'messages_lo.dart' as messages_lo;
import 'messages_mk.dart' as messages_mk;
import 'messages_ne.dart' as messages_ne;
import 'messages_fil.dart' as messages_fil;
import 'messages_es_HN.dart' as messages_es_hn;
import 'messages_bg.dart' as messages_bg;
import 'messages_mr.dart' as messages_mr;
import 'messages_lv.dart' as messages_lv;
import 'messages_af.dart' as messages_af;
import 'messages_es_PE.dart' as messages_es_pe;
import 'messages_es_PR.dart' as messages_es_pr;
import 'messages_ms.dart' as messages_ms;
import 'messages_en_GB.dart' as messages_en_gb;
import 'messages_ar.dart' as messages_ar;
import 'messages_en_SG.dart' as messages_en_sg;
import 'messages_tr.dart' as messages_tr;
import 'messages_te.dart' as messages_te;
import 'messages_as.dart' as messages_as;
import 'messages_lt.dart' as messages_lt;
import 'messages_vi.dart' as messages_vi;
import 'messages_ur.dart' as messages_ur;
import 'messages_ta.dart' as messages_ta;
import 'messages_es_EC.dart' as messages_es_ec;
import 'messages_zh_HK.dart' as messages_zh_hk;
import 'messages_nl.dart' as messages_nl;
import 'messages_es_PA.dart' as messages_es_pa;
import 'messages_zh.dart' as messages_zh;
import 'messages_en_IN.dart' as messages_en_in;
import 'messages_bn.dart' as messages_bn;
import 'messages_en_AU.dart' as messages_en_au;
import 'messages_fa.dart' as messages_fa;
import 'messages_en_NZ.dart' as messages_en_nz;
import 'messages_pl.dart' as messages_pl;
import 'messages_sw.dart' as messages_sw;
import 'messages_ar_EG.dart' as messages_ar_eg;
import 'messages_sv.dart' as messages_sv;
import 'messages_el.dart' as messages_el;
import 'messages_zh_TW.dart' as messages_zh_tw;
import 'messages_ja.dart' as messages_ja;
import 'messages_hi.dart' as messages_hi;
import 'messages_en_US.dart' as messages_en_us;
import 'messages_es_MX.dart' as messages_es_mx;
import 'messages_es_VE.dart' as messages_es_ve;
import 'messages_es_CR.dart' as messages_es_cr;
import 'messages_ru.dart' as messages_ru;
import 'messages_sq.dart' as messages_sq;
import 'messages_zh_CN.dart' as messages_zh_cn;
import 'messages_fr_CH.dart' as messages_fr_ch;
import 'messages_ar_JO.dart' as messages_ar_jo;
import 'messages_gu.dart' as messages_gu;
import 'messages_ka.dart' as messages_ka;
import 'messages_sr.dart' as messages_sr;
import 'messages_es_UY.dart' as messages_es_uy;
import 'messages_fr.dart' as messages_fr;
import 'messages_hy.dart' as messages_hy;

typedef Future<dynamic> LibraryLoader();
Map<String, LibraryLoader> _deferredLibraries = {
  'ko': () => new Future.value(null),
  'es': () => new Future.value(null),
  'gl': () => new Future.value(null),
  'en_ZA': () => new Future.value(null),
  'si': () => new Future.value(null),
  'es_NI': () => new Future.value(null),
  'es_CO': () => new Future.value(null),
  'fi': () => new Future.value(null),
  'da': () => new Future.value(null),
  'hu': () => new Future.value(null),
  'kn': () => new Future.value(null),
  'ky': () => new Future.value(null),
  'id': () => new Future.value(null),
  'is': () => new Future.value(null),
  'es_AR': () => new Future.value(null),
  'ar_SA': () => new Future.value(null),
  'es_CL': () => new Future.value(null),
  'ro': () => new Future.value(null),
  'sk': () => new Future.value(null),
  'km': () => new Future.value(null),
  'en_CA': () => new Future.value(null),
  'hr': () => new Future.value(null),
  'he': () => new Future.value(null),
  'pt_BR': () => new Future.value(null),
  'eu': () => new Future.value(null),
  'pt': () => new Future.value(null),
  'fr_CA': () => new Future.value(null),
  'es_US': () => new Future.value(null),
  'de_CH': () => new Future.value(null),
  'et': () => new Future.value(null),
  'de': () => new Future.value(null),
  'gsw': () => new Future.value(null),
  'sl': () => new Future.value(null),
  'es_BO': () => new Future.value(null),
  'de_AT': () => new Future.value(null),
  'pa': () => new Future.value(null),
  'kk': () => new Future.value(null),
  'it': () => new Future.value(null),
  'ml': () => new Future.value(null),
  'sr_Latn': () => new Future.value(null),
  'es_SV': () => new Future.value(null),
  'uk': () => new Future.value(null),
  'es_419': () => new Future.value(null),
  'or': () => new Future.value(null),
  'cs': () => new Future.value(null),
  'es_PY': () => new Future.value(null),
  'tl': () => new Future.value(null),
  'am': () => new Future.value(null),
  'az': () => new Future.value(null),
  'mn': () => new Future.value(null),
  'my': () => new Future.value(null),
  'nb': () => new Future.value(null),
  'en_IE': () => new Future.value(null),
  'be': () => new Future.value(null),
  'ca': () => new Future.value(null),
  'th': () => new Future.value(null),
  'pt_PT': () => new Future.value(null),
  'es_DO': () => new Future.value(null),
  'es_GT': () => new Future.value(null),
  'ar_MA': () => new Future.value(null),
  'zu': () => new Future.value(null),
  'uz': () => new Future.value(null),
  'bs': () => new Future.value(null),
  'lo': () => new Future.value(null),
  'mk': () => new Future.value(null),
  'ne': () => new Future.value(null),
  'fil': () => new Future.value(null),
  'es_HN': () => new Future.value(null),
  'bg': () => new Future.value(null),
  'mr': () => new Future.value(null),
  'lv': () => new Future.value(null),
  'af': () => new Future.value(null),
  'es_PE': () => new Future.value(null),
  'es_PR': () => new Future.value(null),
  'ms': () => new Future.value(null),
  'en_GB': () => new Future.value(null),
  'ar': () => new Future.value(null),
  'en_SG': () => new Future.value(null),
  'tr': () => new Future.value(null),
  'te': () => new Future.value(null),
  'as': () => new Future.value(null),
  'lt': () => new Future.value(null),
  'vi': () => new Future.value(null),
  'ur': () => new Future.value(null),
  'ta': () => new Future.value(null),
  'es_EC': () => new Future.value(null),
  'zh_HK': () => new Future.value(null),
  'nl': () => new Future.value(null),
  'es_PA': () => new Future.value(null),
  'zh': () => new Future.value(null),
  'en_IN': () => new Future.value(null),
  'bn': () => new Future.value(null),
  'en_AU': () => new Future.value(null),
  'fa': () => new Future.value(null),
  'en_NZ': () => new Future.value(null),
  'pl': () => new Future.value(null),
  'sw': () => new Future.value(null),
  'ar_EG': () => new Future.value(null),
  'sv': () => new Future.value(null),
  'el': () => new Future.value(null),
  'zh_TW': () => new Future.value(null),
  'ja': () => new Future.value(null),
  'hi': () => new Future.value(null),
  'en_US': () => new Future.value(null),
  'es_MX': () => new Future.value(null),
  'es_VE': () => new Future.value(null),
  'es_CR': () => new Future.value(null),
  'ru': () => new Future.value(null),
  'sq': () => new Future.value(null),
  'zh_CN': () => new Future.value(null),
  'fr_CH': () => new Future.value(null),
  'ar_JO': () => new Future.value(null),
  'gu': () => new Future.value(null),
  'ka': () => new Future.value(null),
  'sr': () => new Future.value(null),
  'es_UY': () => new Future.value(null),
  'fr': () => new Future.value(null),
  'hy': () => new Future.value(null),
};

MessageLookupByLibrary _findExact(String localeName) {
  switch (localeName) {
    case 'ko':
      return messages_ko.messages;
    case 'es':
      return messages_es.messages;
    case 'gl':
      return messages_gl.messages;
    case 'en_ZA':
      return messages_en_za.messages;
    case 'si':
      return messages_si.messages;
    case 'es_NI':
      return messages_es_ni.messages;
    case 'es_CO':
      return messages_es_co.messages;
    case 'fi':
      return messages_fi.messages;
    case 'da':
      return messages_da.messages;
    case 'hu':
      return messages_hu.messages;
    case 'kn':
      return messages_kn.messages;
    case 'ky':
      return messages_ky.messages;
    case 'id':
      return messages_id.messages;
    case 'is':
      return messages_is.messages;
    case 'es_AR':
      return messages_es_ar.messages;
    case 'ar_SA':
      return messages_ar_sa.messages;
    case 'es_CL':
      return messages_es_cl.messages;
    case 'ro':
      return messages_ro.messages;
    case 'sk':
      return messages_sk.messages;
    case 'km':
      return messages_km.messages;
    case 'en_CA':
      return messages_en_ca.messages;
    case 'hr':
      return messages_hr.messages;
    case 'he':
      return messages_he.messages;
    case 'pt_BR':
      return messages_pt_br.messages;
    case 'eu':
      return messages_eu.messages;
    case 'pt':
      return messages_pt.messages;
    case 'fr_CA':
      return messages_fr_ca.messages;
    case 'es_US':
      return messages_es_us.messages;
    case 'de_CH':
      return messages_de_ch.messages;
    case 'et':
      return messages_et.messages;
    case 'de':
      return messages_de.messages;
    case 'gsw':
      return messages_gsw.messages;
    case 'sl':
      return messages_sl.messages;
    case 'es_BO':
      return messages_es_bo.messages;
    case 'de_AT':
      return messages_de_at.messages;
    case 'pa':
      return messages_pa.messages;
    case 'kk':
      return messages_kk.messages;
    case 'it':
      return messages_it.messages;
    case 'ml':
      return messages_ml.messages;
    case 'sr_Latn':
      return messages_sr_latn.messages;
    case 'es_SV':
      return messages_es_sv.messages;
    case 'uk':
      return messages_uk.messages;
    case 'es_419':
      return messages_es_419.messages;
    case 'or':
      return messages_or.messages;
    case 'cs':
      return messages_cs.messages;
    case 'es_PY':
      return messages_es_py.messages;
    case 'tl':
      return messages_tl.messages;
    case 'am':
      return messages_am.messages;
    case 'az':
      return messages_az.messages;
    case 'mn':
      return messages_mn.messages;
    case 'my':
      return messages_my.messages;
    case 'nb':
      return messages_nb.messages;
    case 'en_IE':
      return messages_en_ie.messages;
    case 'be':
      return messages_be.messages;
    case 'ca':
      return messages_ca.messages;
    case 'th':
      return messages_th.messages;
    case 'pt_PT':
      return messages_pt_pt.messages;
    case 'es_DO':
      return messages_es_do.messages;
    case 'es_GT':
      return messages_es_gt.messages;
    case 'ar_MA':
      return messages_ar_ma.messages;
    case 'zu':
      return messages_zu.messages;
    case 'uz':
      return messages_uz.messages;
    case 'bs':
      return messages_bs.messages;
    case 'lo':
      return messages_lo.messages;
    case 'mk':
      return messages_mk.messages;
    case 'ne':
      return messages_ne.messages;
    case 'fil':
      return messages_fil.messages;
    case 'es_HN':
      return messages_es_hn.messages;
    case 'bg':
      return messages_bg.messages;
    case 'mr':
      return messages_mr.messages;
    case 'lv':
      return messages_lv.messages;
    case 'af':
      return messages_af.messages;
    case 'es_PE':
      return messages_es_pe.messages;
    case 'es_PR':
      return messages_es_pr.messages;
    case 'ms':
      return messages_ms.messages;
    case 'en_GB':
      return messages_en_gb.messages;
    case 'ar':
      return messages_ar.messages;
    case 'en_SG':
      return messages_en_sg.messages;
    case 'tr':
      return messages_tr.messages;
    case 'te':
      return messages_te.messages;
    case 'as':
      return messages_as.messages;
    case 'lt':
      return messages_lt.messages;
    case 'vi':
      return messages_vi.messages;
    case 'ur':
      return messages_ur.messages;
    case 'ta':
      return messages_ta.messages;
    case 'es_EC':
      return messages_es_ec.messages;
    case 'zh_HK':
      return messages_zh_hk.messages;
    case 'nl':
      return messages_nl.messages;
    case 'es_PA':
      return messages_es_pa.messages;
    case 'zh':
      return messages_zh.messages;
    case 'en_IN':
      return messages_en_in.messages;
    case 'bn':
      return messages_bn.messages;
    case 'en_AU':
      return messages_en_au.messages;
    case 'fa':
      return messages_fa.messages;
    case 'en_NZ':
      return messages_en_nz.messages;
    case 'pl':
      return messages_pl.messages;
    case 'sw':
      return messages_sw.messages;
    case 'ar_EG':
      return messages_ar_eg.messages;
    case 'sv':
      return messages_sv.messages;
    case 'el':
      return messages_el.messages;
    case 'zh_TW':
      return messages_zh_tw.messages;
    case 'ja':
      return messages_ja.messages;
    case 'hi':
      return messages_hi.messages;
    case 'en_US':
      return messages_en_us.messages;
    case 'es_MX':
      return messages_es_mx.messages;
    case 'es_VE':
      return messages_es_ve.messages;
    case 'es_CR':
      return messages_es_cr.messages;
    case 'ru':
      return messages_ru.messages;
    case 'sq':
      return messages_sq.messages;
    case 'zh_CN':
      return messages_zh_cn.messages;
    case 'fr_CH':
      return messages_fr_ch.messages;
    case 'ar_JO':
      return messages_ar_jo.messages;
    case 'gu':
      return messages_gu.messages;
    case 'ka':
      return messages_ka.messages;
    case 'sr':
      return messages_sr.messages;
    case 'es_UY':
      return messages_es_uy.messages;
    case 'fr':
      return messages_fr.messages;
    case 'hy':
      return messages_hy.messages;
    default:
      return null;
  }
}

/// User programs should call this before using [localeName] for messages.
Future<bool> initializeMessages(String localeName) async {
  var availableLocale = Intl.verifiedLocale(
      localeName, (locale) => _deferredLibraries[locale] != null,
      onFailure: (_) => null);
  if (availableLocale == null) {
    return new Future.value(false);
  }
  var lib = _deferredLibraries[availableLocale];
  await (lib == null ? new Future.value(false) : lib());
  initializeInternalMessageLookup(() => new CompositeMessageLookup());
  messageLookup.addLocale(availableLocale, _findGeneratedMessagesFor);
  return new Future.value(true);
}

bool _messagesExistFor(String locale) {
  try {
    return _findExact(locale) != null;
  } catch (e) {
    return false;
  }
}

MessageLookupByLibrary _findGeneratedMessagesFor(String locale) {
  var actualLocale =
      Intl.verifiedLocale(locale, _messagesExistFor, onFailure: (_) => null);
  if (actualLocale == null) return null;
  return _findExact(actualLocale);
}
