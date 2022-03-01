class Currency {
  Currency({
    required this.query,
    required this.data,
  });
  late final Query query;
  late final CurrencyData data;

  Currency.fromJson(Map<String, dynamic> json) {
    query = Query.fromJson(json['query']);
    data = CurrencyData.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['query'] = query.toJson();
    _data['data'] = data.toJson();
    return _data;
  }
}

class Query {
  Query({
    required this.apikey,
    required this.timestamp,
    required this.baseCurrency,
  });
  late final String apikey;
  late final int timestamp;
  late final String baseCurrency;

  Query.fromJson(Map<String, dynamic> json) {
    apikey = json['apikey'];
    timestamp = json['timestamp'];
    baseCurrency = json['base_currency'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['apikey'] = apikey;
    _data['timestamp'] = timestamp;
    _data['base_currency'] = baseCurrency;
    return _data;
  }
}

class CurrencyData {
  CurrencyData({
    required this.JPY,
    required this.CNY,
    required this.CHF,
    required this.CAD,
    required this.MXN,
    required this.INR,
    required this.BRL,
    required this.RUB,
    required this.KRW,
    required this.IDR,
    required this.TRY,
    required this.SAR,
    required this.SEK,
    required this.NGN,
    required this.PLN,
    required this.ARS,
    required this.NOK,
    required this.TWD,
    required this.IRR,
    required this.AED,
    required this.COP,
    required this.THB,
    required this.ZAR,
    required this.DKK,
    required this.MYR,
    required this.SGD,
    required this.ILS,
    required this.HKD,
    required this.EGP,
    required this.PHP,
    required this.CLP,
    required this.PKR,
    required this.IQD,
    required this.DZD,
    required this.KZT,
    required this.QAR,
    required this.CZK,
    required this.PEN,
    required this.RON,
    required this.VND,
    required this.BDT,
    required this.HUF,
    required this.UAH,
    required this.AOA,
    required this.MAD,
    required this.OMR,
    required this.CUC,
    required this.BYR,
    required this.AZN,
    required this.LKR,
    required this.SDG,
    required this.SYP,
    required this.MMK,
    required this.DOP,
    required this.UZS,
    required this.KES,
    required this.GTQ,
    required this.URY,
    required this.HRV,
    required this.MOP,
    required this.ETB,
    required this.CRC,
    required this.TZS,
    required this.TMT,
    required this.TND,
    required this.PAB,
    required this.LBP,
    required this.RSD,
    required this.LYD,
    required this.GHS,
    required this.YER,
    required this.BOB,
    required this.BHD,
    required this.CDF,
    required this.PYG,
    required this.UGX,
    required this.SVC,
    required this.TTD,
    required this.AFN,
    required this.NPR,
    required this.HNL,
    required this.BIH,
    required this.BND,
    required this.ISK,
    required this.KHR,
    required this.GEL,
    required this.MZN,
    required this.BWP,
    required this.PGK,
    required this.JMD,
    required this.XAF,
    required this.NAD,
    required this.ALL,
    required this.SSP,
    required this.MUR,
    required this.MNT,
    required this.NIO,
    required this.LAK,
    required this.MKD,
    required this.AMD,
    required this.MGA,
    required this.XPF,
    required this.TJS,
    required this.HTG,
    required this.BSD,
    required this.MDL,
    required this.RWF,
    required this.KGS,
    required this.GNF,
    required this.SRD,
    required this.SLL,
    required this.XOF,
    required this.MWK,
    required this.FJD,
    required this.ERN,
    required this.SZL,
    required this.GYD,
    required this.BIF,
    required this.KYD,
    required this.MVR,
    required this.LSL,
    required this.LRD,
    required this.CVE,
    required this.DJF,
    required this.SCR,
    required this.SOS,
    required this.GMD,
    required this.KMF,
    required this.STD,
    required this.BTC,
    required this.XRP,
    required this.AUD,
    required this.BGN,
    required this.JOD,
    required this.GBP,
    required this.ETH,
    required this.EUR,
    required this.LTC,
    required this.NZD,
  });
  late final double JPY;
  late final double CNY;
  late final double CHF;
  late final double CAD;
  late final double MXN;
  late final double INR;
  late final double BRL;
  late final double RUB;
  late final double KRW;
  late final double IDR;
  late final double TRY;
  late final double SAR;
  late final double SEK;
  late final double NGN;
  late final double PLN;
  late final double ARS;
  late final double NOK;
  late final double TWD;
  late final double IRR;
  late final double AED;
  late final double COP;
  late final double THB;
  late final double ZAR;
  late final double DKK;
  late final double MYR;
  late final double SGD;
  late final double ILS;
  late final double HKD;
  late final double EGP;
  late final double PHP;
  late final double CLP;
  late final double PKR;
  late final double IQD;
  late final double DZD;
  late final double KZT;
  late final double QAR;
  late final double CZK;
  late final double PEN;
  late final double RON;
  late final double VND;
  late final double BDT;
  late final double HUF;
  late final double UAH;
  late final double AOA;
  late final double MAD;
  late final double OMR;
  late final double CUC;
  late final double BYR;
  late final double AZN;
  late final double LKR;
  late final double SDG;
  late final double SYP;
  late final double MMK;
  late final double DOP;
  late final double UZS;
  late final double KES;
  late final double GTQ;
  late final double URY;
  late final double HRV;
  late final double MOP;
  late final double ETB;
  late final double CRC;
  late final double TZS;
  late final double TMT;
  late final double TND;
  late final double PAB;
  late final double LBP;
  late final double RSD;
  late final double LYD;
  late final double GHS;
  late final double YER;
  late final double BOB;
  late final double BHD;
  late final double CDF;
  late final double PYG;
  late final double UGX;
  late final double SVC;
  late final double TTD;
  late final double AFN;
  late final double NPR;
  late final double HNL;
  late final double BIH;
  late final double BND;
  late final double ISK;
  late final double KHR;
  late final double GEL;
  late final double MZN;
  late final double BWP;
  late final double PGK;
  late final double JMD;
  late final double XAF;
  late final double NAD;
  late final double ALL;
  late final double SSP;
  late final double MUR;
  late final double MNT;
  late final double NIO;
  late final double LAK;
  late final double MKD;
  late final double AMD;
  late final double MGA;
  late final double XPF;
  late final double TJS;
  late final double HTG;
  late final double BSD;
  late final double MDL;
  late final double RWF;
  late final double KGS;
  late final double GNF;
  late final double SRD;
  late final double SLL;
  late final double XOF;
  late final double MWK;
  late final double FJD;
  late final double ERN;
  late final double SZL;
  late final double GYD;
  late final double BIF;
  late final double KYD;
  late final double MVR;
  late final double LSL;
  late final double LRD;
  late final double CVE;
  late final double DJF;
  late final double SCR;
  late final double SOS;
  late final double GMD;
  late final double KMF;
  late final double STD;
  late final double BTC;
  late final double XRP;
  late final double AUD;
  late final double BGN;
  late final double JOD;
  late final double GBP;
  late final double ETH;
  late final double EUR;
  late final double LTC;
  late final double NZD;

  CurrencyData.fromJson(Map<String, dynamic> json) {
    JPY = json['JPY'];
    CNY = json['CNY'];
    CHF = json['CHF'];
    CAD = json['CAD'];
    MXN = json['MXN'];
    INR = json['INR'];
    BRL = json['BRL'];
    RUB = json['RUB'];
    KRW = json['KRW'];
    IDR = json['IDR'];
    TRY = json['TRY'];
    SAR = json['SAR'];
    SEK = json['SEK'];
    NGN = json['NGN'];
    PLN = json['PLN'];
    ARS = json['ARS'];
    NOK = json['NOK'];
    TWD = json['TWD'];
    IRR = json['IRR'];
    AED = json['AED'];
    COP = json['COP'];
    THB = json['THB'];
    ZAR = json['ZAR'];
    DKK = json['DKK'];
    MYR = json['MYR'];
    SGD = json['SGD'];
    ILS = json['ILS'];
    HKD = json['HKD'];
    EGP = json['EGP'];
    PHP = json['PHP'];
    CLP = json['CLP'];
    PKR = json['PKR'];
    IQD = json['IQD'];
    DZD = json['DZD'];
    KZT = json['KZT'];
    QAR = json['QAR'];
    CZK = json['CZK'];
    PEN = json['PEN'];
    RON = json['RON'];
    VND = json['VND'];
    BDT = json['BDT'];
    HUF = json['HUF'];
    UAH = json['UAH'];
    AOA = json['AOA'];
    MAD = json['MAD'];
    OMR = json['OMR'];
    CUC = json['CUC'];
    BYR = json['BYR'];
    AZN = json['AZN'];
    LKR = json['LKR'];
    SDG = json['SDG'];
    SYP = json['SYP'];
    MMK = json['MMK'];
    DOP = json['DOP'];
    UZS = json['UZS'];
    KES = json['KES'];
    GTQ = json['GTQ'];
    URY = json['URY'];
    HRV = json['HRV'];
    MOP = json['MOP'];
    ETB = json['ETB'];
    CRC = json['CRC'];
    TZS = json['TZS'];
    TMT = json['TMT'];
    TND = json['TND'];
    PAB = json['PAB'];
    LBP = json['LBP'];
    RSD = json['RSD'];
    LYD = json['LYD'];
    GHS = json['GHS'];
    YER = json['YER'];
    BOB = json['BOB'];
    BHD = json['BHD'];
    CDF = json['CDF'];
    PYG = json['PYG'];
    UGX = json['UGX'];
    SVC = json['SVC'];
    TTD = json['TTD'];
    AFN = json['AFN'];
    NPR = json['NPR'];
    HNL = json['HNL'];
    BIH = json['BIH'];
    BND = json['BND'];
    ISK = json['ISK'];
    KHR = json['KHR'];
    GEL = json['GEL'];
    MZN = json['MZN'];
    BWP = json['BWP'];
    PGK = json['PGK'];
    JMD = json['JMD'];
    XAF = json['XAF'];
    NAD = json['NAD'];
    ALL = json['ALL'];
    SSP = json['SSP'];
    MUR = json['MUR'];
    MNT = json['MNT'];
    NIO = json['NIO'];
    LAK = json['LAK'];
    MKD = json['MKD'];
    AMD = json['AMD'];
    MGA = json['MGA'];
    XPF = json['XPF'];
    TJS = json['TJS'];
    HTG = json['HTG'];
    BSD = json['BSD'];
    MDL = json['MDL'];
    RWF = json['RWF'];
    KGS = json['KGS'];
    GNF = json['GNF'];
    SRD = json['SRD'];
    SLL = json['SLL'];
    XOF = json['XOF'];
    MWK = json['MWK'];
    FJD = json['FJD'];
    ERN = json['ERN'];
    SZL = json['SZL'];
    GYD = json['GYD'];
    BIF = json['BIF'];
    KYD = json['KYD'];
    MVR = json['MVR'];
    LSL = json['LSL'];
    LRD = json['LRD'];
    CVE = json['CVE'];
    DJF = json['DJF'];
    SCR = json['SCR'];
    SOS = json['SOS'];
    GMD = json['GMD'];
    KMF = json['KMF'];
    STD = json['STD'];
    BTC = json['BTC'];
    XRP = json['XRP'];
    AUD = json['AUD'];
    BGN = json['BGN'];
    JOD = json['JOD'];
    GBP = json['GBP'];
    ETH = json['ETH'];
    EUR = json['EUR'];
    LTC = json['LTC'];
    NZD = json['NZD'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['JPY'] = JPY;
    _data['CNY'] = CNY;
    _data['CHF'] = CHF;
    _data['CAD'] = CAD;
    _data['MXN'] = MXN;
    _data['INR'] = INR;
    _data['BRL'] = BRL;
    _data['RUB'] = RUB;
    _data['KRW'] = KRW;
    _data['IDR'] = IDR;
    _data['TRY'] = TRY;
    _data['SAR'] = SAR;
    _data['SEK'] = SEK;
    _data['NGN'] = NGN;
    _data['PLN'] = PLN;
    _data['ARS'] = ARS;
    _data['NOK'] = NOK;
    _data['TWD'] = TWD;
    _data['IRR'] = IRR;
    _data['AED'] = AED;
    _data['COP'] = COP;
    _data['THB'] = THB;
    _data['ZAR'] = ZAR;
    _data['DKK'] = DKK;
    _data['MYR'] = MYR;
    _data['SGD'] = SGD;
    _data['ILS'] = ILS;
    _data['HKD'] = HKD;
    _data['EGP'] = EGP;
    _data['PHP'] = PHP;
    _data['CLP'] = CLP;
    _data['PKR'] = PKR;
    _data['IQD'] = IQD;
    _data['DZD'] = DZD;
    _data['KZT'] = KZT;
    _data['QAR'] = QAR;
    _data['CZK'] = CZK;
    _data['PEN'] = PEN;
    _data['RON'] = RON;
    _data['VND'] = VND;
    _data['BDT'] = BDT;
    _data['HUF'] = HUF;
    _data['UAH'] = UAH;
    _data['AOA'] = AOA;
    _data['MAD'] = MAD;
    _data['OMR'] = OMR;
    _data['CUC'] = CUC;
    _data['BYR'] = BYR;
    _data['AZN'] = AZN;
    _data['LKR'] = LKR;
    _data['SDG'] = SDG;
    _data['SYP'] = SYP;
    _data['MMK'] = MMK;
    _data['DOP'] = DOP;
    _data['UZS'] = UZS;
    _data['KES'] = KES;
    _data['GTQ'] = GTQ;
    _data['URY'] = URY;
    _data['HRV'] = HRV;
    _data['MOP'] = MOP;
    _data['ETB'] = ETB;
    _data['CRC'] = CRC;
    _data['TZS'] = TZS;
    _data['TMT'] = TMT;
    _data['TND'] = TND;
    _data['PAB'] = PAB;
    _data['LBP'] = LBP;
    _data['RSD'] = RSD;
    _data['LYD'] = LYD;
    _data['GHS'] = GHS;
    _data['YER'] = YER;
    _data['BOB'] = BOB;
    _data['BHD'] = BHD;
    _data['CDF'] = CDF;
    _data['PYG'] = PYG;
    _data['UGX'] = UGX;
    _data['SVC'] = SVC;
    _data['TTD'] = TTD;
    _data['AFN'] = AFN;
    _data['NPR'] = NPR;
    _data['HNL'] = HNL;
    _data['BIH'] = BIH;
    _data['BND'] = BND;
    _data['ISK'] = ISK;
    _data['KHR'] = KHR;
    _data['GEL'] = GEL;
    _data['MZN'] = MZN;
    _data['BWP'] = BWP;
    _data['PGK'] = PGK;
    _data['JMD'] = JMD;
    _data['XAF'] = XAF;
    _data['NAD'] = NAD;
    _data['ALL'] = ALL;
    _data['SSP'] = SSP;
    _data['MUR'] = MUR;
    _data['MNT'] = MNT;
    _data['NIO'] = NIO;
    _data['LAK'] = LAK;
    _data['MKD'] = MKD;
    _data['AMD'] = AMD;
    _data['MGA'] = MGA;
    _data['XPF'] = XPF;
    _data['TJS'] = TJS;
    _data['HTG'] = HTG;
    _data['BSD'] = BSD;
    _data['MDL'] = MDL;
    _data['RWF'] = RWF;
    _data['KGS'] = KGS;
    _data['GNF'] = GNF;
    _data['SRD'] = SRD;
    _data['SLL'] = SLL;
    _data['XOF'] = XOF;
    _data['MWK'] = MWK;
    _data['FJD'] = FJD;
    _data['ERN'] = ERN;
    _data['SZL'] = SZL;
    _data['GYD'] = GYD;
    _data['BIF'] = BIF;
    _data['KYD'] = KYD;
    _data['MVR'] = MVR;
    _data['LSL'] = LSL;
    _data['LRD'] = LRD;
    _data['CVE'] = CVE;
    _data['DJF'] = DJF;
    _data['SCR'] = SCR;
    _data['SOS'] = SOS;
    _data['GMD'] = GMD;
    _data['KMF'] = KMF;
    _data['STD'] = STD;
    _data['BTC'] = BTC;
    _data['XRP'] = XRP;
    _data['AUD'] = AUD;
    _data['BGN'] = BGN;
    _data['JOD'] = JOD;
    _data['GBP'] = GBP;
    _data['ETH'] = ETH;
    _data['EUR'] = EUR;
    _data['LTC'] = LTC;
    _data['NZD'] = NZD;
    return _data;
  }
}
