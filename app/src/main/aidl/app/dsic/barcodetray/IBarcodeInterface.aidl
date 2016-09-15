// IBarcodeInterface.aidl
package app.dsic.barcodetray;
// Declare any non-default types here with import statements

interface IBarcodeInterface {
    /**
             * Demonstrates some basic types that you can use as parameters
             * and return values in AIDL.
             */
            //void basicTypes(int anInt, long aLong, boolean aBoolean, float aFloat,
            //        double aDouble, String aString);
            //Common

        int Open();
        int Close();
        boolean IsBarcodeOpened();

        int ScanStart();
        int ScanStop();
        boolean IsScanEnable();
        void SetScanEnable(boolean bEnable);
        String GetVersionInfo( );

        boolean SetScanTimeout(float nTimeout);
        float GetScanTimeout();
        int GetRecvType();
        void SetRecvType(int nRecvType);

        boolean SetPrefix1(String strPrefix1);
        String GetPrefix1();
        boolean SetPrefix2(String strPrefix2);
        String GetPrefix2();
        boolean SetSuffix1(String strSuffix1);
        String GetSuffix1();
        boolean SetSuffix2(String strPrefix2);
        String GetSuffix2();
        boolean SetTransmitBarcodeID(boolean bEnable);
        boolean GetTransmitBarcodeID();

        //boolean GetLeftScanKeyEnable();
        //void    SetLeftScanKeyEnable(boolean bEnable);
        //boolean GetRightScanKeyEnable();
        //void    SetRightScanKeyEnable(boolean bEnable);

        boolean GetEnableKeyupStop();
        void     SetEnableKeyupStop(boolean bSetEnableKeyupStop);

        boolean GetMultiScan();
        void    SetMultiScan(boolean bEnable);

        int     GetScanSuccessNoti();
        void    SetScanSuccessNoti(int nNoti);
        int     GetScanFailNoti();
        void    SetScanFailNoti(int nNoti);

        int     GetDelayMode();
        void    SetDelayMode(int nMode);
        int     GetCustomDelayTime();
        void    SetCustomDelayTime(int nDelayTime);
        int     GetDelayTime();

        String GetIntentName();
        void SetIntentName(String IntentName);
        String GetIntentBarcodeData();
        void SetIntentBarcodeData(String BarcodeData);
        String GetIntentSymData();
        void SetIntentSymData(String SymData);

        //boolean GetAutoDecodingCharset();
        //void SetAutoDecodingCharset(boolean bAuto);
        String GetDecodingCharset();
        boolean SetDecodingCharset(String strCharset);

        boolean SetURLDirection(boolean bEnable);
        boolean GetURLDirection();

        boolean SetFloatingScanButtonEnable(boolean bEnable);
        boolean GetFloatingScanButtonEnable();

        void SetAllSymbologyEnable();
        void SetAllSymbologyDisable();
        boolean SetSymbologyEnable(int nIdentifier,boolean bEnable);

        //Camera
        void    SE4750_StartVideo();
        void    SE4750_StopVideo();
        void    SE4750_TakeSnap();

        //Added Option
        boolean    SE4750_SetIllumiationPowerLevel(int nPWLevel);
        int     SE4750_GetIllumiationPowerLevel();
        boolean SE4750_SetPicklistMode(boolean bEnable);
        boolean SE4750_GetPicklistMode();
        boolean SE4750_SetTimeoutDecodeSameSymbol(float fTimeout);
        float SE4750_GetTimeoutDecodeSameSymbol();
        boolean SE4750_SetTransmitCodeIDCharacter(int nChar);
        int SE4750_GetTransmitCodeIDCharacter();
        boolean SE4750_SetTransmitNoReadMessage(boolean bTrasmit);
        boolean SE4750_GetTransmitNoReadMessage();
        boolean SE4750_SetFuzzy1DProcessing(boolean bProcessing);
        boolean SE4750_GetFuzzy1DProcessing();
        boolean SE4750_SetMobilePhoneDisplayMode(boolean bEnable);
        boolean SE4750_GetMobilePhoneDisplayMode();
        boolean SE4750_SetImageCropping(boolean bEnable);
        boolean SE4750_GetImageCropping();
        boolean SE4750_SetCropToPixelTopAddresses(int nTop);
        int SE4750_GetCropToPixelTopAddresses();
        boolean SE4750_SetCropToPixelBottomAddresses(int nBottom);
        int SE4750_GetCropToPixelnBottomAddresses();
        boolean SE4750_SetCropToPixelLeftAddresses(int nLeft);
        int SE4750_GetCropToPixelnLeftAddresses();
        boolean SE4750_SetCropToPixelRightAddresses(int nRight);
        int SE4750_GetCropToPixelnRightAddresses();


        //Code Enable
        void    SE4750_SetAllEnable();
        void    SE4750_SetAllDisable();
        boolean SE4750_SetSymbologyEnable(int nIdent,boolean bEnable);

        //UPC/EAN
        //Set
        boolean SE4750_SetUPC_EAN_JAN_Supplementals(int nSupplement);
        boolean SE4750_SetUPC_EAN_JAN_SupplementalsRedundancy(int nSupplementalsRedundancy);
        boolean SE4750_SetUPC_EAN_JAN_Supplemental_AIM_ID_Format(int nAIMIDFormat);
        boolean SE4750_SetUPC_EAN_JAN_TransmitUPCACheckDigit(boolean bTransmitUPCACheckDigit);
        boolean SE4750_SetUPC_EAN_JAN_TransmitUPCECheckDigit(boolean bTransmitUPCECheckDigit);
        boolean SE4750_SetUPC_EAN_JAN_TransmitUPCE1CheckDigit(boolean bTransmitUPCE1CheckDigit);
        boolean SE4750_SetUPC_EAN_JAN_UPCA_Preamble(int nUPCAPreamble);
        boolean SE4750_SetUPC_EAN_JAN_UPCE_Preamble(int nUPCEPreamble);
        boolean SE4750_SetUPC_EAN_JAN_UPCE1_Preamble(int nUPCE1Preamble);
        boolean SE4750_SetUPC_EAN_JAN_ConvertUPCEToA(boolean bConvertUPCEToA);
        boolean SE4750_SetUPC_EAN_JAN_ConvertUPCE1ToA(boolean bConvertUPCE1ToA);
        boolean SE4750_SetUPC_EAN_JAN_EAN8_JAN8_Extend(boolean bExtend);
        boolean SE4750_SetUPC_EAN_JAN_BooklandISBNFormat(int nFormat);
        boolean SE4750_SetUPC_EAN_JAN_UCC_Coupon_Extended_Code(boolean bUCCCouponExtendedCode);
        boolean SE4750_SetUPC_EAN_JAN_UCC_Coupon_Report(int nCouponReport);
        //Get
        int SE4750_GetUPC_EAN_JAN_Supplementals();
        int SE4750_GetUPC_EAN_JAN_SupplementalsRedundancy();
        int SE4750_GetUPC_EAN_JAN_Supplemental_AIM_ID_Format();
        boolean SE4750_GetUPC_EAN_JAN_TransmitUPCACheckDigit();
        boolean SE4750_GetUPC_EAN_JAN_TransmitUPCECheckDigit();
        boolean SE4750_GetUPC_EAN_JAN_TransmitUPCE1CheckDigit();
        int SE4750_GetUPC_EAN_JAN_UPCA_Preamble();
        int SE4750_GetUPC_EAN_JAN_UPCE_Preamble();
        int SE4750_GetUPC_EAN_JAN_UPCE1_Preamble();
        boolean SE4750_GetUPC_EAN_JAN_ConvertUPCEToA();
        boolean SE4750_GetUPC_EAN_JAN_ConvertUPCE1ToA();
        boolean SE4750_GetUPC_EAN_JAN_EAN8_JAN8_Extend();
        int SE4750_GetUPC_EAN_JAN_BooklandISBNFormat();
        boolean SE4750_GetUPC_EAN_JAN_UCC_Coupon_Extended_Code();
        boolean SE4750_GetUPC_EAN_JAN_UCC_Coupon_Report();

        //Code128
        //Set
        boolean SE4750_SetCode128Length1(int nLength);
        boolean SE4750_SetCode128Length2(int nLength);
        boolean SE4750_SetISBTConcatencation(int nConcatenation);
        boolean SE4750_SetCheckISBTTable(boolean bCheck);
        boolean SE4750_SetISBTConcatenationRedundancy(int nRedundancy);

        //Get
        int SE4750_GetCode128Length1();
        int SE4750_GetCode128Length2();
        int SE4750_GetISBTConcatencation();
        boolean SE4750_GetCheckISBTTable();
        int SE4750_GetISBTConcatenationRedundancy();

        //Code39
        //Set
        boolean SE4750_SetCode39ConvertCode39ToCode32(boolean bSet);
        boolean SE4750_SetCode39ConvertCode32Prefix(boolean bSet);
        boolean SE4750_SetCode39Length1(int nLength);
        boolean SE4750_SetCode39Length2(int nLength);
        boolean SE4750_SetCode39CheckDigitVerification(boolean bCheckDigit);
        boolean SE4750_SetCode39TransmitCheckDigit(boolean bTransmit);
        boolean SE4750_SetCode39FullASCIIConversion(boolean bFullASCII);

        //Get
        boolean SE4750_GetCode39ConvertCode39ToCode32();
        boolean SE4750_GetCode39ConvertCode32Prefix();
        int SE4750_GetCode39Length1();
        int SE4750_GetCode39Length2();
        boolean SE4750_GetCode39CheckDigitVerification();
        boolean SE4750_GetCode39TransmitCheckDigit();
        boolean SE4750_GetCode39FullASCIIConversion();

        //Code93
        //Set
        boolean SE4750_SetCode93Length1(int nLength);
        boolean SE4750_SetCode93Length2(int nLength);

        //Get
        int SE4750_GetCode93Length1();
        int SE4750_GetCode93Length2();

        //Code11
        //Set
        boolean SE4750_SetCode11Length1(int nLength);
        boolean SE4750_SetCode11Length2(int nLength);
        boolean SE4750_SetCode11CheckDigitVerification(int nCheckDigit);
        boolean SE4750_SetCode11TransmitCheckDigits(boolean bSet);

        //Get
        int SE4750_GetCode11Length1();
        int SE4750_GetCode11Length2();
        int SE4750_GetCode11CheckDigitVerification();
        boolean SE4750_GetCode11TransmitCheckDigits();

        //Interleaved 2 of 5
        //Set
        boolean SE4750_SetInterleaved2of5Length1(int nLength);
        boolean SE4750_SetInterleaved2of5Length2(int nLength);
        boolean SE4750_SetInterleaved2of5CheckDigitVerification(int nCheckDigit);
        boolean SE4750_SetInterleaved2of5TransmitCheckDigits(boolean bSet);
        boolean SE4750_SetInterleaved2of5ConvertI25ToEAN13(boolean bConvert);
        boolean SE4750_SetInterleaved2of5SecurityLevel(int nSecurityLevel);

        //Get
        int SE4750_GetInterleaved2of5Length1();
        int SE4750_GetInterleaved2of5Length2();
        int SE4750_GetInterleaved2of5CheckDigitVerification();
        boolean SE4750_GetInterleaved2of5TransmitCheckDigits();
        boolean SE4750_GetInterleaved2of5ConvertI25ToEAN13();
        int SE4750_GetInterleaved2of5SecurityLevel();

        //Discrete 2 of 5
        //Set
        boolean SE4750_SetDiscreteLength1(int nLength);
        boolean SE4750_SetDiscreteLength2(int nLength);

        //Get
        int SE4750_GetDiscreteLength1();
        int SE4750_GetDiscreteLength2();

        //Codabar
        //Set
        boolean SE4750_SetCodabarLength1(int nLength);
        boolean SE4750_SetCodabarLength2(int nLength);
        boolean SE4750_SetCodabarCLSIEditing(boolean bEditing);
        boolean SE4750_SetCodabarNOTISEditing(boolean bEditing);

        //Get
        int SE4750_GetCodabarLength1();
        int SE4750_GetCodabarLength2();
        boolean SE4750_GetCodabarCLSIEditing();
        boolean SE4750_GetCodabarNOTISEditing();

        //MSI
        //Set
        boolean SE4750_SetMSILength1(int nLength);
        boolean SE4750_SetMSILength2(int nLength);
        boolean SE4750_SetMSICheckDigit(int nDigits);
        boolean SE4750_SetMSITransmitCheckDigit(boolean bTransmit);
        boolean SE4750_SetMSICheckDigitAlgorithm(int nDigits);

        //Get
        int SE4750_GetMSILength1();
        int SE4750_GetMSILength2();
        int SE4750_GetMSICheckDigit();
        boolean SE4750_GetMSITransmitCheckDigit();
        int SE4750_GetMSICheckDigitAlgorithm();

        //Matrix 2 of 5
        //Set
        boolean SE4750_SetMatrix2of5Length1(int nLength);
        boolean SE4750_SetMatrix2of5Length2(int nLength);
        boolean SE4750_SetMatrix2of5Redundancy(boolean bRedundancy);
        boolean SE4750_SetMatrix2of5CheckDigit(boolean bCheckDigit);
        boolean SE4750_SetMatrix2of5TransmitCheckDigit(boolean bTransmit);

        //Get
        int SE4750_GetMatrix2of5ILength1();
        int SE4750_GetMatrix2of5Length2();
        boolean SE4750_GetMatrix2of5Redundancy();
        boolean SE4750_GetMatrix2of5CheckDigit();
        boolean SE4750_GetMatrix2of5TransmitCheckDigit();

        //Inverse 1D
        //Set
        boolean SE4750_SetInverse1D(int nInverse);

        //Get
        int SE4750_GetInverse1D();

        //US Postal
        //Set
        boolean SE4750_SetUSPostalTransmitCheckDigit(boolean bCheckDigit);

        //Get
        boolean SE4750_GetUSPostalTransmitCheckDigit();

        //UK Postal
        //Set
        boolean SE4750_SetUKPostalTransmitCheckDigit(boolean bCheckDigit);

        //Get
        boolean SE4750_GetUKPostalTransmitCheckDigit();

        //Australia Post
        //Set
        boolean SE4750_SetAustraliaPostFormat(int nFormat);

        //Get
        int SE4750_GetAustraliaPostFormat();

        //GS1 Databar
        //Set
        boolean SE4750_SetGS1DatabarLimitedSecurityLevel(int nLevel);
        boolean SE4750_SetGS1DatabarConvertToUPC_EAN(boolean bConvert);

        //Get
        int SE4750_GetGS1DatabarLimitedSecurityLevel();
        boolean SE4750_GetGS1DatabarConvertToUPC_EAN();

        //Composite
        //Set
        boolean SE4750_SetUPCCompositeMode(int nMode);
        boolean SE4750_SetGS1128EmulationModeForUCC_EANCompositeCodes(boolean bEmulation);

        //Get
        int SE4750_GetUPCCompositeMode();
        boolean SE4750_GetGS1128EmulationModeForUCC_EANCompositeCodes();

        //MicroPDF
        //Set
        boolean SE4750_SetMicroPDFCode128Emulation(boolean bEmulation);

        //Get
        boolean SE4750_GetMicroPDFCode128Emulation();

        //Data Matrix
        //Set
        boolean SE4750_SetDataMatrixInverse(int nInverse);
        boolean SE4750_SetDataMatrixDecodeMirrorImage(int nDecode);

        //Get
        int SE4750_GetDataMatrixInverse();
        int SE4750_GetDataMatrixDecodeMirrorImage();

        //QR
        //Set
        boolean SE4750_SetQRInverse(int nInverse);

        //Get
        int SE4750_GetQRInverse();

        //Aztec
        //Set
        boolean SE4750_SetAztecInverse(int nInverse);

        //Get
        int SE4750_GetAztecInverse();

        //HanXin
        //Set
        boolean SE4750_SetHanXinInverse(int nInverse);

        //Get
        int SE4750_GetHanXinInverse();

        //Symbology-Specific Security Levels
        //Set
        boolean SE4750_SetRedundancyLevel(int nLevel);
        boolean SE4750_SetSecurityLevel(int nLevel);
        boolean SE4750_SetIntercharacterGapSize(int nGapSize);
        boolean SE4750_SetIlluminationCurrentLimit(int nLimit);
        //Get
        int SE4750_GetRedundancyLevel();
        int SE4750_GetSecurityLevel();
        int SE4750_GetIntercharacterGapSize();
        int SE4750_GetIlluminationCurrentLimit();

        //Setting
        boolean ExportSetting(String strTargetPath);
        boolean ImportSetting(String strTargetPath);
        boolean DefaultSetting();


        //N4313
        boolean N4313_SetChinaPostRedundancy(int nRange);
        boolean N4313_SetChinaPostMinLength(int nMin);
        boolean N4313_SetChinaPostMaxLength(int nMax);

        int N4313_GetChinaPostRedundancy();
        int N4313_GetChinaPostMinLength();
        int N4313_GetChinaPostMaxLength();

        boolean N4313_SetCodabarTransmitStartStopChar(boolean bUse);
        boolean N4313_SetCodabarCheckChar(int nCheckChar);
        boolean N4313_SetCodabarConcatenation(int nConcatenation);
        boolean N4313_SetCodabarRedundancy(int nRedundancy);
        boolean N4313_SetCodabarMinLength(int nMinLength);
        boolean N4313_SetCodabarMaxLength(int nMaxLength);

        boolean N4313_GetCodabarTransmitStartStopChar();
        int N4313_GetCodabarCheckChar();
        int N4313_GetCodabarConcatenation();
        int N4313_GetCodabarRedundancy();
        int N4313_GetCodabarMinLength();
        int N4313_GetCodabarMaxLength();

        boolean N4313_SetCode11CheckDigitRequired(int nRequired);
        boolean N4313_SetCode11Redundancy(int nRedundancy);
        boolean N4313_SetCode11MinLength(int nMinLength);
        boolean N4313_SetCode11MaxLength(int nMaxLength);

        int N4313_GetCode11SetCode11CheckDigitRequired();
        int N4313_GetCode11Redundancy();
        int N4313_GetCode11MinLength();
        int N4313_GetCode11MaxLength();

        boolean N4313_SetCode39TransmitStartStopChar(boolean bUse);
        boolean N4313_SetCode39CheckChar(int nCheckChar);
        boolean N4313_SetCode39Redundancy(int nRedundancy);
        boolean N4313_SetCode39MinLength(int nMinLength);
        boolean N4313_SetCode39MaxLength(int nMaxLength);
        boolean N4313_SetCode39FullASCII(boolean bOn);

        boolean N4313_GetCode39TransmitStartStopChar();
        int N4313_GetCode39CheckChar();
        int N4313_GetCode39Redundancy();
        int N4313_GetCode39MinLength();
        int N4313_GetCode39MaxLength();
        boolean N4313_GetCode39FullASCII();

        boolean N4313_SetCode93Redundancy(int nRedundancy);
        boolean N4313_SetCode93MinLength(int nMinLength);
        boolean N4313_SetCode93MaxLength(int nMaxLength);

        int N4313_GetCode93Redundancy();
        int N4313_GetCode93MinLength();
        int N4313_GetCode93MaxLength();

        boolean N4313_SetCode128GroupSeparatorOutput(boolean bUse);
        boolean N4313_SetCode128Redundancy(int nRedundancy);
        boolean N4313_SetCode128MinLength(int nMinLength);
        boolean N4313_SetCode128MaxLength(int nMaxLength);

        boolean N4313_GetCode128GroupSeparatorOutput();
        int N4313_GetCode128Redundancy();
        int N4313_GetCode128MinLength();
        int N4313_GetCode128MaxLength();

        boolean N4313_SetEAN8CheckDigit(boolean bUse);
        boolean N4313_SetEAN8_2CheckAddenda(boolean bUse);
        boolean N4313_SetEAN8_5CheckAddenda(boolean bUse);
        boolean N4313_SetEAN8AddendaRequired(boolean bUse);
        boolean N4313_SetEAN8AddendaSeparator(boolean bUse);
        boolean N4313_SetEAN8Redundancy(int nRedundancy);

        boolean N4313_GetEAN8CheckDigit();
        boolean N4313_GetEAN8_2CheckAddenda();
        boolean N4313_GetEAN8_5CheckAddenda();
        boolean N4313_GetEAN8AddendaRequired();
        boolean N4313_GetEAN8AddendaSeparator();
        int N4313_GetEAN8Redundancy();

        boolean N4313_SetEAN13CheckDigit(boolean bUse);
        boolean N4313_SetEAN13_2CheckAddenda(boolean bUse);
        boolean N4313_SetEAN13_5CheckAddenda(boolean bUse);
        boolean N4313_SetEAN13AddendaRequired(boolean bUse);
        boolean N4313_SetEAN13BeginningWith2AddendaRequired(boolean bUse);
        boolean N4313_SetEAN13BeginningWith290AddendaRequired(boolean bUse);
        boolean N4313_SetEAN13BeginningWith378_379AddendaRequired(int nAddenda);
        boolean N4313_SetEAN13BeginningWith414_419AddendaRequired(int nAddenda);
        boolean N4313_SetEAN13BeginningWith434_439AddendaRequired(int nAddenda);
        boolean N4313_SetEAN13BeginningWith977AddendaRequired(boolean bUse);
        boolean N4313_SetEAN13BeginningWith978AddendaRequired(boolean bUse);
        boolean N4313_SetEAN13BeginningWith979AddendaRequired(boolean bUse);
        boolean N4313_SetEAN13AddendaSeparator(boolean bUse);
        boolean N4313_SetEAN13Redundancy(int nRedundancy);
        boolean N4313_SetEAN13ISBNTranslate(boolean bUse);
        boolean N4313_SetEAN13ISBNConvertTo13Digit(boolean bUse);
        boolean N4313_SetEAN13ISBNReformat(boolean bUse);
        boolean N4313_SetEAN13ISSNTranslate(boolean bUse);
        boolean N4313_SetEAN13ISSNReformat(boolean bUse);

        boolean N4313_GetEAN13CheckDigit();
        boolean N4313_GetEAN13_2CheckAddenda();
        boolean N4313_GetEAN13_5CheckAddenda();
        boolean N4313_GetEAN13AddendaRequired();
        boolean N4313_GetEAN13BeginningWith2AddendaRequired();
        boolean N4313_GetEAN13BeginningWith290AddendaRequired();
        int N4313_GetEAN13BeginningWith378_379AddendaRequired();
        int N4313_GetEAN13BeginningWith414_419AddendaRequired();
        int N4313_GetEAN13BeginningWith434_439AddendaRequired();
        boolean N4313_GetEAN13BeginningWith977AddendaRequired();
        boolean N4313_GetEAN13BeginningWith978AddendaRequired();
        boolean N4313_GetEAN13BeginningWith979AddendaRequired();
        boolean N4313_GetEAN13AddendaSeparator();
        int N4313_GetEAN13Redundancy();
        boolean N4313_GetEAN13ISBNTranslate();
        boolean N4313_GetEAN13ISBNConvertTo13Digit();
        boolean N4313_GetEAN13ISSNTranslate();
        boolean N4313_GetEAN13ISSNReformat();

        boolean N4313_SetGS1_128ApplicationIdentifierParsing(int nParsing);
        boolean N4313_SetGS1_128Redundancy(int nRedundancy);
        boolean N4313_SetGS1_128MinLength(int nMinLength);
        boolean N4313_SetGS1_128MaxLength(int nMaxLength);

        int N4313_GetGS1_128ApplicationIdentifierParsing();
        int N4313_GetGS1_128Redundancy();
        int N4313_GetGS1_128MinLength();
        int N4313_GetGS1_128MaxLength();

        boolean N4313_SetGS1DatabarExpandedRedundancy(int nRedundancy);
        boolean N4313_SetGS1_DatabarExpandedMinLength(int nMinLength);
        boolean N4313_SetGS1_DatabarExpandedMaxLength(int nMaxLength);

        int N4313_GetGS1_DatabarExpandedRedundancy();
        int N4313_GetGS1_DatabarExpandedMinLength();
        int N4313_GetGS1_DatabarExpandedMaxLength();

        boolean N4313_SetGS1DatabarLimitedRedundancy(int nRedundancy);

        int N4313_GetGS1_DatabarLimitedRedundancy();

        boolean N4313_SetGS1DatabarOmnidirectionalRedundancy(int nRedundancy);

        int N4313_GetGS1_DatabarOmnidirectionalRedundancy();

        boolean N4313_SetInterleaved2of5FollettFormatting(boolean bUse);
        boolean N4313_SetInterleaved2of5NULLCharacters(boolean bUse);
        boolean N4313_SetInterleaved2of5CheckDigit(int nCheckDigit);
        boolean N4313_SetInterleaved2of5Redundancy(int nRedundancy);
        boolean N4313_SetInterleaved2of5MinLength(int nMinLength);
        boolean N4313_SetInterleaved2of5MaxLength(int nMaxLength);

        boolean N4313_GetInterleaved2of5FollettFormatting();
        boolean N4313_GetInterleaved2of5NULLCharacters();
        int N4313_GetInterleaved2of5CheckDigit();
        int N4313_GetInterleaved2of5Redundancy();
        int N4313_GetInterleaved2of5MinLength();
        int N4313_GetInterleaved2of5MaxLength();

        boolean N4313_SetISBT128PredefinedConcatenatioSequences(int nIDS);
        boolean N4313_SetISBT128PredefinedConcatenationSequencesOnOff(int nOnOff);
        boolean N4313_SetISBT128UserDefinedConcatenationSequences1stLeftIdent(int ASCIICode);
        boolean N4313_SetISBT128UserDefinedConcatenationSequences2ndLeftIdent(int ASCIICode);
        boolean N4313_SetISBT128UserDefinedConcatenationSequences1stRightIdent(int ASCIICode);
        boolean N4313_SetISBT128UserDefinedConcatenationSequences2ndRightIdent(int ASCIICode);
        boolean N4313_SetISBT128UserDefinedConcatenationSequencesOnOff(int nOnOff);
        boolean N4313_SetISBT128ContentVerification(boolean bUse);
        boolean N4313_SetISBT128TransmitIdentifiers(boolean bUse);
        boolean N4313_SetISBT128FlagConversion(boolean bUse);

        int N4313_GetISBT128PredefinedConcatenatioSequences();
        int N4313_GetISBT128PredefinedConcatenationSequencesOnOff();
        int N4313_GetISBT128UserDefinedConcatenationSequences1stLeftIdent();
        int N4313_GetISBT128UserDefinedConcatenationSequences2ndLeftIdent();
        int N4313_GetISBT128UserDefinedConcatenationSequences1stRightIdent();
        int N4313_GetISBT128UserDefinedConcatenationSequences2ndRightIdent();
        int N4313_GetISBT128UserDefinedConcatenationSequencesOnOff();
        boolean N4313_GetISBT128ContentVerification();
        boolean N4313_GetISBT128TransmitIdentifiers();
        boolean N4313_GetISBT128FlagConversion();

        boolean N4313_SetMatrix2of5Redundancy(int nRedundancy);
        boolean N4313_SetMatrix2of5MinLength(int nMinLength);
        boolean N4313_SetMatrix2of5MaxLength(int nMaxLength);
        boolean N4313_SetMatrix2of5CheckChar(int CheckChar);

        int N4313_GetMatrix2of5Redundancy();
        int N4313_GetMatrix2of5MinLength();
        int N4313_GetMatrix2of5MaxLength();
        int N4313_GetMatrix2of5CheckChar();

        boolean N4313_SetMSIRedundancy(int nRedundancy);
        boolean N4313_SetMSIMinLength(int nMinLength);
        boolean N4313_SetMSIMaxLength(int nMaxLength);
        boolean N4313_SetMSICheckChar(int CheckChar);

        int N4313_GetMSIRedundancy();
        int N4313_GetMSIMinLength();
        int N4313_GetMSIMaxLength();
        int N4313_GetMSICheckChar();

        boolean N4313_SetNEC2of5Redundancy(int nRedundancy);
        boolean N4313_SetNEC2of5MinLength(int nMinLength);
        boolean N4313_SetNEC2of5MaxLength(int nMaxLength);
        boolean N4313_SetNEC2of5CheckDigit(int nDigit);

        int N4313_GetNEC2of5Redundancy();
        int N4313_GetNEC2of5MinLength();
        int N4313_GetNEC2of5MaxLength();
        int N4313_GetNEC2of5CheckDigit();

        boolean N4313_SetPlessyRedundancy(int nRedundancy);
        boolean N4313_SetPlessyMinLength(int nMinLength);
        boolean N4313_SetPlessyMaxLength(int nMaxLength);
        boolean N4313_SetPlessyCheckChar(int CheckChar);

        int N4313_GetPlessyRedundancy();
        int N4313_GetPlessyMinLength();
        int N4313_GetPlessyMaxLength();
        int N4313_GetPlessyCheckChar();

        boolean N4313_SetStraight2of5IATARedundancy(int nRedundancy);
        boolean N4313_SetStraight2of5IATAMinLength(int nMinLength);
        boolean N4313_SetStraight2of5IATAMaxLength(int nMaxLength);

        int N4313_GetStraight2of5IATARedundancy();
        int N4313_GetStraight2of5IATAMinLength();
        int N4313_GetStraight2of5IATAMaxLength();

        boolean N4313_SetStraight2of5IndustrialRedundancy(int nRedundancy);
        boolean N4313_SetStraight2of5IndustrialMinLength(int nMinLength);
        boolean N4313_SetStraight2of5IndustrialMaxLength(int nMaxLength);

        int N4313_GetStraight2of5IndustrialRedundancy();
        int N4313_GetStraight2of5IndustrialMinLength();
        int N4313_GetStraight2of5IndustrialMaxLength();

        boolean N4313_SetTelepenOutput(int nOutput);
        boolean N4313_SetTelepenRedundancy(int nRedundancy);
        boolean N4313_SetTelepenMinLength(int nMinLength);
        boolean N4313_SetTelepenMaxLength(int nMaxLength);

        int N4313_GetTelepenOutput();
        int N4313_GetTelepenRedundancy();
        int N4313_GetTelepenMinLength();
        int N4313_GetTelepenMaxLength();

        boolean N4313_SetTriopticCodeRedundancy(int nRedundancy);

        int N4313_GetTriopticCodeRedundancy();

        boolean N4313_SetUPCAConvertUPCAtoEAN13(int nConvert);
        boolean N4313_SetUPCANumberSystem(boolean bUse);
        boolean N4313_SetUPCACheckDigit(boolean bUse);
        boolean N4313_SetUPCA2DigitAddenda(boolean bUse);
        boolean N4313_SetUPCA5DigitAddenda(boolean bUse);
        boolean N4313_SetUPCAAddendaRequired(boolean bUse);
        boolean N4313_SetUPCAAddendaSeparator(boolean bUse);
        boolean N4313_SetUPCARedundancy(int nRedundancy);
        boolean N4313_SetUPCA_EAN13withExtendedCouponCode(int nConcatenation);
        boolean N4313_SetUPCA_Code128CouponCodeOutput(int nCodeOutput);
        boolean N4313_SetUPCA_NumberSystem4AddendaRequired(int nRequiredCouponCode);
        boolean N4313_SetUPCA_NumberSystem5AddendaRequired(int nRequiredCouponCode);

        int N4313_GetUPCAConvertUPCAtoEAN13();
        boolean N4313_GetUPCANumberSystem();
        boolean N4313_GetUPCACheckDigit();
        boolean N4313_GetUPCA2DigitAddenda();
        boolean N4313_GetUPCA5DigitAddenda();
        boolean N4313_GetUPCAAddendaRequired();
        boolean N4313_GetUPCAAddendaSeparator();
        int N4313_GetUPCARedundancy();
        int N4313_GetUPCA_EAN13withExtendedCouponCode();
        int N4313_GetUPCA_Code128CouponCodeOutput();
        int N4313_GetUPCA_NumberSystem4AddendaRequired();
        int N4313_GetUPCA_NumberSystem5AddendaRequired();

        boolean N4313_SetUPCE0Expand(boolean bUse);
        boolean N4313_SetUPCE0NumberSystem(boolean bUse);
        boolean N4313_SetUPCE0CheckDigit(boolean bUse);
        boolean N4313_SetUPCE0LeadingZero(boolean bUse);
        boolean N4313_SetUPCE0_2DigitAddenda(boolean bUse);
        boolean N4313_SetUPCE0_5DigitAddenda(boolean bUse);
        boolean N4313_SetUPCE0AddendaRequired(boolean bUse);
        boolean N4313_SetUPCE0AddendaSeparator(boolean bUse);
        boolean N4313_SetUPCE0Redundancy(int nRedundancy);

        boolean N4313_GetUPCE0Expand();
        boolean N4313_GetUPCE0NumberSystem();
        boolean N4313_GetUPCE0CheckDigit();
        boolean N4313_GetUPCE0LeadingZero();
        boolean N4313_GetUPCE0_2DigitAddenda();
        boolean N4313_GetUPCE0_5DigitAddenda();
        boolean N4313_GetUPCE0AddendaRequired();
        boolean N4313_GetUPCE0AddendaSeparator();
        int N4313_GetUPCE0Redundancy();

        void ConnectAddOnService();
        void DisconnectAddOnService();
        boolean IsAddOnServiceAvailable();
        String GetAppVersion();
}
