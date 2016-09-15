package dsic.app.barcodesample;

/**
 * Created by ljh0915 on 15. 7. 6.
 */
public class BarcodeDeclaration {
    public static enum BARCODE_RESULT {
        RESULT_SUCEESS, RESULT_UNKNOWN, RESULT_NOT_YET_IMPLEMENT, RESULT_NOT_SUPPORT,
        RESULT_OPENED, RESULT_CLOSED, RESULT_OPEN_FAIL, RESULT_ON_SCANNING, RESULT_NOT_ON_SCANNING,RESULT_SCAN_DISABLE,
        RESULT_DRIVER_ERROR,RESULT_ON_RECOVERY,RESULT_NEED_TO_CHARGE,RESULT_SERIAL_OPEN_FAIL;
    }

    public static enum RECEIVE_TYPE {
        INTENT_EVENT, KEYBOARD_EVENT, CLIPBOARD_EVENT;
    }

    public static enum SCAN_NOTIFICATION {
        NOTI_MUTE, NOTI_SOUND, NOTI_VIB, NOTI_SOUND_VIB;
    }

    public static enum DELAY_MODE {
        DELAYMODE_NONE, DELAYMODE_SLOWLY, DELAYMODE_NORMAL, DELAYMODE_FAST, DELAYMODE_USER_DEFINITION;
    }

    public static enum SYMBOLOGY_IDENT
    {
        NOT_READ(-1),
        UNKNOWN(0),
        Code39(1),
        Codabar(2),
        Code128(3),
        Discrete2of5(4),
        IATA(5),
        Interleaved2of5(6),
        Code93(7),
        UPCA(8),
        UPCE0(9),
        EAN8(10),
        EAN13(11),
        Code11(12),
        Code49(13),
        MSI(14),
        EAN128(15),
        UPCE1(16),
        PDF417(17),
        Code16K(18),
        Code39FullASCII(19),
        UPCD(20),
        Code39Trioptic(21),
        Bookland(22),
        CouponCode(23),
        NW7(24),
        ISBT128(25),
        MicroPDF(26),
        DataMatrix(27),
        QRCode(28),
        MicroPDFCCA(29),
        PostNetUS(30),
        PlanetCode(31),
        Code32(32),
        ISBT128Con(33),
        JapanPostal(34),
        AustralianPostal(35),
        DutchPostal(36),
        MaxiCode(37),
        CanadianPostal(38),
        UKPostal(39),
        MacroPDF(40),
        MacroQR(41),
        MicroQR(44),
        Aztec(45),
        AztecRune(46),
        GS1DataBar14(48),
        GS1DataBarLimited(49),
        GS1DataBarExpanded(50),
        USPS4CB(52),
        UPU4State(53),
        ISSN(54),
        Scanlet(55),
        CueCode(56),
        Matrix2of5(57),
        UPCA_2Supplemental(72),
        UPCE0_2Supplemental(73),
        EAN8_2Supplemental(74),
        EAN13_2Supplemental(75),
        UPCE1_2Supplemental(80),
        CCA_EAN128(81),
        CCA_EAN13(82),
        CCA_EAN8(83),
        CCA_GS1DataBarExpanded(84),
        CCA_GS1DataBarLimited(85),
        CCA_GS1DataBar14(86),
        CCA_UPCA(87),
        CCA_UPCE(88),
        CCC_EAN128(89),
        TLC39(90),
        CCB_EAN128(97),
        CCB_EAN13(98),
        CCB_EAN8(99),
        CCB_GS1DataBarExpanded(100),
        CCB_GS1DataBarLimited(101),
        CCB_GS1DataBar14(102),
        CCB_UPCA(103),
        CCB_UPCE(104),
        SignatureCapture(105),
        Chinese2of5(114),
        Korean3of5(115),
        UPCA_5supplemental(136),
        UPCE0_5supplemental(137),
        EAN8_5supplemental(138),
        EAN13_5supplemental(139),
        UPCE1_5Supplemental(144),
        MacroMicroPDF(154),
        GS1DatabarCoupon(180),
        HanXin(183),
        NEC2of5(184),
        Straight2of5_IATA(185),
        Straight2of5_Industrial(186),
        Telepen(187),
        GS1128(188),
        BritishPost(189),
        InfoMail(190),
        IntelligentMailBarcode(191),
        KIXPost(192),
        Postal_4i(193),
        Plessey(194);

        private int value;
        private SYMBOLOGY_IDENT(int value) {
            this.value = value;
        }
        public int getValue()
        {
            return value;
        }
        public static SYMBOLOGY_IDENT fromInteger(int x)
        {
            SYMBOLOGY_IDENT enRes = UNKNOWN;
            switch (x)
            {
                case -1: enRes = NOT_READ;break;
                case 0: enRes = UNKNOWN;break;
                case 1: enRes = Code39;break;
                case 2: enRes = Codabar;break;
                case 3: enRes = Code128;break;
                case 4: enRes = Discrete2of5;break;
                case 5: enRes = IATA;break;
                case 6: enRes = Interleaved2of5;break;
                case 7: enRes = Code93;break;
                case 8: enRes = UPCA;break;
                case 9: enRes = UPCE0;break;
                case 10: enRes = EAN8;break;
                case 11: enRes = EAN13;break;
                case 12: enRes = Code11;break;
                case 13: enRes = Code49;break;
                case 14: enRes = MSI;break;
                case 15: enRes = EAN128;break;
                case 16: enRes = UPCE1;break;
                case 17: enRes = PDF417;break;
                case 18: enRes = Code16K;break;
                case 19: enRes = Code39FullASCII;break;
                case 20: enRes = UPCD;break;
                case 21: enRes = Code39Trioptic;break;
                case 22: enRes = Bookland;break;
                case 23: enRes = CouponCode;break;
                case 24: enRes = NW7;break;
                case 25: enRes = ISBT128;break;
                case 26: enRes = MicroPDF;break;
                case 27: enRes = DataMatrix;break;
                case 28: enRes = QRCode;break;
                case 29: enRes = MicroPDFCCA;break;
                case 30: enRes = PostNetUS;break;
                case 31: enRes = PlanetCode;break;
                case 32: enRes = Code32;break;
                case 33: enRes = ISBT128Con;break;
                case 34: enRes = JapanPostal;break;
                case 35: enRes = AustralianPostal;break;
                case 36: enRes = DutchPostal;break;
                case 37: enRes = MaxiCode;break;
                case 38: enRes = CanadianPostal;break;
                case 39: enRes = UKPostal;break;
                case 40: enRes = MacroPDF;break;
                case 41: enRes = MacroQR;break;
                case 44: enRes = MicroQR;break;
                case 45: enRes = Aztec;break;
                case 46: enRes = AztecRune;break;
                case 48: enRes = GS1DataBar14;break;
                case 49: enRes = GS1DataBarLimited;break;
                case 50: enRes = GS1DataBarExpanded;break;
                case 52: enRes = USPS4CB;break;
                case 53: enRes = UPU4State;break;
                case 54: enRes = ISSN;break;
                case 55: enRes = Scanlet;break;
                case 56: enRes = CueCode;break;
                case 57: enRes = Matrix2of5;break;
                case 72: enRes = UPCA_2Supplemental;break;
                case 73: enRes = UPCE0_2Supplemental;break;
                case 74: enRes = EAN8_2Supplemental;break;
                case 75: enRes = EAN13_2Supplemental;break;
                case 80: enRes = UPCE1_2Supplemental;break;
                case 81: enRes = CCA_EAN128;break;
                case 82: enRes = CCA_EAN13;break;
                case 83: enRes = CCA_EAN8;break;
                case 84: enRes = CCA_GS1DataBarExpanded;break;
                case 85: enRes = CCA_GS1DataBarLimited;break;
                case 86: enRes = CCA_GS1DataBar14;break;
                case 87: enRes = CCA_UPCA;break;
                case 88: enRes = CCA_UPCE;break;
                case 89: enRes = CCC_EAN128;break;
                case 90: enRes = TLC39;break;
                case 97: enRes = CCB_EAN128;break;
                case 98: enRes = CCB_EAN13;break;
                case 99: enRes = CCB_EAN8;break;
                case 100: enRes = CCB_GS1DataBarExpanded;break;
                case 101: enRes = CCB_GS1DataBarLimited;break;
                case 102: enRes = CCB_GS1DataBar14;break;
                case 103: enRes = CCB_UPCA;break;
                case 104: enRes = CCB_UPCE;break;
                case 105: enRes = SignatureCapture;break;
                case 114: enRes = Chinese2of5;break;
                case 115: enRes = Korean3of5;break;
                case 136: enRes = UPCA_5supplemental;break;
                case 137: enRes = UPCE0_5supplemental;break;
                case 138: enRes = EAN8_5supplemental;break;
                case 139: enRes = EAN13_5supplemental;break;
                case 144: enRes = UPCE1_5Supplemental;break;
                case 154: enRes = MacroMicroPDF;break;
                case 180: enRes = GS1DatabarCoupon;break;
                case 183: enRes = HanXin;break;
                case 184: enRes = NEC2of5;break;
                case 185: enRes = Straight2of5_IATA;break;
                case 186: enRes = Straight2of5_Industrial;break;
                case 187: enRes = Telepen;break;
                case 188: enRes = GS1128;break;
                case 189: enRes = BritishPost;break;
                case 190: enRes = InfoMail;break;
                case 191: enRes = IntelligentMailBarcode;break;
                case 192: enRes = KIXPost;break;
                case 193: enRes = Postal_4i;break;
                case 194: enRes = Plessey;break;
            }
            return enRes;
        }


        @Override
        public String toString()
        {
            String strName = "UNKNOWN";
            switch (this) {
                case NOT_READ:
                    strName = "NOT_READ";
                    break;
                case UNKNOWN:
                    strName = "UNKNOWN";
                    break;
                case Code39:
                    strName = "Code 39";
                    break;
                case Codabar:
                    strName = "Codabar";
                    break;
                case Code128:
                    strName = "Code 128";
                    break;
                case Discrete2of5:
                    strName = "Discrete (Standard) 2 of 5";
                    break;
                case IATA:
                    strName = "IATA";
                    break;
                case Interleaved2of5:
                    strName = "Interleaved 2 of 5";
                    break;
                case Code93:
                    strName = "Code 93";
                    break;
                case UPCA:
                    strName = "UPC-A";
                    break;
                case UPCE0:
                    strName = "UPC-E0";
                    break;
                case EAN8:
                    strName = "EAN-8";
                    break;
                case EAN13:
                    strName = "EAN-13";
                    break;
                case Code11:
                    strName = "Code 11";
                    break;
                case Code49:
                    strName = "Code 49";
                    break;
                case MSI:
                    strName = "MSI";
                    break;
                case EAN128:
                    strName = "EAN-128";
                    break;
                case UPCE1:
                    strName = "UPC-E1";
                    break;
                case PDF417:
                    strName = "PDF-417";
                    break;
                case Code16K:
                    strName = "Code 16K";
                    break;
                case Code39FullASCII:
                    strName = "Code 39 Full ASCII";
                    break;
                case UPCD:
                    strName = "UPC-D";
                    break;
                case Code39Trioptic:
                    strName = "Code 39 Trioptic";
                    break;
                case Bookland:
                    strName = "Bookland";
                    break;
                case CouponCode:
                    strName = "Coupon Code";
                    break;
                case NW7:
                    strName = "NW-7";
                    break;
                case ISBT128:
                    strName = "ISBT-128";
                    break;
                case MicroPDF:
                    strName = "Micro PDF";
                    break;
                case DataMatrix:
                    strName = "Data Matrix";
                    break;
                case QRCode:
                    strName = "QR Code";
                    break;
                case MicroPDFCCA:
                    strName = "Micro PDF CCA";
                    break;
                case PostNetUS:
                    strName = "PostNet US";
                    break;
                case PlanetCode:
                    strName = "Planet Code";
                    break;
                case Code32:
                    strName = "Code 32";
                    break;
                case ISBT128Con:
                    strName = "ISBT-128 Con";
                    break;
                case JapanPostal:
                    strName = "Japan Postal";
                    break;
                case AustralianPostal:
                    strName = "Australian Postal";
                    break;
                case DutchPostal:
                    strName = "Dutch Postal";
                    break;
                case MaxiCode:
                    strName = "MaxiCode";
                    break;
                case CanadianPostal:
                    strName = "Canadian Postal";
                    break;
                case UKPostal:
                    strName = "UK Postal";
                    break;
                case MacroPDF:
                    strName = "Macro PDF";
                    break;
                case MacroQR:
                    strName = "Macro QR";
                    break;
                case MicroQR:
                    strName = "Micro QR";
                    break;
                case Aztec:
                    strName = "Aztec";
                    break;
                case AztecRune:
                    strName = "Aztec Rune";
                    break;
                case GS1DataBar14:
                    strName = "GS1 DataBar-14";
                    break;
                case GS1DataBarLimited:
                    strName = "GS1 DataBar Limited";
                    break;
                case GS1DataBarExpanded:
                    strName = "GS1 DataBar Expanded";
                    break;
                case USPS4CB:
                    strName = "USPS 4CB";
                    break;
                case UPU4State:
                    strName = "UPU 4State";
                    break;
                case ISSN:
                    strName = "ISSN";
                    break;
                case Scanlet:
                    strName = "Scanlet";
                    break;
                case CueCode:
                    strName = "CueCode";
                    break;
                case Matrix2of5:
                    strName = "Matrix 2 of 5";
                    break;
                case UPCA_2Supplemental:
                    strName = "UPC-A + 2 Supplemental";
                    break;
                case UPCE0_2Supplemental:
                    strName = "UPC-E0 + 2 Supplemental";
                    break;
                case EAN8_2Supplemental:
                    strName = "EAN-8 + 2 Supplemental";
                    break;
                case EAN13_2Supplemental:
                    strName = "EAN-13 + 2 Supplemental";
                    break;
                case UPCE1_2Supplemental:
                    strName = "UPC-E1 + 2 Supplemental";
                    break;
                case CCA_EAN128:
                    strName = "CCA EAN-128";
                    break;
                case CCA_EAN13:
                    strName = "CCA EAN-13";
                    break;
                case CCA_EAN8:
                    strName = "CCA EAN-8";
                    break;
                case CCA_GS1DataBarExpanded:
                    strName = "CCA GS1 DataBar Expanded";
                    break;
                case CCA_GS1DataBarLimited:
                    strName = "CCA GS1 DataBar Limited";
                    break;
                case CCA_GS1DataBar14:
                    strName = "CCA GS1 DataBar-14";
                    break;
                case CCA_UPCA:
                    strName = "CCA UPC-A";
                    break;
                case CCA_UPCE:
                    strName = "CCA UPC-E";
                    break;
                case CCC_EAN128:
                    strName = "CCC EAN-128";
                    break;
                case TLC39:
                    strName = "TLC-39";
                    break;
                case CCB_EAN128:
                    strName = "CCB EAN-128";
                    break;
                case CCB_EAN13:
                    strName = "CCB EAN-13";
                    break;
                case CCB_EAN8:
                    strName = "CCB EAN-8";
                    break;
                case CCB_GS1DataBarExpanded:
                    strName = "CCB GS1 DataBar Expanded";
                    break;
                case CCB_GS1DataBarLimited:
                    strName = "CCB GS1 DataBar Limited";
                    break;
                case CCB_GS1DataBar14:
                    strName = "CCB GS1 DataBar-14";
                    break;
                case CCB_UPCA:
                    strName = "CCB UPC-A";
                    break;
                case CCB_UPCE:
                    strName = "CCB UPC-E";
                    break;
                case SignatureCapture:
                    strName = "Signature Capture";
                    break;
                case Chinese2of5:
                    strName = "Chinese 2 of 5";
                    break;
                case Korean3of5:
                    strName = "Korean 3 of 5";
                    break;
                case UPCA_5supplemental:
                    strName = "UPC-A + 5 supplemental";
                    break;
                case UPCE0_5supplemental:
                    strName = "UPC-E0 + 5 supplemental";
                    break;
                case EAN8_5supplemental:
                    strName = "EAN-8 + 5 supplemental";
                    break;
                case EAN13_5supplemental:
                    strName = "EAN-13 + 5 supplemental";
                    break;
                case UPCE1_5Supplemental:
                    strName = "UPC-E1 + 5 Supplemental";
                    break;
                case MacroMicroPDF:
                    strName = "Macro Micro PDF";
                    break;
                case GS1DatabarCoupon:
                    strName = "GS1 Databar Coupon";
                    break;
                case HanXin:
                    strName = "Han Xin";
                    break;
                case NEC2of5:
                    strName = "NEC2of5";
                    break;
                case Straight2of5_IATA:
                    strName = "Straight2of5 IATA";
                    break;
                case Straight2of5_Industrial:
                    strName = "Straight2of5 Industrial";
                    break;
                case Telepen:
                    strName = "Telepen";
                    break;
                case GS1128:
                    strName = "GS1 128";
                    break;
                case BritishPost:
                    strName = "British Post";
                    break;
                case InfoMail:
                    strName = "InfoMail";
                    break;
                case IntelligentMailBarcode:
                    strName = "Intelligent Mail Barcode";
                    break;
                case KIXPost:
                    strName = "KIX Post";
                    break;
                case Postal_4i:
                    strName = "Postal_4i";
                    break;
                case Plessey:
                    strName = "Plessey";
                    break;

            }
            return strName;
        }

    }

    public static enum SYMBOLOGY_ENABLE {
        //1D
        UPC_A,//SE4750,N4313
        UPC_E,//SE4750,N4313
        UPC_E1,//SE4750
        EAN8,//SE4750,N4313
        EAN13,//SE4750,N4313
        BOOKLAND_EAN,//SE4750
        ISSN_EAN,//SE4750
        CODE128,//SE4750,N4313
        GS1_128,//SE4750,N4313
        ISBT128,//SE4750,N4313
        CODE39,//SE4750,N4313
        TRIOPTIC_CODE39,//SE4750,N4313
        CODE93,//SE4750,N4313
        CODE11,//SE4750,N4313
        INTERLEAVED2OF5,//SE4750,N4313
        DISCRETE2OF5,//SE4750
        CODABAR,//SE4750,N4313
        MSI,//SE4750,N4313
        CHINESE2OF5,//SE4750,N4313
        KOREAN3OF5,//SE4750
        MATRIX2OF5,//SE4750,N4313
        US_POSTNET,//SE4750
        US_PLANET,//SE4750
        UK_POSTAL,//SE4750
        JAPAN_POSTAL,//SE4750
        AUSTRALIA_POST,//SE4750
        NETHERLANDS_KIX_CODE,//SE4750
        USPS4CB,//SE4750
        UPU_FICS_POSTAL,//SE4750
        GS1_DATABAR_14,//SE4750
        GS1_DATABAR_LIMITED,//SE4750,N4313
        GS1_DATABAR_EXPANDED,//SE4750,N4313
        COMPOSITE_CC_C,//SE4750
        COMPOSITE_CC_AB,//SE4750
        COMPOSITE_TLC39,//SE4750
        //2D
        PDF417,//SE4750
        MICROPDF417,//SE4750
        CODE128_EMULATION,//SE4750
        DATA_MATRIX,//SE4750
        MAXICODE,//SE4750
        QR_CODE,//SE4750
        MICRO_QR,//SE4750
        AZTEC,//SE4750
        HANXIN,//SE4750

        CODE32,//N4313
        GS1_DATABAR_OMNIDIRECTIONAL,//N4313
        NEC2OF5,//N4313
        PLESSEY,//N4313
        STRAIGHT2OF5_IATA,//N4313
        STRAIGHT2OF5_INDUSTRIAL,//N4313
        TELEPEN,//N4313
    }
}
