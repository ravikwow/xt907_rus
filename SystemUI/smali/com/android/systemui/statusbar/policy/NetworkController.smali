.class public Lcom/android/systemui/statusbar/policy/NetworkController;
.super Landroid/content/BroadcastReceiver;
.source "NetworkController.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkController$StatusBarHandler;,
        Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;,
        Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;,
        Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    }
.end annotation


# static fields
.field static CHATTY:Z

.field static CHATTY_FORCE:Z

.field static DEBUG:Z

.field static DEBUG_FORCE:Z

.field static INFO:Z

.field static INFO_FORCE:Z


# instance fields
.field mAirplaneIconId:I

.field protected mAirplaneMode:Z

.field mAlwaysShowCdmaRssi:Z

.field protected mBluetoothTetherIconId:I

.field protected mBluetoothTethered:Z

.field private mCachePlmn:Ljava/lang/String;

.field private mCacheShowPlmn:Z

.field private mCacheShowSpn:Z

.field private mCacheSpn:Ljava/lang/String;

.field mCombinedLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigAllowDifferentiatedInetCondition:Z

.field mConfigAlwaysShowAttachedNetworkType:Z

.field private mConfigDisableColoredWideStatusbarIcons:Z

.field private mConfigDisableWideActivityStatusbarIcons:Z

.field private mConfigEnableCarrierCustomIcons:Z

.field private mConfigEnableCarrierCustomMappings:Z

.field private mConfigEnableColoredNarrowStatusbarIcons:Z

.field private mConfigEnableWideIcons:Z

.field mConfigNetworkNameShortFormSupported:Z

.field mConfigNetworkNameSpnHasPriority:Z

.field mConfigShowBothWifiAndMobileNetwork:Z

.field mConfigShowEmergencyCallsOnlyIcon:Z

.field mConfigShowNetworkTypeWhenVoiceOnlyService:Z

.field private mConfigShowNoServiceText:Z

.field mConfigShowSignalBarsWhenDataOnlyService:Z

.field private mConfigWideIconsAreBlue:Z

.field protected mConnected:Z

.field protected mConnectedNetworkType:I

.field protected mConnectedNetworkTypeName:Ljava/lang/String;

.field mConnectivityManager:Landroid/net/ConnectivityManager;

.field mContentDescriptionDataType:Ljava/lang/String;

.field mContentDescriptionPhoneSignal:Ljava/lang/String;

.field mContentDescriptionRoaming:Ljava/lang/String;

.field mContentDescriptionSim:Ljava/lang/String;

.field mContentDescriptionWifi:Ljava/lang/String;

.field mContentDescriptionWimax:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field mDataActivity:I

.field mDataActivityIconId:I

.field mDataActivityIn:Z

.field mDataActivityOut:Z

.field mDataAndWifiStacked:Z

.field mDataConnected:Z

.field mDataNetType:I

.field protected mDataServiceState:I

.field mDataSignalIconId:I

.field mDataState:I

.field mDataTypeAttachedIconId:I

.field mDataTypeDisabledIconId:I

.field mDataTypeIconId:I

.field mDataTypeIconIdShown:I

.field mDataTypeSuspendedIconId:I

.field private mDemoDataTypeIconId:I

.field private mDemoInetCondition:I

.field private mDemoMobileLevel:I

.field private mDemoMode:Z

.field private mDemoWifiLevel:I

.field private mDifferingIconForSimError:Z

.field mEmergencyLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private final mEri:Lcom/motorola/android/systemui/statusbar/VzwEri;

.field private mGprsAttachIconDisplayable:Z

.field protected mHasMobileDataFeature:Z

.field mHspaDataDistinguishable:Z

.field private mHspapDataDistinguishable:Z

.field protected mIsWimaxEnabled:Z

.field protected mLastAirplaneMode:Z

.field mLastCombinedLabel:Ljava/lang/String;

.field mLastDataActivityIconId:I

.field mLastDataTypeIconId:I

.field private mLastLocale:Ljava/util/Locale;

.field mLastMobileDataEnabled:Z

.field mLastMobileLabel:Ljava/lang/String;

.field mLastPhoneSignalIconId:I

.field mLastRoamingIconId:I

.field mLastSignalLevel:I

.field mLastSimIconId:I

.field mLastWifiActivityIconId:I

.field mLastWifiIconId:I

.field mLastWimaxIconId:I

.field private mLocale:Ljava/util/Locale;

.field private final mLock:Ljava/lang/Object;

.field private mLoggerMobileActivityIconId:I

.field private mLoggerMobileDataIntervalTimestamp:J

.field private mLoggerMobileDataTypeIconId:I

.field private mLoggerMobileIconId:I

.field private mLoggerMobileRoamingIconId:I

.field private mLoggerMobileSignalIntervalTimestamp:J

.field private mLoggerMobileSimIconId:I

.field private mLoggerSignalLevel:I

.field private mLoggerSignalLevelIntervalTimestamp:J

.field private mLoggerWifiActivityIconId:I

.field private mLoggerWifiIconId:I

.field private mLoggerWifiIntervalTimestamp:J

.field private mLoggerWimaxActivityIconId:I

.field private mLoggerWimaxDataIntervalTimestamp:J

.field private mLoggerWimaxDataTypeIconId:I

.field private mLoggerWimaxIconId:I

.field private mLoggerWimaxRoamingIconId:I

.field private mLoggerWimaxSignalIntervalTimestamp:J

.field private mLoggerWimaxSimIconId:I

.field mMaxSignalLevel:I

.field mMobileInetCondition:I

.field mMobileInetConditionActual:I

.field mMobileInetConditionSB:I

.field mMobileLabelShortFormViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mMobileLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mNetworkName:Ljava/lang/String;

.field mNetworkNameDefault:Ljava/lang/String;

.field mNetworkNameSeparator:Ljava/lang/String;

.field mNetworkNameShortForm:Ljava/lang/String;

.field mNetworkNameShortFormAbbreviationsTable:[Ljava/lang/String;

.field private mOperatorName_string:Ljava/lang/String;

.field private mPhone:Landroid/telephony/TelephonyManager;

.field mPhoneCallState:I

.field mPhoneSignalIconId:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mQSDataActivityIconId:I

.field mQSDataTypeIconId:I

.field mQSPhoneSignalIconId:I

.field mQSRoamingIconId:I

.field mQSSimIconId:I

.field protected mQSWifiActivityIconId:I

.field protected mQSWifiIconId:I

.field mRoamingIconId:I

.field private mRoamingIndicationDisabled:Z

.field private mRoamingNoDataIndicationDisabled:Z

.field mServiceState:Landroid/telephony/ServiceState;

.field mShow4GforLTE:Z

.field mShowAtLeastThreeGees:Z

.field private mShowDataDisabledIcon:Z

.field mShowPhoneRSSIForData:Z

.field mSignalClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;",
            ">;"
        }
    .end annotation
.end field

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSignalStrengthSmoothingDecreaseInterval:I

.field private mSignalStrengthSmoothingDelayFirstDecrease:I

.field private mSignalStrengthSmoothingDelayFirstIncrease:I

.field private mSignalStrengthSmoothingEnabledCDMA:Z

.field private mSignalStrengthSmoothingEnabledGSM:Z

.field private mSignalStrengthSmoothingEnabledLTE:Z

.field private mSignalStrengthSmoothingIncreaseInterval:I

.field private mSignalStrengthSmoothingIsFirstStepInThisDirection:Z

.field private mSignalStrengthSmoothingLastChangeWasDecrease:Z

.field private mSignalStrengthSmoothingLastChangeWasIncrease:Z

.field private mSignalStrengthSmoothingLastDecreaseChangeTime:J

.field private mSignalStrengthSmoothingLastIncreaseChangeTime:J

.field private mSignalStrengthSmoothingReportedIconLevel:I

.field mSignalsChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field mSimIconId:I

.field mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSoundAlertForVerizonWireless:Z

.field private final mStatusBarHandler:Landroid/os/Handler;

.field protected mWifiActivity:I

.field protected mWifiActivityIconId:I

.field protected mWifiActivityIn:Z

.field protected mWifiActivityOut:Z

.field protected mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field protected mWifiConnected:Z

.field protected mWifiEnabled:Z

.field protected mWifiIconId:I

.field protected mWifiInetCondition:I

.field protected mWifiInetConditionActual:I

.field protected mWifiInetConditionSB:I

.field mWifiLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field protected mWifiLevel:I

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field protected mWifiRssi:I

.field protected mWifiSsid:Ljava/lang/String;

.field protected mWimaxConnected:Z

.field protected mWimaxExtraState:I

.field protected mWimaxIconId:I

.field protected mWimaxIdle:Z

.field private mWimaxInetCondition:I

.field private mWimaxInetConditionActual:I

.field private mWimaxInetConditionSB:I

.field protected mWimaxSignal:I

.field protected mWimaxState:I

.field protected mWimaxSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 89
    sput-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY_FORCE:Z

    .line 90
    sput-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG_FORCE:Z

    .line 91
    sput-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO_FORCE:Z

    .line 94
    const-string v0, "SBar.NetworkController"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY_FORCE:Z

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    .line 96
    const-string v0, "SBar.NetworkController"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG_FORCE:Z

    if-eqz v0, :cond_5

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    .line 98
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO_FORCE:Z

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    sput-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    return-void

    :cond_4
    move v0, v1

    .line 94
    goto :goto_0

    :cond_5
    move v0, v1

    .line 96
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 625
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 104
    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileSignalIntervalTimestamp:J

    .line 105
    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileDataIntervalTimestamp:J

    .line 106
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileIconId:I

    .line 107
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileRoamingIconId:I

    .line 108
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileSimIconId:I

    .line 109
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileDataTypeIconId:I

    .line 110
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileActivityIconId:I

    .line 112
    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxSignalIntervalTimestamp:J

    .line 113
    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxDataIntervalTimestamp:J

    .line 114
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxIconId:I

    .line 115
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxRoamingIconId:I

    .line 116
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxSimIconId:I

    .line 117
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxDataTypeIconId:I

    .line 118
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxActivityIconId:I

    .line 120
    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWifiIntervalTimestamp:J

    .line 121
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWifiIconId:I

    .line 122
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWifiActivityIconId:I

    .line 124
    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerSignalLevelIntervalTimestamp:J

    .line 125
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerSignalLevel:I

    .line 268
    const-string v0, "ro.mot.noroamingicon"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIndicationDisabled:Z

    .line 274
    const-string v0, "ro.mot.roamingiconnodata"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_8

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingNoDataIndicationDisabled:Z

    .line 283
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 284
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneCallState:I

    .line 285
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    .line 286
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    .line 287
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    .line 291
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 292
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastMobileDataEnabled:Z

    .line 293
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigShowBothWifiAndMobileNetwork:Z

    .line 294
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigAlwaysShowAttachedNetworkType:Z

    .line 298
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigShowSignalBarsWhenDataOnlyService:Z

    .line 299
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigShowNetworkTypeWhenVoiceOnlyService:Z

    .line 300
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigShowEmergencyCallsOnlyIcon:Z

    .line 317
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCacheShowSpn:Z

    .line 318
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCacheSpn:Ljava/lang/String;

    .line 319
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCacheShowPlmn:Z

    .line 320
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCachePlmn:Ljava/lang/String;

    .line 327
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSimIconId:I

    .line 347
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 348
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    .line 368
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPhoneRSSIForData:Z

    .line 369
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    .line 370
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    .line 382
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    .line 391
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingEnabledCDMA:Z

    .line 392
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingEnabledLTE:Z

    .line 393
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingEnabledGSM:Z

    .line 394
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingDelayFirstIncrease:I

    .line 395
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingIncreaseInterval:I

    .line 396
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingDelayFirstDecrease:I

    .line 397
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingDecreaseInterval:I

    .line 399
    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingLastIncreaseChangeTime:J

    .line 400
    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingLastDecreaseChangeTime:J

    .line 401
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingLastChangeWasIncrease:Z

    .line 402
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingLastChangeWasDecrease:Z

    .line 403
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingIsFirstStepInThisDirection:Z

    .line 404
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingReportedIconLevel:I

    .line 405
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$StatusBarHandler;

    invoke-direct {v0, p0, v6}, Lcom/android/systemui/statusbar/policy/NetworkController$StatusBarHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/NetworkController$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mStatusBarHandler:Landroid/os/Handler;

    .line 413
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLock:Ljava/lang/Object;

    .line 436
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 437
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    .line 439
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    .line 440
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 441
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiActivityIconId:I

    .line 442
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIn:Z

    .line 443
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityOut:Z

    .line 446
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    .line 447
    const v0, 0x10805cd

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherIconId:I

    .line 451
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    .line 452
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    .line 453
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    .line 454
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    .line 455
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    .line 456
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    .line 457
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    .line 458
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    .line 459
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    .line 463
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    .line 464
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    .line 475
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionActual:I

    .line 476
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetConditionActual:I

    .line 477
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetConditionActual:I

    .line 480
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    .line 481
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetCondition:I

    .line 482
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetCondition:I

    .line 484
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    .line 485
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetConditionSB:I

    .line 486
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetConditionSB:I

    .line 493
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    .line 494
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    .line 496
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLocale:Ljava/util/Locale;

    .line 497
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastLocale:Ljava/util/Locale;

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    .line 511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    .line 512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelShortFormViews:Ljava/util/ArrayList;

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    .line 514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmergencyLabelViews:Ljava/util/ArrayList;

    .line 515
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    .line 517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    .line 521
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    .line 524
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastRoamingIconId:I

    .line 527
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiActivityIconId:I

    .line 528
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    .line 529
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    .line 531
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    .line 532
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataActivityIconId:I

    .line 533
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    .line 536
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastMobileLabel:Ljava/lang/String;

    .line 544
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataAndWifiStacked:Z

    .line 1817
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 626
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    .line 628
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 631
    const v0, 0x7f0a0013

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableCarrierCustomIcons:Z

    .line 634
    const v0, 0x11100b6

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSoundAlertForVerizonWireless:Z

    .line 638
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableCarrierCustomIcons:Z

    if-eqz v0, :cond_a

    .line 639
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableCarrierCustomMappings:Z

    .line 640
    const v0, 0x7f0a0015

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    .line 643
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_9

    .line 644
    const v0, 0x7f0a0016

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigWideIconsAreBlue:Z

    .line 647
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableColoredNarrowStatusbarIcons:Z

    .line 648
    const v0, 0x7f0a0018

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigDisableColoredWideStatusbarIcons:Z

    .line 651
    const v0, 0x7f0a0019

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigDisableWideActivityStatusbarIcons:Z

    .line 664
    :goto_2
    const v0, 0x7f0a001a

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigAllowDifferentiatedInetCondition:Z

    .line 679
    :goto_3
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 680
    const-string v0, "SBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NetworkController (Constr): EnableCustomIcons="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableCarrierCustomIcons:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " EnableCustomMappings="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableCarrierCustomMappings:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n EnableWideIcons="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " WideIconsAreBlue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigWideIconsAreBlue:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " EnableColoredNarrowIcons="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableColoredNarrowStatusbarIcons:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " DisableColoredWideIcons="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigDisableColoredWideStatusbarIcons:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " DisableWideActivity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigDisableWideActivityStatusbarIcons:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " DifferentiatedInetCondition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigAllowDifferentiatedInetCondition:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 705
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    .line 707
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastMobileDataEnabled:Z

    .line 711
    const v0, 0x7f0a0004

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPhoneRSSIForData:Z

    .line 712
    const v0, 0x7f0a0005

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    .line 713
    const v0, 0x1110044

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    .line 717
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiIcons()V

    .line 718
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxIcons()V

    .line 721
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    .line 722
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->registerPhoneStateListener(Landroid/content/Context;)V

    .line 732
    const v0, 0x7f0a0002

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    .line 734
    const v0, 0x7f0a000c

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShow4GforLTE:Z

    .line 739
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableCarrierCustomMappings:Z

    if-ne v0, v1, :cond_b

    .line 744
    :cond_1
    const v0, 0x7f0a000e

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspapDataDistinguishable:Z

    .line 755
    :goto_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_c

    .line 757
    const v0, 0x111005d

    :try_start_0
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mGprsAttachIconDisplayable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    :goto_5
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 766
    const-string v0, "SBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mGprsAttachIconDisplayable is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mGprsAttachIconDisplayable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableCarrierCustomMappings:Z

    if-ne v0, v1, :cond_d

    .line 777
    :cond_3
    const v0, 0x104062b

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    .line 782
    :goto_6
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 783
    const-string v0, "SBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mOperatorName_string is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_e

    .line 790
    const v0, 0x111006d

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigShowBothWifiAndMobileNetwork:Z

    .line 798
    :goto_7
    const v0, 0x111006e

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigAlwaysShowAttachedNetworkType:Z

    .line 804
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_f

    .line 805
    const v0, 0x7f0a0010

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigShowSignalBarsWhenDataOnlyService:Z

    .line 808
    const v0, 0x7f0a0011

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigShowNetworkTypeWhenVoiceOnlyService:Z

    .line 811
    const v0, 0x7f0a0012

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigShowEmergencyCallsOnlyIcon:Z

    .line 824
    :goto_8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_10

    .line 825
    const v0, 0x1110064

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingEnabledCDMA:Z

    .line 827
    const v0, 0x1110065

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingEnabledLTE:Z

    .line 829
    const v0, 0x1110066

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingEnabledGSM:Z

    .line 831
    const v0, 0x10e0053

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingDelayFirstDecrease:I

    .line 833
    const v0, 0x10e0054

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingDecreaseInterval:I

    .line 835
    const v0, 0x10e0055

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingDelayFirstIncrease:I

    .line 837
    const v0, 0x10e0056

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingIncreaseInterval:I

    .line 851
    :goto_9
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-nez v0, :cond_5

    .line 852
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIndicationDisabled:Z

    .line 853
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingNoDataIndicationDisabled:Z

    .line 856
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0019

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    .line 858
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x104030c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    .line 860
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_11

    .line 861
    const v0, 0x1110067

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigNetworkNameShortFormSupported:Z

    .line 863
    const v0, 0x111006a

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigNetworkNameSpnHasPriority:Z

    .line 870
    :goto_a
    const v0, 0x7f070008

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameShortFormAbbreviationsTable:[Ljava/lang/String;

    .line 875
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 876
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameShortForm:Ljava/lang/String;

    .line 877
    const v0, 0x111006b

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigShowNoServiceText:Z

    .line 880
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCacheShowSpn:Z

    .line 881
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCacheSpn:Ljava/lang/String;

    .line 882
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCacheShowPlmn:Z

    .line 883
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCachePlmn:Ljava/lang/String;

    .line 884
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCacheShowSpn:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCacheSpn:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCacheShowPlmn:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCachePlmn:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 895
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_12

    .line 896
    const v0, 0x1110063

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDifferingIconForSimError:Z

    .line 906
    :goto_b
    new-instance v0, Lcom/motorola/android/systemui/statusbar/VzwEri;

    invoke-direct {v0, p1}, Lcom/motorola/android/systemui/statusbar/VzwEri;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEri:Lcom/motorola/android/systemui/statusbar/VzwEri;

    .line 910
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->createWifiHandler()V

    .line 921
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 922
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 923
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 924
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 928
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 931
    const-string v1, "com.motorola.android.intent.action.GET_REAL_DATA_NET_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 934
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 935
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 936
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 937
    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 938
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 939
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 940
    const v1, 0x1110049

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    .line 942
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    if-eqz v1, :cond_6

    .line 943
    const-string v1, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 944
    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 945
    const-string v1, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 947
    :cond_6
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 950
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateAirplaneMode()V

    .line 952
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastLocale:Ljava/util/Locale;

    .line 953
    return-void

    :cond_7
    move v0, v2

    .line 268
    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 274
    goto/16 :goto_1

    .line 655
    :cond_9
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigWideIconsAreBlue:Z

    .line 656
    const v0, 0x7f0a0017

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableColoredNarrowStatusbarIcons:Z

    .line 659
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigDisableColoredWideStatusbarIcons:Z

    .line 660
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigDisableWideActivityStatusbarIcons:Z

    goto/16 :goto_2

    .line 670
    :cond_a
    const v0, 0x7f0a0014

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableCarrierCustomMappings:Z

    .line 672
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    .line 673
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigWideIconsAreBlue:Z

    .line 674
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableColoredNarrowStatusbarIcons:Z

    .line 675
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigDisableColoredWideStatusbarIcons:Z

    .line 676
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigDisableWideActivityStatusbarIcons:Z

    .line 677
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigAllowDifferentiatedInetCondition:Z

    goto/16 :goto_3

    .line 747
    :cond_b
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspapDataDistinguishable:Z

    goto/16 :goto_4

    .line 759
    :catch_0
    move-exception v0

    .line 760
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mGprsAttachIconDisplayable:Z

    goto/16 :goto_5

    .line 763
    :cond_c
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mGprsAttachIconDisplayable:Z

    goto/16 :goto_5

    .line 780
    :cond_d
    const-string v0, "@0"

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    goto/16 :goto_6

    .line 794
    :cond_e
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigShowBothWifiAndMobileNetwork:Z

    goto/16 :goto_7

    .line 815
    :cond_f
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigShowSignalBarsWhenDataOnlyService:Z

    .line 816
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigShowNetworkTypeWhenVoiceOnlyService:Z

    .line 817
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigShowEmergencyCallsOnlyIcon:Z

    goto/16 :goto_8

    .line 840
    :cond_10
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingEnabledCDMA:Z

    .line 841
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingEnabledLTE:Z

    .line 842
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingEnabledGSM:Z

    .line 843
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingDelayFirstDecrease:I

    .line 844
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingDecreaseInterval:I

    .line 845
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingDelayFirstIncrease:I

    .line 846
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingIncreaseInterval:I

    goto/16 :goto_9

    .line 867
    :cond_11
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigNetworkNameShortFormSupported:Z

    .line 868
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigNetworkNameSpnHasPriority:Z

    goto/16 :goto_a

    .line 899
    :cond_12
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDifferingIconForSimError:Z

    goto/16 :goto_b
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 83
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerSignalLevel:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/NetworkController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCacheSpn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/NetworkController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerSignalLevel:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/NetworkController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCacheShowPlmn:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/NetworkController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCachePlmn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/NetworkController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetworkController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerSignalLevelIntervalTimestamp:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/NetworkController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;
    .param p1, "x1"    # J

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerSignalLevelIntervalTimestamp:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataIcon()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/NetworkController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSoundAlertForVerizonWireless:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mStatusBarHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)Lcom/motorola/android/systemui/statusbar/VzwEri;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEri:Lcom/motorola/android/systemui/statusbar/VzwEri;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/NetworkController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCacheShowSpn:Z

    return v0
.end method

.method private doesDisplayDataIcon()Z
    .locals 2

    .prologue
    .line 9293
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isConnectingOrAttachedMobileDataTypeIconShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9298
    :cond_0
    const/4 v0, 0x1

    .line 9300
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLevel(Landroid/telephony/SignalStrength;)I
    .locals 3

    .prologue
    .line 9317
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isForced1xMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9318
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_0

    .line 9319
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLevel: using CDMA level: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9321
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 9326
    :goto_0
    return v0

    .line 9323
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_2

    .line 9324
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLevel: using active-radio level: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9326
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    goto :goto_0
.end method

.method private hasDataService()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2275
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 2276
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2283
    const/4 v0, 0x1

    .line 2286
    :cond_0
    :pswitch_0
    return v0

    .line 2276
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private hasService()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2249
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_0

    .line 2254
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2266
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 2259
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :pswitch_2
    move v1, v0

    .line 2261
    goto :goto_0

    .line 2254
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 7327
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 7328
    .local v3, "ssid":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 7338
    .end local v3    # "ssid":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 7332
    .restart local v3    # "ssid":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 7333
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 7334
    .local v1, "net":Landroid/net/wifi/WifiConfiguration;
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 7335
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 7338
    .end local v1    # "net":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5711
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 5713
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eq v1, v0, :cond_0

    .line 5714
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    .line 5715
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAirplaneModeOn: AirplaneMode changed: returns mAirplaneMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5724
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    return v0

    :cond_1
    move v0, v1

    .line 5711
    goto :goto_0
.end method

.method private isCdma()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2197
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 2198
    .local v0, "isCdma":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v4, :cond_3

    .line 2199
    if-eqz v0, :cond_2

    .line 2234
    :cond_0
    :goto_1
    return v2

    .end local v0    # "isCdma":Z
    :cond_1
    move v0, v3

    .line 2197
    goto :goto_0

    .restart local v0    # "isCdma":Z
    :cond_2
    move v2, v3

    .line 2202
    goto :goto_1

    .line 2207
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    .line 2208
    .local v1, "tech":I
    const/4 v4, 0x4

    if-lt v1, v4, :cond_4

    const/16 v4, 0x8

    if-le v1, v4, :cond_0

    :cond_4
    const/16 v4, 0xc

    if-eq v1, v4, :cond_0

    const/16 v4, 0xd

    if-eq v1, v4, :cond_0

    if-eqz v1, :cond_5

    const/16 v4, 0xe

    if-ne v1, v4, :cond_6

    :cond_5
    if-nez v0, :cond_0

    :cond_6
    move v2, v3

    .line 2234
    goto :goto_1
.end method

.method private isConfigMobileDataTypeShowDataDisabledIcon()Z
    .locals 4

    .prologue
    .line 3142
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowDataDisabledIcon:Z

    .line 3144
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowDataDisabledIcon:Z

    .line 3146
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 3147
    const-string v1, "SBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isConfigMobileDataTypeShowDataDisabledIcon: mShowDataDisabledIcon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowDataDisabledIcon:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returnValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3153
    :cond_0
    return v0
.end method

.method private isConnectingOrAttachedMobileDataTypeIconShown()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 9268
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mGprsAttachIconDisplayable:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigAlwaysShowAttachedNetworkType:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_1

    .line 9281
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 9287
    :cond_1
    return v0
.end method

.method private isDisabledMobileDataTypeIconShown()Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3175
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isConfigMobileDataTypeShowDataDisabledIcon()Z

    move-result v5

    .line 3177
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 3185
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isMobileDataEnabled()Z

    move-result v6

    .line 3187
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigShowBothWifiAndMobileNetwork:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v3, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigAlwaysShowAttachedNetworkType:Z

    if-eqz v3, :cond_4

    :cond_1
    move v4, v1

    .line 3203
    :goto_1
    if-eqz v5, :cond_5

    if-eqz v0, :cond_5

    if-nez v6, :cond_5

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v1

    .line 3215
    :goto_2
    sget-boolean v7, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 3216
    const-string v7, "SBar.NetworkController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isDisabledMobileDataTypeIconShown: displayDataDisabledIcon="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", hasVoiceService="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", (! isDataEnabled )="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v6, :cond_6

    move v0, v1

    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", isAllowedByWifi="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", ( ! isEmergencyOnly() )="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v4

    if-nez v4, :cond_7

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", returnValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3230
    :cond_2
    return v3

    :cond_3
    move v0, v2

    .line 3177
    goto :goto_0

    :cond_4
    move v4, v2

    .line 3187
    goto :goto_1

    :cond_5
    move v3, v2

    .line 3203
    goto :goto_2

    :cond_6
    move v0, v2

    .line 3216
    goto :goto_3

    :cond_7
    move v1, v2

    goto :goto_4
.end method

.method private isEvdo()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5286
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v2, :cond_1

    .line 5290
    :cond_0
    :goto_0
    return v1

    .line 5289
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    .line 5290
    .local v0, "radioTech":I
    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    const/16 v2, 0xc

    if-eq v0, v2, :cond_2

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isForced1xMode()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9336
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_0

    .line 9337
    const-string v3, "SBar.NetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isForced1xMode: ( mPhoneCallState != TelephonyManager.CALL_STATE_IDLE )="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneCallState:I

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9339
    const-string v0, "SBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isForced1xMode: mDataNetType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9340
    const-string v0, "SBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isForced1xMode: isEvdo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEvdo()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9341
    const-string v0, "SBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isForced1xMode: TelephonyProperties.PROPERTY_SVDO="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ro.ril.svdo"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9343
    const-string v0, "SBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isForced1xMode: isLte="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isLte()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9344
    const-string v0, "SBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isForced1xMode: TelephonyProperties.PROPERTY_SVDATA="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ro.ril.svlte1x"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9360
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isLte()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9361
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 9362
    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneCallState:I

    if-eqz v3, :cond_7

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v3, 0x7

    if-eq v0, v3, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEvdo()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ro.ril.svdo"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isLte()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "ro.ril.svlte1x"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7

    .line 9388
    :cond_3
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 9389
    const-string v0, "SBar.NetworkController"

    const-string v2, "isForced1xMode: returns true (use 1X mode)"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9399
    :cond_4
    :goto_2
    return v1

    :cond_5
    move v0, v2

    .line 9337
    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 9361
    goto :goto_1

    .line 9396
    :cond_7
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 9397
    const-string v0, "SBar.NetworkController"

    const-string v1, "isForced1xMode: returns false (use active radioTech\'s normal mode)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v1, v2

    .line 9399
    goto :goto_2
.end method

.method private isLte()Z
    .locals 2

    .prologue
    const/16 v1, 0xe

    .line 2170
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMobileDataEnabled()Z
    .locals 4

    .prologue
    .line 3157
    .line 3158
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    .line 3159
    const/4 v0, 0x0

    .line 3164
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 3165
    const-string v1, "SBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMobileDataEnabled: returnValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3170
    :cond_0
    return v0

    .line 3161
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private refreshLocale()V
    .locals 1

    .prologue
    .line 2313
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLocale:Ljava/util/Locale;

    .line 2314
    return-void
.end method

.method private resolveInetCondition(III)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 8916
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v1, :cond_0

    .line 8917
    const-string v1, "SBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolveInetCondition:  inMobileInetCondition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " inWifiInetCondition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " inWimaxInetCondition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8930
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v1

    if-eqz v1, :cond_4

    move p1, v0

    .line 8963
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    .line 8964
    iput p2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetCondition:I

    .line 8965
    iput p3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetCondition:I

    .line 8967
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    .line 8968
    iput p2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetConditionSB:I

    .line 8969
    iput p3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetConditionSB:I

    .line 8971
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v1, :cond_a

    .line 8973
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigDisableColoredWideStatusbarIcons:Z

    if-eqz v1, :cond_9

    .line 8975
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigWideIconsAreBlue:Z

    if-eqz v1, :cond_8

    .line 8976
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    .line 8977
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetConditionSB:I

    .line 8978
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetConditionSB:I

    .line 9020
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigAllowDifferentiatedInetCondition:Z

    if-nez v0, :cond_2

    .line 9025
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetCondition:I

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetCondition:I

    or-int/2addr v0, v1

    .line 9032
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    .line 9033
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetCondition:I

    .line 9034
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetCondition:I

    .line 9036
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetConditionSB:I

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetConditionSB:I

    or-int/2addr v0, v1

    .line 9043
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    .line 9044
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetConditionSB:I

    .line 9045
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetConditionSB:I

    .line 9049
    :cond_2
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 9050
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveInetCondition:  mMobileInetConditionSB= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWifiInetConditionSB= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetConditionSB:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWimaxInetConditionSB= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetConditionSB:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9059
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveInetCondition:  mMobileInetCondition= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWifiInetCondition= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetCondition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWimaxInetCondition= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetCondition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9070
    :cond_3
    return-void

    .line 8934
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isForced1xMode()Z

    move-result v1

    if-eqz v1, :cond_5

    move p1, v0

    .line 8936
    goto/16 :goto_0

    .line 8938
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8940
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v1, :cond_6

    .line 8941
    const-string v1, "SBar.NetworkController"

    const-string v2, "resolveInetCondition: Data is enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8947
    :cond_6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v1, :cond_1

    .line 8948
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v1, :cond_7

    .line 8949
    const-string v1, "SBar.NetworkController"

    const-string v2, "resolveInetCondition: Data is enabled, wifi is active"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8954
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v1

    if-nez v1, :cond_1

    move p1, v0

    .line 8956
    goto/16 :goto_0

    .line 8980
    :cond_8
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    .line 8981
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetConditionSB:I

    .line 8982
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetConditionSB:I

    goto/16 :goto_1

    .line 8988
    :cond_9
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    .line 8989
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetCondition:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetConditionSB:I

    .line 8990
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetCondition:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetConditionSB:I

    goto/16 :goto_1

    .line 8996
    :cond_a
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableColoredNarrowStatusbarIcons:Z

    if-eqz v1, :cond_b

    .line 8999
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    .line 9000
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetCondition:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetConditionSB:I

    .line 9001
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetCondition:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetConditionSB:I

    goto/16 :goto_1

    .line 9006
    :cond_b
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigWideIconsAreBlue:Z

    if-eqz v1, :cond_c

    .line 9007
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    .line 9008
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetConditionSB:I

    .line 9009
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetConditionSB:I

    goto/16 :goto_1

    .line 9011
    :cond_c
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    .line 9012
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetConditionSB:I

    .line 9013
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetConditionSB:I

    goto/16 :goto_1
.end method

.method private signalIconLog(Ljava/lang/String;II)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 7417
    .line 7420
    sparse-switch p2, :sswitch_data_0

    .line 7435
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 7436
    const-string v2, "SBar.NetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the netConditon of netType "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is updated as "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " by "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",icon color should be "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne p3, v1, :cond_2

    const-string v0, "blue."

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7440
    :cond_1
    return-void

    .line 7422
    :sswitch_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionActual:I

    if-eq p3, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 7425
    :sswitch_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetConditionActual:I

    if-eq p3, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 7428
    :sswitch_2
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetConditionActual:I

    if-eq p3, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 7436
    :cond_2
    const-string v0, "white."

    goto :goto_1

    .line 7420
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method private updateDataActivityIcon()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const v2, 0x7f020214

    const v1, 0x7f0201f3

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 6303
    .line 6310
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v4, "SBar.NetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataActivityIcon: mDataServiceState="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    if-nez v0, :cond_9

    const-string v0, "STATE_IN_SERVICE"

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " hasDataService="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasDataService()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " hasService="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6326
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v4, "SBar.NetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataActivityIcon: mDataState="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    const/4 v6, -0x1

    if-ne v0, v6, :cond_d

    const-string v0, "DATA_UNKNOWN"

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6341
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v4, "SBar.NetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataActivityIcon: mDataActivity="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    if-nez v0, :cond_12

    const-string v0, "DATA_ACTIVITY_NONE"

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6351
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isLte()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 6353
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasDataService()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigShowNetworkTypeWhenVoiceOnlyService:Z

    if-eqz v0, :cond_40

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 6360
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    packed-switch v0, :pswitch_data_0

    .line 6365
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 6366
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    .line 6367
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    move v0, v3

    .line 6537
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isForced1xMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6539
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 6540
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    .line 6541
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    move v0, v3

    .line 6545
    :cond_4
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "SBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataActivityIcon: LTE: mDataState="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " iconId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mQSDataActivityIconId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6872
    :cond_5
    :goto_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isAirplaneModeOn()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v1

    if-nez v1, :cond_3e

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasDataService()Z

    move-result v1

    if-nez v1, :cond_3e

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_3e

    .line 6894
    :cond_6
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    .line 6895
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 6896
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    .line 6897
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    .line 6902
    :goto_5
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    if-nez v0, :cond_7

    .line 6903
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 6904
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    .line 6907
    :cond_7
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataActivityIcon: mDataActivityIconId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mQSDataActivityIconId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6916
    :cond_8
    return-void

    .line 6310
    :cond_9
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    if-ne v0, v7, :cond_a

    const-string v0, "STATE_OUT_OF_SERVICE"

    goto/16 :goto_0

    :cond_a
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    if-ne v0, v8, :cond_b

    const-string v0, "STATE_EMERGENCY_ONLY"

    goto/16 :goto_0

    :cond_b
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    const/4 v6, 0x3

    if-ne v0, v6, :cond_c

    const-string v0, "STATE_POWER_OFF"

    goto/16 :goto_0

    :cond_c
    const-string v0, "unknown"

    goto/16 :goto_0

    .line 6326
    :cond_d
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-nez v0, :cond_e

    const-string v0, "DATA_DISCONNECTED"

    goto/16 :goto_1

    :cond_e
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-ne v0, v7, :cond_f

    const-string v0, "DATA_CONNECTING"

    goto/16 :goto_1

    :cond_f
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-ne v0, v8, :cond_10

    const-string v0, "DATA_CONNECTED"

    goto/16 :goto_1

    :cond_10
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    const/4 v6, 0x3

    if-ne v0, v6, :cond_11

    const-string v0, "DATA_SUSPENDED"

    goto/16 :goto_1

    :cond_11
    const-string v0, "unknown"

    goto/16 :goto_1

    .line 6341
    :cond_12
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    if-ne v0, v7, :cond_13

    const-string v0, "DATA_ACTIVITY_IN"

    goto/16 :goto_2

    :cond_13
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    if-ne v0, v8, :cond_14

    const-string v0, "DATA_ACTIVITY_OUT"

    goto/16 :goto_2

    :cond_14
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    const/4 v6, 0x3

    if-ne v0, v6, :cond_15

    const-string v0, "DATA_ACTIVITY_INOUT"

    goto/16 :goto_2

    :cond_15
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    const/4 v6, 0x4

    if-ne v0, v6, :cond_16

    const-string v0, "DATA_ACTIVITY_DORMANT"

    goto/16 :goto_2

    :cond_16
    const-string v0, "unknown"

    goto/16 :goto_2

    .line 6372
    :pswitch_0
    const-string v0, "att"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 6373
    const v0, 0x7f0201ce

    .line 6379
    :goto_6
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 6380
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    .line 6381
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    goto/16 :goto_3

    .line 6376
    :cond_17
    const v0, 0x7f0201ca

    goto :goto_6

    .line 6385
    :pswitch_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    packed-switch v0, :pswitch_data_1

    .line 6389
    const-string v0, "att"

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 6390
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_18

    move v0, v1

    .line 6399
    :goto_7
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v4, :cond_19

    :goto_8
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    .line 6411
    :goto_9
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 6412
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    goto/16 :goto_3

    :cond_18
    move v0, v2

    .line 6394
    goto :goto_7

    :cond_19
    move v1, v2

    .line 6399
    goto :goto_8

    .line 6406
    :cond_1a
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS_WIDE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v0, v0, v1

    aget v0, v0, v3

    .line 6408
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_DIRECTION_ICONS_WIDE:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    aget v1, v1, v3

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    goto :goto_9

    .line 6417
    :pswitch_2
    const-string v0, "att"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 6418
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_1b

    .line 6419
    const v0, 0x7f020227

    .line 6427
    :goto_a
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v1, :cond_1c

    const v1, 0x7f020227

    :goto_b
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    .line 6438
    :goto_c
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 6439
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    goto/16 :goto_3

    .line 6422
    :cond_1b
    const v0, 0x7f020218

    goto :goto_a

    .line 6427
    :cond_1c
    const v1, 0x7f020218

    goto :goto_b

    .line 6433
    :cond_1d
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS_WIDE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v0, v0, v1

    aget v0, v0, v7

    .line 6435
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_DIRECTION_ICONS_WIDE:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    aget v1, v1, v7

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    goto :goto_c

    .line 6444
    :pswitch_3
    const-string v0, "att"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 6445
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_1e

    .line 6446
    const v0, 0x7f020230

    .line 6454
    :goto_d
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v1, :cond_1f

    const v1, 0x7f020230

    :goto_e
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    .line 6466
    :goto_f
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 6467
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    goto/16 :goto_3

    .line 6449
    :cond_1e
    const v0, 0x7f02021d

    goto :goto_d

    .line 6454
    :cond_1f
    const v1, 0x7f02021d

    goto :goto_e

    .line 6461
    :cond_20
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS_WIDE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v0, v0, v1

    aget v0, v0, v8

    .line 6463
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_DIRECTION_ICONS_WIDE:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    aget v1, v1, v8

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    goto :goto_f

    .line 6472
    :pswitch_4
    const-string v0, "att"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 6473
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_21

    .line 6474
    const v0, 0x7f020228

    .line 6481
    :goto_10
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v1, :cond_22

    const v1, 0x7f020228

    :goto_11
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    .line 6492
    :goto_12
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 6493
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    goto/16 :goto_3

    .line 6477
    :cond_21
    const v0, 0x7f020219

    goto :goto_10

    .line 6481
    :cond_22
    const v1, 0x7f020219

    goto :goto_11

    .line 6487
    :cond_23
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS_WIDE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v0, v0, v1

    const/4 v1, 0x3

    aget v0, v0, v1

    .line 6489
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_DIRECTION_ICONS_WIDE:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    const/4 v2, 0x3

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    goto :goto_12

    .line 6498
    :pswitch_5
    const-string v0, "att"

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 6499
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_24

    move v0, v1

    .line 6508
    :goto_13
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v4, :cond_25

    :goto_14
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    .line 6519
    :goto_15
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 6520
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    goto/16 :goto_3

    :cond_24
    move v0, v2

    .line 6503
    goto :goto_13

    :cond_25
    move v1, v2

    .line 6508
    goto :goto_14

    .line 6514
    :cond_26
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS_WIDE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v0, v0, v1

    const/4 v1, 0x4

    aget v0, v0, v1

    .line 6516
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_DIRECTION_ICONS_WIDE:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    const/4 v2, 0x4

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    goto :goto_15

    .line 6556
    :cond_27
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 6558
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v4, :cond_28

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v4, :cond_3f

    .line 6563
    :cond_28
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasDataService()Z

    move-result v0

    if-nez v0, :cond_29

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigShowNetworkTypeWhenVoiceOnlyService:Z

    if-eqz v0, :cond_3f

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_29
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->doesDisplayDataIcon()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 6575
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    packed-switch v0, :pswitch_data_2

    .line 6580
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 6581
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    .line 6582
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    move v0, v3

    .line 6759
    :goto_16
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "SBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataActivityIcon: GSM: mDataState="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " iconId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mQSDataActivityIconId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 6587
    :pswitch_6
    const-string v0, "att"

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 6588
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_2a

    move v0, v1

    .line 6597
    :goto_17
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v4, :cond_2b

    :goto_18
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    .line 6608
    :goto_19
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 6609
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    goto :goto_16

    :cond_2a
    move v0, v2

    .line 6592
    goto :goto_17

    :cond_2b
    move v1, v2

    .line 6597
    goto :goto_18

    .line 6603
    :cond_2c
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS_WIDE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v0, v0, v1

    aget v0, v0, v3

    .line 6605
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_DIRECTION_ICONS_WIDE:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    aget v1, v1, v3

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    goto :goto_19

    .line 6613
    :pswitch_7
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    packed-switch v0, :pswitch_data_3

    .line 6617
    const-string v0, "att"

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 6618
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_2d

    move v0, v1

    .line 6627
    :goto_1a
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v4, :cond_2e

    :goto_1b
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    .line 6638
    :goto_1c
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 6639
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    goto/16 :goto_16

    :cond_2d
    move v0, v2

    .line 6622
    goto :goto_1a

    :cond_2e
    move v1, v2

    .line 6627
    goto :goto_1b

    .line 6633
    :cond_2f
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS_WIDE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v0, v0, v1

    aget v0, v0, v3

    .line 6635
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_DIRECTION_ICONS_WIDE:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    aget v1, v1, v3

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    goto :goto_1c

    .line 6644
    :pswitch_8
    const-string v0, "att"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 6645
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_30

    .line 6646
    const v0, 0x7f020227

    .line 6654
    :goto_1d
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v1, :cond_31

    const v1, 0x7f020227

    :goto_1e
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    .line 6665
    :goto_1f
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 6666
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    goto/16 :goto_16

    .line 6649
    :cond_30
    const v0, 0x7f020218

    goto :goto_1d

    .line 6654
    :cond_31
    const v1, 0x7f020218

    goto :goto_1e

    .line 6660
    :cond_32
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS_WIDE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v0, v0, v1

    aget v0, v0, v7

    .line 6662
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_DIRECTION_ICONS_WIDE:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    aget v1, v1, v7

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    goto :goto_1f

    .line 6671
    :pswitch_9
    const-string v0, "att"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 6672
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_33

    .line 6673
    const v0, 0x7f020230

    .line 6681
    :goto_20
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v1, :cond_34

    const v1, 0x7f020230

    :goto_21
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    .line 6692
    :goto_22
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 6693
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    goto/16 :goto_16

    .line 6676
    :cond_33
    const v0, 0x7f02021d

    goto :goto_20

    .line 6681
    :cond_34
    const v1, 0x7f02021d

    goto :goto_21

    .line 6687
    :cond_35
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS_WIDE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v0, v0, v1

    aget v0, v0, v8

    .line 6689
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_DIRECTION_ICONS_WIDE:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    aget v1, v1, v8

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    goto :goto_22

    .line 6698
    :pswitch_a
    const-string v0, "att"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 6699
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_36

    .line 6700
    const v0, 0x7f020228

    .line 6708
    :goto_23
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v1, :cond_37

    const v1, 0x7f020228

    :goto_24
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    .line 6719
    :goto_25
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 6720
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    goto/16 :goto_16

    .line 6703
    :cond_36
    const v0, 0x7f020219

    goto :goto_23

    .line 6708
    :cond_37
    const v1, 0x7f020219

    goto :goto_24

    .line 6714
    :cond_38
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS_WIDE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v0, v0, v1

    const/4 v1, 0x3

    aget v0, v0, v1

    .line 6716
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_DIRECTION_ICONS_WIDE:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    const/4 v2, 0x3

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    goto :goto_25

    .line 6725
    :pswitch_b
    const-string v0, "att"

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 6726
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_39

    move v0, v1

    .line 6735
    :goto_26
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v4, :cond_3a

    :goto_27
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    .line 6746
    :goto_28
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 6747
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    goto/16 :goto_16

    :cond_39
    move v0, v2

    .line 6730
    goto :goto_26

    :cond_3a
    move v1, v2

    .line 6735
    goto :goto_27

    .line 6741
    :cond_3b
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS_WIDE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v0, v0, v1

    aget v0, v0, v3

    .line 6743
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_DIRECTION_ICONS_WIDE:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    aget v1, v1, v3

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    goto :goto_28

    .line 6773
    :cond_3c
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    packed-switch v0, :pswitch_data_4

    .line 6778
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 6779
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    .line 6780
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    move v0, v3

    .line 6853
    :goto_29
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isForced1xMode()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 6855
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 6856
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    .line 6857
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    move v0, v3

    .line 6860
    :cond_3d
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "SBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataActivityIcon: CDMA: mDataState="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " iconId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mQSDataActivityIconId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 6786
    :pswitch_c
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 6787
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    .line 6788
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    move v0, v3

    .line 6789
    goto :goto_29

    .line 6792
    :pswitch_d
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    packed-switch v0, :pswitch_data_5

    .line 6796
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS_WIDE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v0, v0, v1

    aget v0, v0, v3

    .line 6798
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 6799
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    .line 6800
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_DIRECTION_ICONS_WIDE:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    aget v1, v1, v3

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    goto/16 :goto_29

    .line 6806
    :pswitch_e
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS_WIDE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v0, v0, v1

    aget v0, v0, v7

    .line 6808
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 6809
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    .line 6810
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_DIRECTION_ICONS_WIDE:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    aget v1, v1, v7

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    goto/16 :goto_29

    .line 6816
    :pswitch_f
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS_WIDE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v0, v0, v1

    aget v0, v0, v8

    .line 6818
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 6819
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    .line 6820
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_DIRECTION_ICONS_WIDE:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    aget v1, v1, v8

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    goto/16 :goto_29

    .line 6826
    :pswitch_10
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS_WIDE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v0, v0, v1

    const/4 v1, 0x3

    aget v0, v0, v1

    .line 6828
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 6829
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    .line 6830
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_DIRECTION_ICONS_WIDE:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    const/4 v2, 0x3

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    goto/16 :goto_29

    .line 6836
    :pswitch_11
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS_WIDE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v0, v0, v1

    const/4 v1, 0x4

    aget v0, v0, v1

    .line 6838
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 6839
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    .line 6840
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_DIRECTION_ICONS_WIDE:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    const/4 v2, 0x4

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    goto/16 :goto_29

    .line 6899
    :cond_3e
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    goto/16 :goto_5

    :cond_3f
    move v0, v3

    goto/16 :goto_16

    :cond_40
    move v0, v3

    goto/16 :goto_3

    .line 6360
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 6385
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 6575
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 6613
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 6773
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_c
    .end packed-switch

    .line 6792
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private final updateDataIcon()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5877
    .line 5885
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v3, "SBar.NetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataIcon: mDataServiceState="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    if-nez v0, :cond_6

    const-string v0, "STATE_IN_SERVICE"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " hasDataService="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasDataService()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " hasService="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5901
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v3, "SBar.NetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataIcon: mDataState="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_a

    const-string v0, "DATA_UNKNOWN"

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5916
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v3, "SBar.NetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataIcon: mDataActivity="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    if-nez v0, :cond_f

    const-string v0, "DATA_ACTIVITY_NONE"

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5925
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    if-nez v0, :cond_14

    move v2, v1

    .line 6255
    :cond_3
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isAirplaneModeOn()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasDataService()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_22

    .line 6277
    :cond_4
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    .line 6290
    :goto_4
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataIcon: mDataConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6296
    :cond_5
    return-void

    .line 5885
    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    if-ne v0, v2, :cond_7

    const-string v0, "STATE_OUT_OF_SERVICE"

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    if-ne v0, v6, :cond_8

    const-string v0, "STATE_EMERGENCY_ONLY"

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    if-ne v0, v7, :cond_9

    const-string v0, "STATE_POWER_OFF"

    goto/16 :goto_0

    :cond_9
    const-string v0, "unknown"

    goto/16 :goto_0

    .line 5901
    :cond_a
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-nez v0, :cond_b

    const-string v0, "DATA_DISCONNECTED"

    goto/16 :goto_1

    :cond_b
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-ne v0, v2, :cond_c

    const-string v0, "DATA_CONNECTING"

    goto/16 :goto_1

    :cond_c
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-ne v0, v6, :cond_d

    const-string v0, "DATA_CONNECTED"

    goto/16 :goto_1

    :cond_d
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-ne v0, v7, :cond_e

    const-string v0, "DATA_SUSPENDED"

    goto/16 :goto_1

    :cond_e
    const-string v0, "unknown"

    goto/16 :goto_1

    .line 5916
    :cond_f
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    if-ne v0, v2, :cond_10

    const-string v0, "DATA_ACTIVITY_IN"

    goto/16 :goto_2

    :cond_10
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    if-ne v0, v6, :cond_11

    const-string v0, "DATA_ACTIVITY_OUT"

    goto/16 :goto_2

    :cond_11
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    if-ne v0, v7, :cond_12

    const-string v0, "DATA_ACTIVITY_INOUT"

    goto/16 :goto_2

    :cond_12
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    const/4 v5, 0x4

    if-ne v0, v5, :cond_13

    const-string v0, "DATA_ACTIVITY_DORMANT"

    goto/16 :goto_2

    :cond_13
    const-string v0, "unknown"

    goto/16 :goto_2

    .line 5931
    :cond_14
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isLte()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 5933
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasDataService()Z

    move-result v0

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigShowNetworkTypeWhenVoiceOnlyService:Z

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 5940
    :cond_15
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 6027
    :goto_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isForced1xMode()Z

    move-result v2

    if-eqz v2, :cond_16

    move v0, v1

    .line 6035
    :cond_16
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v2, :cond_23

    const-string v2, "SBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataIcon: LTE: mDataState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " visible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    goto/16 :goto_3

    .line 5960
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    :goto_6
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    move v0, v2

    .line 5968
    goto :goto_5

    :cond_17
    move v0, v1

    .line 5960
    goto :goto_6

    .line 5971
    :pswitch_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    packed-switch v0, :pswitch_data_1

    move v0, v2

    .line 5978
    goto :goto_5

    :pswitch_2
    move v0, v2

    .line 5985
    goto :goto_5

    :pswitch_3
    move v0, v2

    .line 5992
    goto :goto_5

    :pswitch_4
    move v0, v2

    .line 5999
    goto :goto_5

    :pswitch_5
    move v0, v2

    .line 6006
    goto :goto_5

    :cond_18
    move v0, v1

    .line 6018
    goto :goto_5

    .line 6041
    :cond_19
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 6043
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v3, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_1c

    .line 6049
    :cond_1a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasDataService()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigShowNetworkTypeWhenVoiceOnlyService:Z

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->doesDisplayDataIcon()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 6061
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    packed-switch v0, :pswitch_data_2

    move v2, v1

    .line 6145
    :cond_1c
    :goto_7
    :pswitch_6
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "SBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataIcon: GSM: mDataState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " visible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 6081
    :pswitch_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_1d

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    :goto_8
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    goto :goto_7

    :cond_1d
    move v0, v1

    goto :goto_8

    .line 6092
    :pswitch_8
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    packed-switch v0, :pswitch_data_3

    goto :goto_7

    :cond_1e
    move v2, v1

    .line 6138
    goto :goto_7

    .line 6153
    :cond_1f
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    packed-switch v0, :pswitch_data_4

    move v2, v1

    .line 6235
    :goto_9
    :pswitch_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isForced1xMode()Z

    move-result v0

    if-eqz v0, :cond_20

    move v2, v1

    .line 6242
    :cond_20
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "SBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataIcon: CDMA: mDataState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " visible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 6173
    :pswitch_a
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    :goto_a
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    move v2, v1

    .line 6181
    goto :goto_9

    :cond_21
    move v0, v1

    .line 6173
    goto :goto_a

    .line 6184
    :pswitch_b
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    packed-switch v0, :pswitch_data_5

    goto :goto_9

    .line 6283
    :cond_22
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    goto/16 :goto_4

    :cond_23
    move v2, v0

    goto/16 :goto_3

    .line 5940
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 5971
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 6061
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_7
    .end packed-switch

    .line 6092
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 6153
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_a
        :pswitch_b
        :pswitch_a
    .end packed-switch

    .line 6184
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method private final updateDataNetType()V
    .locals 8

    .prologue
    const v7, 0x7f02019f

    const v6, 0x7f0b006a

    const v5, 0x7f0b00cb

    const v4, 0x7f0b0068

    const/4 v3, 0x0

    .line 3278
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastMobileDataEnabled:Z

    .line 3281
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_6

    .line 3282
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SBar.NetworkController"

    const-string v1, "updateDataNetType: (mIsWimaxEnabled && mWimaxConnected) == true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3288
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_4

    .line 3292
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetConditionSB:I

    if-nez v0, :cond_3

    const v0, 0x7f0201df

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3296
    const v0, 0x7f0201a6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3297
    const v0, 0x7f0201b6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 3299
    const v0, 0x7f020240

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 3302
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 3319
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 5230
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-nez v0, :cond_1

    .line 5231
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 5232
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaEri()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5233
    const v0, 0x7f020093

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 5234
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_R:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 5241
    :cond_1
    :goto_3
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 5242
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataNetType: mDataTypeIconId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mQSDataTypeIconId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Accessibility=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5255
    :cond_2
    return-void

    .line 3292
    :cond_3
    const v0, 0x7f020202

    goto/16 :goto_0

    .line 3306
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetConditionSB:I

    if-nez v0, :cond_5

    const v0, 0x7f0201d9

    :goto_4
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3310
    const v0, 0x7f0201a5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3311
    const v0, 0x7f0201af

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 3313
    const v0, 0x7f020239

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 3316
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    goto/16 :goto_1

    .line 3306
    :cond_5
    const v0, 0x7f02008e

    goto :goto_4

    .line 3323
    :cond_6
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 3324
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataNetType: mDataNetType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3326
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataNetType: mOperatorName_string is \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3331
    :cond_7
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 5165
    :pswitch_0
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataNetType unknown radio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5167
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_b0

    .line 5170
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 5172
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 5173
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 5174
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 5176
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 5178
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b004b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 3333
    :pswitch_1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 3334
    const-string v0, "SBar.NetworkController"

    const-string v1, "updateDataNetType: mDataNetType=NETWORK_TYPE_UNKNOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3336
    :cond_8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_9

    .line 3341
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3343
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3344
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 3345
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 3347
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 3351
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b004b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 3360
    :cond_9
    :pswitch_2
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_a

    const-string v0, "SBar.NetworkController"

    const-string v1, "updateDataNetType: mDataNetType=NETWORK_TYPE_EDGE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3363
    :cond_a
    const-string v0, "sfr"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3364
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_c

    .line 3367
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_b

    const v0, 0x7f0201d4

    :goto_5
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3372
    const v0, 0x7f02019e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3374
    const v0, 0x7f0201aa

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 3376
    const v0, 0x7f020234

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 3379
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_2G_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 3382
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00ca

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 3367
    :cond_b
    const v0, 0x7f0201f8

    goto :goto_5

    .line 3387
    :cond_c
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_d

    const v0, 0x7f0201d3

    :goto_6
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3392
    const v0, 0x7f02019d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3394
    const v0, 0x7f0201a9

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 3396
    const v0, 0x7f020233

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 3399
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_2G:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 3402
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00ca

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 3387
    :cond_d
    const v0, 0x7f0201f7

    goto :goto_6

    .line 3409
    :cond_e
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_17

    .line 3410
    const-string v0, "att"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3411
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_11

    .line 3416
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_f

    const v0, 0x7f0201e1

    :goto_7
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3425
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3427
    const v0, 0x7f0201b9

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 3429
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 3431
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_10

    const v0, 0x7f0201e1

    :goto_8
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 3492
    :goto_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 3416
    :cond_f
    const v0, 0x7f020203

    goto :goto_7

    .line 3431
    :cond_10
    const v0, 0x7f020203

    goto :goto_8

    .line 3439
    :cond_11
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_12

    const v0, 0x7f0201e0

    :goto_a
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3444
    const v0, 0x7f0201f4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3446
    const v0, 0x7f0201b7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 3448
    const v0, 0x7f020241

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 3451
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_E:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    goto :goto_9

    .line 3439
    :cond_12
    const v0, 0x7f02008f

    goto :goto_a

    .line 3455
    :cond_13
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_15

    .line 3458
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_14

    const v0, 0x7f0201e2

    :goto_b
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3463
    const v0, 0x7f0201f5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3465
    const v0, 0x7f0201ba

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 3467
    const v0, 0x7f020244

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 3470
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_E_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    goto :goto_9

    .line 3458
    :cond_14
    const v0, 0x7f020204

    goto :goto_b

    .line 3475
    :cond_15
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_16

    const v0, 0x7f0201e0

    :goto_c
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3480
    const v0, 0x7f0201f4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3482
    const v0, 0x7f0201b7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 3484
    const v0, 0x7f020241

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 3487
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_E:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    goto/16 :goto_9

    .line 3475
    :cond_16
    const v0, 0x7f02008f

    goto :goto_c

    .line 3501
    :cond_17
    :pswitch_3
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_18

    .line 3502
    const-string v0, "SBar.NetworkController"

    const-string v1, "updateDataNetType: mDataNetType=NETWORK_TYPE_UMTS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3504
    :cond_18
    const-string v0, "att"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3505
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_1b

    .line 3508
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_19

    const v0, 0x7f0201de

    :goto_d
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3513
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3514
    const v0, 0x7f0201b5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 3517
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 3519
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_1a

    const v0, 0x7f0201de

    :goto_e
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 3524
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 3508
    :cond_19
    const v0, 0x7f020201

    goto :goto_d

    .line 3519
    :cond_1a
    const v0, 0x7f020201

    goto :goto_e

    .line 3530
    :cond_1b
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_1c

    const v0, 0x7f0201d9

    :goto_f
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3535
    const v0, 0x7f0201a5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3537
    const v0, 0x7f0201af

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 3539
    const v0, 0x7f020239

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 3542
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    goto/16 :goto_2

    .line 3530
    :cond_1c
    const v0, 0x7f02008e

    goto :goto_f

    .line 3546
    :cond_1d
    const-string v0, "bellca"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3547
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_1f

    .line 3550
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_1e

    const v0, 0x7f0201e9

    :goto_10
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3555
    const v0, 0x7f020223

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3557
    const v0, 0x7f0201c2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 3559
    const v0, 0x7f02024c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 3562
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H_PLUS_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 3565
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 3550
    :cond_1e
    const v0, 0x7f02020a

    goto :goto_10

    .line 3570
    :cond_1f
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_20

    const v0, 0x7f0201e8

    :goto_11
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3575
    const v0, 0x7f020222

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3577
    const v0, 0x7f0201c1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 3579
    const v0, 0x7f02024b

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 3582
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H_PLUS:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 3585
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 3570
    :cond_20
    const v0, 0x7f020209

    goto :goto_11

    .line 3589
    :cond_21
    const-string v0, "tmo"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3592
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3593
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_23

    .line 3596
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_22

    const v0, 0x7f0201d8

    :goto_12
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3601
    const v0, 0x7f0201a0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3603
    const v0, 0x7f0201ae

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 3605
    const v0, 0x7f020238

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 3608
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 3611
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 3596
    :cond_22
    const v0, 0x7f0201fc

    goto :goto_12

    .line 3616
    :cond_23
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_24

    const v0, 0x7f0201d5

    :goto_13
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3621
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3623
    const v0, 0x7f0201ab

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 3625
    const v0, 0x7f020235

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 3628
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 3631
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 3616
    :cond_24
    const v0, 0x7f0201f9

    goto :goto_13

    .line 3635
    :cond_25
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_27

    .line 3638
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_26

    const v0, 0x7f0201df

    :goto_14
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3643
    const v0, 0x7f0201a6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3645
    const v0, 0x7f0201b6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 3647
    const v0, 0x7f020240

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 3650
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 3653
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 3638
    :cond_26
    const v0, 0x7f020202

    goto :goto_14

    .line 3658
    :cond_27
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_28

    const v0, 0x7f0201d9

    :goto_15
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3663
    const v0, 0x7f0201a5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3665
    const v0, 0x7f0201af

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 3667
    const v0, 0x7f020239

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 3670
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 3673
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 3658
    :cond_28
    const v0, 0x7f0201fd

    goto :goto_15

    .line 3678
    :cond_29
    const-string v0, "rogers"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "fido"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 3687
    :cond_2a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3688
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_2c

    .line 3691
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_2b

    const v0, 0x7f0201d8

    :goto_16
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3696
    const v0, 0x7f0201a0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3698
    const v0, 0x7f0201ae

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 3700
    const v0, 0x7f020238

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 3703
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 3706
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 3691
    :cond_2b
    const v0, 0x7f0201fc

    goto :goto_16

    .line 3711
    :cond_2c
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_2d

    const v0, 0x7f0201d5

    :goto_17
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3716
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3718
    const v0, 0x7f0201ab

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 3720
    const v0, 0x7f020235

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 3723
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 3726
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 3711
    :cond_2d
    const v0, 0x7f0201f9

    goto :goto_17

    .line 3730
    :cond_2e
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_30

    .line 3733
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_2f

    const v0, 0x7f0201e9

    :goto_18
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3738
    const v0, 0x7f020223

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3740
    const v0, 0x7f0201c2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 3742
    const v0, 0x7f02024c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 3745
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H_PLUS_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 3748
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 3733
    :cond_2f
    const v0, 0x7f02020a

    goto :goto_18

    .line 3753
    :cond_30
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_31

    const v0, 0x7f0201e8

    :goto_19
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3758
    const v0, 0x7f020222

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3760
    const v0, 0x7f0201c1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 3762
    const v0, 0x7f02024b

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 3765
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H_PLUS:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 3768
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 3753
    :cond_31
    const v0, 0x7f020209

    goto :goto_19

    .line 3773
    :cond_32
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_34

    .line 3776
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_33

    const v0, 0x7f0201d8

    :goto_1a
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3781
    const v0, 0x7f0201a0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3783
    const v0, 0x7f0201ae

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 3785
    const v0, 0x7f020238

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 3788
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 3809
    :goto_1b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 3776
    :cond_33
    const v0, 0x7f0201fc

    goto :goto_1a

    .line 3793
    :cond_34
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_35

    const v0, 0x7f0201d5

    :goto_1c
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3798
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3800
    const v0, 0x7f0201ab

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 3802
    const v0, 0x7f020235

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 3805
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    goto :goto_1b

    .line 3793
    :cond_35
    const v0, 0x7f02008d

    goto :goto_1c

    .line 3815
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_37

    .line 3818
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_36

    const v0, 0x7f0201d8

    :goto_1d
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3823
    const v0, 0x7f0201a0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3825
    const v0, 0x7f0201ae

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 3827
    const v0, 0x7f020238

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 3830
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 3851
    :goto_1e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 3818
    :cond_36
    const v0, 0x7f0201fc

    goto :goto_1d

    .line 3835
    :cond_37
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_38

    const v0, 0x7f0201d5

    :goto_1f
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3840
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3842
    const v0, 0x7f0201ab

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 3844
    const v0, 0x7f020235

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 3847
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    goto :goto_1e

    .line 3835
    :cond_38
    const v0, 0x7f02008d

    goto :goto_1f

    .line 3859
    :pswitch_5
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_39

    const-string v0, "SBar.NetworkController"

    const-string v1, "updateDataNetType: mDataNetType=NETWORK_TYPE_HSDPA || NETWORK_TYPE_HSUPA || NETWORK_TYPE_HSPA || NETWORK_TYPE_HSPAP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3863
    :cond_39
    const-string v0, "att"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 3864
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_3c

    .line 3867
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_3a

    const v0, 0x7f0201de

    :goto_20
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3872
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3873
    const v0, 0x7f0201b5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 3876
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 3878
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_3b

    const v0, 0x7f0201de

    :goto_21
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 3883
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 3867
    :cond_3a
    const v0, 0x7f020201

    goto :goto_20

    .line 3878
    :cond_3b
    const v0, 0x7f020201

    goto :goto_21

    .line 3889
    :cond_3c
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_3d

    const v0, 0x7f0201d9

    :goto_22
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3894
    const v0, 0x7f0201a5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3896
    const v0, 0x7f0201af

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 3898
    const v0, 0x7f020239

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 3901
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 3904
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 3889
    :cond_3d
    const v0, 0x7f02008e

    goto :goto_22

    .line 3909
    :cond_3e
    const-string v0, "aio"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 3912
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 3913
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_40

    .line 3916
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_3f

    const v0, 0x7f0201e7

    :goto_23
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3921
    const v0, 0x7f020221

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3923
    const v0, 0x7f0201c0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 3925
    const v0, 0x7f02024a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 3928
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 3949
    :goto_24
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 3916
    :cond_3f
    const v0, 0x7f020208

    goto :goto_23

    .line 3933
    :cond_40
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_41

    const v0, 0x7f0201e6

    :goto_25
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3938
    const v0, 0x7f020220

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3940
    const v0, 0x7f0201bf

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 3942
    const v0, 0x7f020249

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 3945
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    goto :goto_24

    .line 3933
    :cond_41
    const v0, 0x7f020091

    goto :goto_25

    .line 3952
    :cond_42
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_44

    .line 3955
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_43

    const v0, 0x7f0201df

    :goto_26
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3960
    const v0, 0x7f0201a6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3962
    const v0, 0x7f0201b6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 3964
    const v0, 0x7f020240

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 3967
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 3970
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 3955
    :cond_43
    const v0, 0x7f020202

    goto :goto_26

    .line 3975
    :cond_44
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_45

    const v0, 0x7f0201d9

    :goto_27
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3980
    const v0, 0x7f0201a5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3982
    const v0, 0x7f0201af

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 3984
    const v0, 0x7f020239

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 3987
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 3990
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 3975
    :cond_45
    const v0, 0x7f0201fd

    goto :goto_27

    .line 3996
    :cond_46
    const-string v0, "bellca"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 3997
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_48

    .line 4000
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_47

    const v0, 0x7f0201e9

    :goto_28
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4005
    const v0, 0x7f020223

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4007
    const v0, 0x7f0201c2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4009
    const v0, 0x7f02024c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4012
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H_PLUS_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4015
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4000
    :cond_47
    const v0, 0x7f02020a

    goto :goto_28

    .line 4020
    :cond_48
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_49

    const v0, 0x7f0201e8

    :goto_29
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4025
    const v0, 0x7f020222

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4027
    const v0, 0x7f0201c1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4029
    const v0, 0x7f02024b

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4032
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H_PLUS:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4035
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4020
    :cond_49
    const v0, 0x7f020209

    goto :goto_29

    .line 4041
    :cond_4a
    const-string v0, "claroPR"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 4042
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_4e

    .line 4043
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_4c

    .line 4046
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_4b

    const v0, 0x7f0201e9

    :goto_2a
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4051
    const v0, 0x7f020223

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4053
    const v0, 0x7f0201c2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4055
    const v0, 0x7f02024c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4058
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H_PLUS_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4061
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4046
    :cond_4b
    const v0, 0x7f02020a

    goto :goto_2a

    .line 4066
    :cond_4c
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_4d

    const v0, 0x7f0201e8

    :goto_2b
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4071
    const v0, 0x7f020222

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4073
    const v0, 0x7f0201c1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4075
    const v0, 0x7f02024b

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4078
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H_PLUS:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4081
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4066
    :cond_4d
    const v0, 0x7f020209

    goto :goto_2b

    .line 4086
    :cond_4e
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_50

    .line 4089
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_4f

    const v0, 0x7f0201e7

    :goto_2c
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4094
    const v0, 0x7f020221

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4096
    const v0, 0x7f0201c0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4098
    const v0, 0x7f02024a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4101
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4105
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4089
    :cond_4f
    const v0, 0x7f020208

    goto :goto_2c

    .line 4110
    :cond_50
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_51

    const v0, 0x7f0201e6

    :goto_2d
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4115
    const v0, 0x7f020220

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4117
    const v0, 0x7f0201bf

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4119
    const v0, 0x7f020249

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4122
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4126
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4110
    :cond_51
    const v0, 0x7f020207

    goto :goto_2d

    .line 4134
    :cond_52
    const-string v0, "sfr"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 4135
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_54

    .line 4138
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_53

    const v0, 0x7f0201d7

    :goto_2e
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4143
    const v0, 0x7f0201a2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4145
    const v0, 0x7f0201ad

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4147
    const v0, 0x7f020237

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4150
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G_PLUS_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4153
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00c9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4138
    :cond_53
    const v0, 0x7f0201fb

    goto :goto_2e

    .line 4158
    :cond_54
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_55

    const v0, 0x7f0201d6

    :goto_2f
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4163
    const v0, 0x7f0201a1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4165
    const v0, 0x7f0201ac

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4167
    const v0, 0x7f020236

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4170
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G_PLUS:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4173
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00c9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4158
    :cond_55
    const v0, 0x7f0201fa

    goto :goto_2f

    .line 4180
    :cond_56
    const-string v0, "tmo"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 4183
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 4184
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_58

    .line 4187
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_57

    const v0, 0x7f0201d8

    :goto_30
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4192
    const v0, 0x7f0201a0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4194
    const v0, 0x7f0201ae

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4196
    const v0, 0x7f020238

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4199
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4202
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4187
    :cond_57
    const v0, 0x7f0201fc

    goto :goto_30

    .line 4207
    :cond_58
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_59

    const v0, 0x7f0201d5

    :goto_31
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4212
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4214
    const v0, 0x7f0201ab

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4216
    const v0, 0x7f020235

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4219
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4222
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4207
    :cond_59
    const v0, 0x7f0201f9

    goto :goto_31

    .line 4226
    :cond_5a
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_5c

    .line 4229
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_5b

    const v0, 0x7f0201df

    :goto_32
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4234
    const v0, 0x7f0201a6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4236
    const v0, 0x7f0201b6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4238
    const v0, 0x7f020240

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4241
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4244
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4229
    :cond_5b
    const v0, 0x7f020202

    goto :goto_32

    .line 4249
    :cond_5c
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_5d

    const v0, 0x7f0201d9

    :goto_33
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4254
    const v0, 0x7f0201a5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4256
    const v0, 0x7f0201af

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4258
    const v0, 0x7f020239

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4261
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4264
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4249
    :cond_5d
    const v0, 0x7f0201fd

    goto :goto_33

    .line 4269
    :cond_5e
    const-string v0, "rogers"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    const-string v0, "fido"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 4278
    :cond_5f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 4279
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_61

    .line 4282
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_60

    const v0, 0x7f0201d8

    :goto_34
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4287
    const v0, 0x7f0201a0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4289
    const v0, 0x7f0201ae

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4291
    const v0, 0x7f020238

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4294
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4297
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4282
    :cond_60
    const v0, 0x7f0201fc

    goto :goto_34

    .line 4302
    :cond_61
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_62

    const v0, 0x7f0201d5

    :goto_35
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4307
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4309
    const v0, 0x7f0201ab

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4311
    const v0, 0x7f020235

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4314
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4317
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4302
    :cond_62
    const v0, 0x7f0201f9

    goto :goto_35

    .line 4321
    :cond_63
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_65

    .line 4324
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_64

    const v0, 0x7f0201e9

    :goto_36
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4329
    const v0, 0x7f020223

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4331
    const v0, 0x7f0201c2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4333
    const v0, 0x7f02024c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4336
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H_PLUS_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4339
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4324
    :cond_64
    const v0, 0x7f02020a

    goto :goto_36

    .line 4344
    :cond_65
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_66

    const v0, 0x7f0201e8

    :goto_37
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4349
    const v0, 0x7f020222

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4351
    const v0, 0x7f0201c1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4353
    const v0, 0x7f02024b

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4356
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H_PLUS:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4359
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4344
    :cond_66
    const v0, 0x7f020209

    goto :goto_37

    .line 4366
    :cond_67
    const-string v0, "orange"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 4369
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_6b

    .line 4370
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_69

    .line 4373
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_68

    const v0, 0x7f0201e9

    :goto_38
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4378
    const v0, 0x7f020223

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4380
    const v0, 0x7f0201c2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4382
    const v0, 0x7f02024c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4385
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H_PLUS_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4388
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4373
    :cond_68
    const v0, 0x7f02020a

    goto :goto_38

    .line 4393
    :cond_69
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_6a

    const v0, 0x7f0201e8

    :goto_39
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4398
    const v0, 0x7f020222

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4400
    const v0, 0x7f0201c1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4402
    const v0, 0x7f02024b

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4405
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H_PLUS:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4408
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4393
    :cond_6a
    const v0, 0x7f020209

    goto :goto_39

    .line 4412
    :cond_6b
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_6d

    .line 4415
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_6c

    const v0, 0x7f0201d7

    :goto_3a
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4420
    const v0, 0x7f0201a2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4422
    const v0, 0x7f0201ad

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4424
    const v0, 0x7f020237

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4427
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G_PLUS_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4430
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00c9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4415
    :cond_6c
    const v0, 0x7f0201fb

    goto :goto_3a

    .line 4435
    :cond_6d
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_6e

    const v0, 0x7f0201d6

    :goto_3b
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4440
    const v0, 0x7f0201a1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4442
    const v0, 0x7f0201ac

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4444
    const v0, 0x7f020236

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4447
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G_PLUS:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4450
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00c9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4435
    :cond_6e
    const v0, 0x7f0201fa

    goto :goto_3b

    .line 4460
    :cond_6f
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspapDataDistinguishable:Z

    if-eqz v0, :cond_73

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_73

    .line 4465
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_71

    .line 4468
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_70

    const v0, 0x7f0201e9

    :goto_3c
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4473
    const v0, 0x7f020223

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4475
    const v0, 0x7f0201c2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4477
    const v0, 0x7f02024c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4480
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H_PLUS_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4483
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4468
    :cond_70
    const v0, 0x7f02020a

    goto :goto_3c

    .line 4489
    :cond_71
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_72

    const v0, 0x7f0201e6

    :goto_3d
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4494
    const v0, 0x7f020220

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4496
    const v0, 0x7f0201bf

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4498
    const v0, 0x7f020249

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4501
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4504
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4489
    :cond_72
    const v0, 0x7f020091

    goto :goto_3d

    .line 4511
    :cond_73
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_77

    .line 4512
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_75

    .line 4515
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_74

    const v0, 0x7f0201e7

    :goto_3e
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4520
    const v0, 0x7f020221

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4522
    const v0, 0x7f0201c0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4524
    const v0, 0x7f02024a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4527
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4548
    :goto_3f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4515
    :cond_74
    const v0, 0x7f020208

    goto :goto_3e

    .line 4532
    :cond_75
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_76

    const v0, 0x7f0201e6

    :goto_40
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4537
    const v0, 0x7f020220

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4539
    const v0, 0x7f0201bf

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4541
    const v0, 0x7f020249

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4544
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_H:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    goto :goto_3f

    .line 4532
    :cond_76
    const v0, 0x7f020091

    goto :goto_40

    .line 4551
    :cond_77
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_79

    .line 4554
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_78

    const v0, 0x7f0201d8

    :goto_41
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4559
    const v0, 0x7f0201a0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4561
    const v0, 0x7f0201ae

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4563
    const v0, 0x7f020238

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4566
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4587
    :goto_42
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4554
    :cond_78
    const v0, 0x7f0201fc

    goto :goto_41

    .line 4571
    :cond_79
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_7a

    const v0, 0x7f0201d5

    :goto_43
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4576
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4578
    const v0, 0x7f0201ab

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4580
    const v0, 0x7f020235

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4583
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    goto :goto_42

    .line 4571
    :cond_7a
    const v0, 0x7f02008d

    goto :goto_43

    .line 4596
    :pswitch_6
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_7b

    const-string v0, "SBar.NetworkController"

    const-string v1, "updateDataNetType: mDataNetType=NETWORK_TYPE_CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4597
    :cond_7b
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_7f

    .line 4599
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_7d

    .line 4602
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_7c

    const v0, 0x7f0201d2

    :goto_44
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4607
    const v0, 0x7f02019c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4609
    const v0, 0x7f0201a8

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4611
    const v0, 0x7f020232

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4614
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_1X_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4635
    :goto_45
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b006c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4602
    :cond_7c
    const v0, 0x7f0201f6

    goto :goto_44

    .line 4619
    :cond_7d
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_7e

    const v0, 0x7f0201d1

    :goto_46
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4624
    const v0, 0x7f02019b

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4626
    const v0, 0x7f0201a7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4628
    const v0, 0x7f020231

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4631
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_1X:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    goto :goto_45

    .line 4619
    :cond_7e
    const v0, 0x7f02008c

    goto :goto_46

    .line 4643
    :cond_7f
    :pswitch_7
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_80

    const-string v0, "SBar.NetworkController"

    const-string v1, "updateDataNetType: mDataNetType=NETWORK_TYPE_1xRTT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4644
    :cond_80
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_84

    .line 4645
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_82

    .line 4648
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_81

    const v0, 0x7f0201d2

    :goto_47
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4653
    const v0, 0x7f02019c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4655
    const v0, 0x7f0201a8

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4657
    const v0, 0x7f020232

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4660
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_1X_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4681
    :goto_48
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0066

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4648
    :cond_81
    const v0, 0x7f0201f6

    goto :goto_47

    .line 4665
    :cond_82
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_83

    const v0, 0x7f0201d1

    :goto_49
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4670
    const v0, 0x7f02019b

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4672
    const v0, 0x7f0201a7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4674
    const v0, 0x7f020231

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4677
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_1X:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    goto :goto_48

    .line 4665
    :cond_83
    const v0, 0x7f02008c

    goto :goto_49

    .line 4692
    :cond_84
    :pswitch_8
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_85

    const-string v0, "SBar.NetworkController"

    const-string v1, "updateDataNetType: mDataNetType=NETWORK_TYPE_EVDO_0 || NETWORK_TYPE_EVDO_A || NETWORK_TYPE_EVDO_B || NETWORK_TYPE_EHRPD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4697
    :cond_85
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_87

    .line 4700
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_86

    const v0, 0x7f0201d8

    :goto_4a
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4705
    const v0, 0x7f0201a0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4707
    const v0, 0x7f0201ae

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4709
    const v0, 0x7f020238

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4712
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4733
    :goto_4b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4700
    :cond_86
    const v0, 0x7f0201fc

    goto :goto_4a

    .line 4717
    :cond_87
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_88

    const v0, 0x7f0201d5

    :goto_4c
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4722
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4724
    const v0, 0x7f0201ab

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4726
    const v0, 0x7f020235

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4729
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    goto :goto_4b

    .line 4717
    :cond_88
    const v0, 0x7f02008d

    goto :goto_4c

    .line 4738
    :pswitch_9
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_89

    const-string v0, "SBar.NetworkController"

    const-string v1, "updateDataNetType: mDataNetType=NETWORK_TYPE_LTE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4739
    :cond_89
    const-string v0, "att"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 4740
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_8c

    .line 4743
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_8a

    const v0, 0x7f0201dc

    :goto_4d
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4749
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4750
    const v0, 0x7f0201b2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4753
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4755
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_8b

    const v0, 0x7f0201dc

    :goto_4e
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4760
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00c7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4743
    :cond_8a
    const v0, 0x7f0201ff

    goto :goto_4d

    .line 4755
    :cond_8b
    const v0, 0x7f0201ff

    goto :goto_4e

    .line 4765
    :cond_8c
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_8d

    const v0, 0x7f0201da

    :goto_4f
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4770
    const v0, 0x7f0201a3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4772
    const v0, 0x7f0201b0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4774
    const v0, 0x7f02023a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4777
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G_LTE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    goto/16 :goto_2

    .line 4765
    :cond_8d
    const v0, 0x7f0201fe

    goto :goto_4f

    .line 4780
    :cond_8e
    const-string v0, "vzw"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    const-string v0, "usc"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    const-string v0, "tmo"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    const-string v0, "acg-lte"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 4791
    :cond_8f
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_91

    .line 4794
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_90

    const v0, 0x7f0201dd

    :goto_50
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4799
    const v0, 0x7f0201a4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4801
    const v0, 0x7f0201b3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4803
    const v0, 0x7f02023d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4806
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G_LTE_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4809
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00c7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4794
    :cond_90
    const v0, 0x7f020200

    goto :goto_50

    .line 4814
    :cond_91
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_92

    const v0, 0x7f0201da

    :goto_51
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4819
    const v0, 0x7f0201a3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4821
    const v0, 0x7f0201b0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4823
    const v0, 0x7f02023a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4826
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G_LTE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4828
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00c7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4814
    :cond_92
    const v0, 0x7f0201fe

    goto :goto_51

    .line 4834
    :cond_93
    const-string v0, "rogers"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    const-string v0, "fido"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    const-string v0, "bellca"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    const-string v0, "claroPR"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    const-string v0, "skt"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    const-string v0, "kt"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    const-string v0, "telus"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    const-string v0, "tmo-intl"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    const-string v0, "o2de"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 4860
    :cond_94
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_96

    .line 4863
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_95

    const v0, 0x7f0201eb

    :goto_52
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4868
    const v0, 0x7f02022a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4870
    const v0, 0x7f0201c4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4872
    const v0, 0x7f02024e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4875
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_LTE_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4878
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4863
    :cond_95
    const v0, 0x7f02020c

    goto :goto_52

    .line 4883
    :cond_96
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_97

    const v0, 0x7f0201ea

    :goto_53
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4888
    const v0, 0x7f020229

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4890
    const v0, 0x7f0201c3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4892
    const v0, 0x7f02024d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4895
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_LTE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4898
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4883
    :cond_97
    const v0, 0x7f02020b

    goto :goto_53

    .line 4904
    :cond_98
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShow4GforLTE:Z

    if-eqz v0, :cond_9c

    .line 4906
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_9a

    .line 4909
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_99

    const v0, 0x7f0201df

    :goto_54
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4914
    const v0, 0x7f0201a6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4916
    const v0, 0x7f0201b6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4918
    const v0, 0x7f020240

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4921
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4942
    :goto_55
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4909
    :cond_99
    const v0, 0x7f020202

    goto :goto_54

    .line 4926
    :cond_9a
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_9b

    const v0, 0x7f0201d9

    :goto_56
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4931
    const v0, 0x7f0201a5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4933
    const v0, 0x7f0201af

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4935
    const v0, 0x7f020239

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4938
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_4G:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    goto :goto_55

    .line 4926
    :cond_9b
    const v0, 0x7f02008e

    goto :goto_56

    .line 4946
    :cond_9c
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_9e

    .line 4949
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_9d

    const v0, 0x7f0201eb

    :goto_57
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4954
    const v0, 0x7f02022a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4956
    const v0, 0x7f0201c4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4958
    const v0, 0x7f02024e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4961
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_LTE_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 4982
    :goto_58
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b006b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4949
    :cond_9d
    const v0, 0x7f02020c

    goto :goto_57

    .line 4966
    :cond_9e
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_9f

    const v0, 0x7f0201ea

    :goto_59
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4971
    const v0, 0x7f020229

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 4973
    const v0, 0x7f0201c3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 4975
    const v0, 0x7f02024d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 4978
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_LTE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    goto :goto_58

    .line 4966
    :cond_9f
    const v0, 0x7f020092

    goto :goto_59

    .line 4989
    :pswitch_a
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_ac

    .line 4990
    const-string v0, "att"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 4991
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_a2

    .line 4994
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_a0

    const v0, 0x7f0201e4

    :goto_5a
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 5000
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 5001
    const v0, 0x7f0201bd

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 5004
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 5006
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_a1

    const v0, 0x7f0201e4

    :goto_5b
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 5011
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0065

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 4994
    :cond_a0
    const v0, 0x7f020205

    goto :goto_5a

    .line 5006
    :cond_a1
    const v0, 0x7f020205

    goto :goto_5b

    .line 5016
    :cond_a2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_a3

    const v0, 0x7f0201e3

    :goto_5c
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 5021
    const v0, 0x7f02021e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 5023
    const v0, 0x7f0201bb

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 5025
    const v0, 0x7f020245

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 5028
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_G:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 5031
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0065

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 5016
    :cond_a3
    const v0, 0x7f020090

    goto :goto_5c

    .line 5037
    :cond_a4
    const-string v0, "sfr"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 5038
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_a6

    .line 5041
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_a5

    const v0, 0x7f0201d4

    :goto_5d
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 5046
    const v0, 0x7f02019e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 5048
    const v0, 0x7f0201aa

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 5050
    const v0, 0x7f020234

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 5053
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_2G_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 5056
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00ca

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 5041
    :cond_a5
    const v0, 0x7f0201f8

    goto :goto_5d

    .line 5061
    :cond_a6
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_a7

    const v0, 0x7f0201d3

    :goto_5e
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 5066
    const v0, 0x7f02019d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 5068
    const v0, 0x7f0201a9

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 5070
    const v0, 0x7f020233

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 5073
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_2G:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 5076
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00ca

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 5061
    :cond_a7
    const v0, 0x7f0201f7

    goto :goto_5e

    .line 5083
    :cond_a8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_aa

    .line 5086
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_a9

    const v0, 0x7f0201e5

    :goto_5f
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 5091
    const v0, 0x7f02021f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 5093
    const v0, 0x7f0201be

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 5095
    const v0, 0x7f020248

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 5098
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_G_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 5119
    :goto_60
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0065

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 5086
    :cond_a9
    const v0, 0x7f020206

    goto :goto_5f

    .line 5103
    :cond_aa
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_ab

    const v0, 0x7f0201e3

    :goto_61
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 5108
    const v0, 0x7f02021e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 5110
    const v0, 0x7f0201bb

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 5112
    const v0, 0x7f020245

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 5115
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_G_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    goto :goto_60

    .line 5103
    :cond_ab
    const v0, 0x7f020090

    goto :goto_61

    .line 5123
    :cond_ac
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_ae

    .line 5126
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_ad

    const v0, 0x7f0201d8

    :goto_62
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 5131
    const v0, 0x7f0201a0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 5133
    const v0, 0x7f0201ae

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 5135
    const v0, 0x7f020238

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 5138
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 5159
    :goto_63
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 5126
    :cond_ad
    const v0, 0x7f0201fc

    goto :goto_62

    .line 5143
    :cond_ae
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_af

    const v0, 0x7f0201d5

    :goto_64
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 5148
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 5150
    const v0, 0x7f0201ab

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 5152
    const v0, 0x7f020235

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 5155
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    goto :goto_63

    .line 5143
    :cond_af
    const v0, 0x7f02008d

    goto :goto_64

    .line 5181
    :cond_b0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_b2

    .line 5184
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_b1

    const v0, 0x7f0201d8

    :goto_65
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 5189
    const v0, 0x7f0201a0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 5191
    const v0, 0x7f0201ae

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 5193
    const v0, 0x7f020238

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 5196
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G_WIDE:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 5217
    :goto_66
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_2

    .line 5184
    :cond_b1
    const v0, 0x7f0201fc

    goto :goto_65

    .line 5201
    :cond_b2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_b3

    const v0, 0x7f0201d5

    :goto_67
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 5206
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 5208
    const v0, 0x7f0201ab

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    .line 5210
    const v0, 0x7f020235

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    .line 5213
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_3G:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    goto :goto_66

    .line 5201
    :cond_b3
    const v0, 0x7f02008d

    goto :goto_67

    .line 5236
    :cond_b4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5237
    const v0, 0x7f020093

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 5238
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_R:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    goto/16 :goto_3

    .line 3331
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_a
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private updateRealDataNetType(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 1803
    const-string v0, "showRealDataNetType"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1804
    if-nez v0, :cond_0

    .line 1813
    :goto_0
    return-void

    .line 1807
    :cond_0
    const-string v0, "realDataNetType"

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1808
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1809
    const-string v1, "SBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get Intent to show real data net type,realDataNetType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {v1, v2, v0}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(II)V

    goto :goto_0
.end method

.method private final updateRoamingIcon()V
    .locals 11

    .prologue
    const v1, 0x7f02004d

    const v10, 0x7f0b00df

    const v9, 0x7f0b00e0

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 5312
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5316
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 5317
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSRoamingIconId:I

    .line 5324
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5325
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    .line 5330
    :goto_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 5331
    const-string v1, "SBar.NetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRoamingIcon: no Service: mRoamingIconId=(none) Accessibility=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " EmergencyOnlyMode"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5684
    :cond_0
    :goto_2
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 5685
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRoamingIcon: mRoamingIconId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mQSRoamingIconId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSRoamingIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSRoamingIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mContentDescriptionRoaming=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5694
    :cond_1
    :goto_3
    return-void

    .line 5327
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00de

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    goto/16 :goto_0

    .line 5331
    :cond_3
    const-string v0, " !hasService()"

    goto :goto_1

    .line 5340
    :cond_4
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_5

    .line 5341
    const-string v0, "SBar.NetworkController"

    const-string v2, "updateRoamingIcon: has Service"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5343
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-nez v0, :cond_6

    .line 5344
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 5345
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSRoamingIconId:I

    .line 5346
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 5347
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRoamingIcon: Custom Icons Disabled: mRoamingIconId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mQSRoamingIconId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSRoamingIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSRoamingIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mContentDescriptionRoaming=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 5364
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v0

    if-nez v0, :cond_10

    .line 5365
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_7

    .line 5366
    const-string v0, "SBar.NetworkController"

    const-string v2, "updateRoamingIcon: not CDMA"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5369
    :cond_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIndicationDisabled:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5377
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_b

    .line 5378
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_9

    const v0, 0x7f0201ee

    :goto_4
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 5383
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_a

    const v0, 0x7f02016d

    :goto_5
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSRoamingIconId:I

    .line 5401
    :goto_6
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_8

    .line 5402
    const-string v0, "SBar.NetworkController"

    const-string v1, "updateRoamingIcon: mRoamingIconId = R.drawable.zz_moto_stat_sys_data_connected_roam (#1)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5408
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    goto/16 :goto_2

    .line 5378
    :cond_9
    const v0, 0x7f02020f

    goto :goto_4

    .line 5383
    :cond_a
    const v0, 0x7f020140

    goto :goto_5

    .line 5389
    :cond_b
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_c

    const v0, 0x7f0201ec

    :goto_7
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 5394
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_d

    const v0, 0x7f020056

    :goto_8
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSRoamingIconId:I

    goto :goto_6

    .line 5389
    :cond_c
    const v0, 0x7f02020d

    goto :goto_7

    :cond_d
    move v0, v1

    .line 5394
    goto :goto_8

    .line 5413
    :cond_e
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 5414
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSRoamingIconId:I

    .line 5416
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_f

    .line 5417
    const-string v0, "SBar.NetworkController"

    const-string v1, "updateRoamingIcon: mRoamingIconId = 0 (#2)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5419
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    goto/16 :goto_2

    .line 5424
    :cond_10
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_11

    .line 5425
    const-string v0, "SBar.NetworkController"

    const-string v2, "updateRoamingIcon: CDMA"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5428
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-static {v0}, Lcom/motorola/android/systemui/statusbar/MotoSystemUIUtils;->updateCdmaFemtoIcon(Landroid/telephony/ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5433
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_12

    .line 5434
    const-string v0, "SBar.NetworkController"

    const-string v1, "updateRoamingIcon: CDMA FemtoCell"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5437
    :cond_12
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_13

    const v0, 0x7f020271

    :goto_9
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 5442
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_14

    const v0, 0x7f02017d

    :goto_a
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSRoamingIconId:I

    .line 5448
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00e1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    goto/16 :goto_2

    .line 5437
    :cond_13
    const v0, 0x7f020272

    goto :goto_9

    .line 5442
    :cond_14
    const v0, 0x7f020150

    goto :goto_a

    .line 5454
    :cond_15
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_ROAMING_INDICATOR_CDMA_WIDE:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v0, v0, v2

    .line 5463
    :goto_b
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v2, :cond_1b

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_ROAMING_INDICATOR_CDMA_FLASH_WIDE:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v2, v2, v3

    .line 5473
    :goto_c
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v3, :cond_1c

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_ROAMING_INDICATOR_CDMA_WIDE:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v3, v3, v4

    .line 5482
    :goto_d
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v4, :cond_1d

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_ROAMING_INDICATOR_CDMA_FLASH_WIDE:[[I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v4, v4, v5

    .line 5492
    :goto_e
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v5, :cond_1e

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v5

    .line 5497
    :goto_f
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v8, :cond_1f

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v8

    .line 5502
    :goto_10
    if-eq v5, v6, :cond_16

    if-ne v8, v6, :cond_27

    .line 5510
    :cond_16
    if-ne v5, v6, :cond_17

    .line 5511
    const-string v0, "SBar.NetworkController"

    const-string v2, "updateRoamingIcon: getCdmaEriIconIndex returned -1, use isNetworkRoaming not ERI"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5517
    :cond_17
    if-ne v8, v6, :cond_18

    .line 5518
    const-string v0, "SBar.NetworkController"

    const-string v2, "updateRoamingIcon: getCdmeEriIconMode returned -1, use isNetworkRoaming not ERI"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5523
    :cond_18
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIndicationDisabled:Z

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 5528
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_22

    .line 5529
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_20

    const v0, 0x7f0201ee

    :goto_11
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 5534
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_21

    const v0, 0x7f02016d

    :goto_12
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSRoamingIconId:I

    .line 5552
    :goto_13
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_19

    .line 5553
    const-string v0, "SBar.NetworkController"

    const-string v1, "updateRoamingIcon: mRoamingIconId = R.drawable.zz_moto_stat_sys_data_connected_roam (#3)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5557
    :cond_19
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    goto/16 :goto_2

    .line 5454
    :cond_1a
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_ROAMING_INDICATOR_CDMA:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v0, v0, v2

    goto/16 :goto_b

    .line 5463
    :cond_1b
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_ROAMING_INDICATOR_CDMA_FLASH:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v2, v2, v3

    goto/16 :goto_c

    .line 5473
    :cond_1c
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_ROAMING_INDICATOR_CDMA:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v3, v3, v4

    goto/16 :goto_d

    .line 5482
    :cond_1d
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_ROAMING_INDICATOR_CDMA_FLASH:[[I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v4, v4, v5

    goto :goto_e

    :cond_1e
    move v5, v6

    .line 5492
    goto :goto_f

    :cond_1f
    move v8, v6

    .line 5497
    goto :goto_10

    .line 5529
    :cond_20
    const v0, 0x7f02020f

    goto :goto_11

    .line 5534
    :cond_21
    const v0, 0x7f020140

    goto :goto_12

    .line 5540
    :cond_22
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    if-nez v0, :cond_24

    const v0, 0x7f0201ec

    :goto_14
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 5545
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_23

    const v1, 0x7f020056

    :cond_23
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSRoamingIconId:I

    goto :goto_13

    .line 5540
    :cond_24
    const v0, 0x7f02020d

    goto :goto_14

    .line 5560
    :cond_25
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 5561
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSRoamingIconId:I

    .line 5563
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_26

    const-string v0, "SBar.NetworkController"

    const-string v1, "updateRoamingIcon: mRoamingIconId = 0 (#4)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5564
    :cond_26
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    goto/16 :goto_2

    .line 5571
    :cond_27
    const/4 v1, 0x1

    if-ne v5, v1, :cond_2a

    .line 5572
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_28

    const-string v0, "SBar.NetworkController"

    const-string v1, "Cdma ROAMING_INDICATOR_OFF, removing ERI icon"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5573
    :cond_28
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 5574
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSRoamingIconId:I

    .line 5576
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_29

    const-string v0, "SBar.NetworkController"

    const-string v1, "updateRoamingIcon: mRoamingIconId = 0 (#5)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5577
    :cond_29
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    goto/16 :goto_2

    .line 5635
    :cond_2a
    array-length v1, v0

    if-le v5, v1, :cond_30

    move v1, v7

    .line 5638
    :goto_15
    packed-switch v8, :pswitch_data_0

    goto/16 :goto_2

    .line 5640
    :pswitch_0
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v2, :cond_2b

    .line 5641
    const-string v2, "SBar.NetworkController"

    const-string v4, "updateRoamingIcon: CDMA normal mode"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5643
    :cond_2b
    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 5644
    aget v0, v3, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSRoamingIconId:I

    .line 5646
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_2c

    .line 5647
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRoamingIcon: mRoamingIconId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (#7)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5652
    :cond_2c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    goto/16 :goto_2

    .line 5656
    :pswitch_1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_2d

    .line 5657
    const-string v0, "SBar.NetworkController"

    const-string v3, "updateRoamingIcon: CDMA flashing mode"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5659
    :cond_2d
    if-nez v1, :cond_2f

    const/4 v0, 0x2

    .line 5660
    :goto_16
    aget v1, v2, v0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 5661
    aget v0, v4, v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSRoamingIconId:I

    .line 5663
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_2e

    .line 5664
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRoamingIcon: mRoamingIconId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (#8)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5669
    :cond_2e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    goto/16 :goto_2

    :cond_2f
    move v0, v1

    goto :goto_16

    :cond_30
    move v1, v5

    goto/16 :goto_15

    .line 5638
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final updateSimIcon()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5731
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSimIcon: simState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5732
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_1

    const-string v1, "SBar.NetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSimIcon: hasService="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isEmergencyOnly()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mSimState == IccCardConstants.State.UNKNOWN = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_6

    const-string v0, "true"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mSimState == IccCardConstants.State.ABSENT="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_7

    const-string v0, "true"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mSimState == IccCardConstants.State.CARD_IO_ERROR="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_8

    const-string v0, "true"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5745
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_b

    .line 5783
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_9

    .line 5784
    const v0, 0x7f020264

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    .line 5785
    const v0, 0x7f02016a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSSimIconId:I

    .line 5790
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00e2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionSim:Ljava/lang/String;

    .line 5792
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_3

    const-string v0, "SBar.NetworkController"

    const-string v1, "updateSimIcon: set mSimIconId to NO_SIM"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5795
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDifferingIconForSimError:Z

    if-eqz v0, :cond_4

    const-string v0, "vzw"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5800
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_4

    .line 5816
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_a

    .line 5817
    const v0, 0x7f02019a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    .line 5818
    const v0, 0x7f020117

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSSimIconId:I

    .line 5823
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00e3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionSim:Ljava/lang/String;

    .line 5825
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_4

    const-string v0, "SBar.NetworkController"

    const-string v1, "updateSimIcon:  override mSimIconId to SIM_CORRUPT"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5838
    :cond_4
    :goto_5
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 5839
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSimIcon: exiting: mSimIconId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mContentDescriptionSim=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionSim:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5851
    :cond_5
    return-void

    .line 5732
    :cond_6
    const-string v0, "false"

    goto/16 :goto_0

    :cond_7
    const-string v0, "false"

    goto/16 :goto_1

    :cond_8
    const-string v0, "false"

    goto/16 :goto_2

    .line 5787
    :cond_9
    const v0, 0x7f020095

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    .line 5788
    const v0, 0x7f020169

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSSimIconId:I

    goto/16 :goto_3

    .line 5820
    :cond_a
    const v0, 0x7f020199

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    .line 5821
    const v0, 0x7f020116

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSSimIconId:I

    goto :goto_4

    .line 5832
    :cond_b
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    .line 5833
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSSimIconId:I

    .line 5834
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionSim:Ljava/lang/String;

    .line 5835
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_4

    const-string v0, "SBar.NetworkController"

    const-string v1, "updateSimIcon: has Service: mSimIconId=0"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private final updateTelephonySignalStrength()V
    .locals 12

    .prologue
    const v6, 0x7f0202c2

    const v5, 0x7f0202c1

    const v4, 0x7f0200a0

    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 2319
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_0

    .line 2320
    const-string v0, "SBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTelephonySignalStrength mSignalStrength="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_2

    .line 2325
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getMaxLevel()I

    move-result v0

    .line 2326
    if-lez v0, :cond_1

    .line 2327
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    .line 2329
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 2330
    const-string v0, "SBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTelephonySignalStrength mMaxSignalLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    const/4 v2, 0x4

    if-ge v0, v2, :cond_3

    .line 2339
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    .line 2341
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    const/4 v2, 0x6

    if-le v0, v2, :cond_4

    .line 2342
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    .line 2351
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigShowEmergencyCallsOnlyIcon:Z

    if-eqz v0, :cond_8

    .line 2356
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "SBar.NetworkController"

    const-string v1, "updateTelephonySignalStrength: EmergencyOnly mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_7

    .line 2358
    const v0, 0x7f0202e4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 2359
    const v0, 0x7f0202e4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 2360
    const v0, 0x7f0202e4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    .line 2366
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00dd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 2370
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    .line 2378
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 2379
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTelephonySignalStrength: Emergency Only - mPhoneSignalIconId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mQSPhoneSignalIconId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Accessibility=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3136
    :cond_6
    :goto_1
    return-void

    .line 2362
    :cond_7
    const v0, 0x7f0202e3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 2363
    const v0, 0x7f0202e3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 2364
    const v0, 0x7f0202e3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    goto/16 :goto_0

    .line 2398
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigShowSignalBarsWhenDataOnlyService:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasDataService()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2411
    :cond_9
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_a

    const-string v0, "SBar.NetworkController"

    const-string v1, "updateTelephonySignalStrength:  No service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    :cond_a
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_c

    .line 2413
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    packed-switch v0, :pswitch_data_0

    .line 2415
    const v0, 0x7f0202e9

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 2416
    const v0, 0x7f0202e9

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 2417
    const v0, 0x7f020168

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    .line 2449
    :goto_2
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 2450
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTelephonySignalStrength: !hasService(): No service icon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IconIdQS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NumBars="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2458
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTelephonySignalStrength: (mDataServiceState != ServiceState.STATE_IN_SERVICE): No data service icon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NumBars="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    :cond_b
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 2470
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00de

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    .line 3122
    :goto_3
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 3123
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTelephonySignalStrength: mPhoneSignalIconId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mQSPhoneSignalIconId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Accessibility=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2420
    :pswitch_0
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 2421
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 2422
    const v0, 0x7f020165

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    goto/16 :goto_2

    .line 2425
    :pswitch_1
    const v0, 0x7f0202e2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 2426
    const v0, 0x7f0202e2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 2427
    const v0, 0x7f020167

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    goto/16 :goto_2

    .line 2431
    :cond_c
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    packed-switch v0, :pswitch_data_1

    .line 2433
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 2434
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 2435
    const v0, 0x7f020054

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    goto/16 :goto_2

    .line 2438
    :pswitch_2
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 2439
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 2440
    const v0, 0x7f020164

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    goto/16 :goto_2

    .line 2443
    :pswitch_3
    const v0, 0x7f0202e1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 2444
    const v0, 0x7f0202e1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 2445
    const v0, 0x7f020166

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    goto/16 :goto_2

    .line 2481
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_11

    .line 2484
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_e

    const-string v0, "SBar.NetworkController"

    const-string v2, "updateTelephonySignalStrength: mSignalStrength == null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    :cond_e
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_10

    .line 2491
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    packed-switch v0, :pswitch_data_2

    .line 2493
    const v0, 0x7f0202e9

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 2494
    const v0, 0x7f0202e9

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 2495
    const v0, 0x7f020168

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    .line 2528
    :goto_4
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 2529
    const-string v0, "SBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTelephonySignalStrength hasService={noSignalLevel}: No service icon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IconIdQS="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " NumBars="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 2543
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00de

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    goto/16 :goto_3

    .line 2498
    :pswitch_4
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 2499
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 2500
    const v0, 0x7f020165

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    goto :goto_4

    .line 2503
    :pswitch_5
    const v0, 0x7f0202e2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 2504
    const v0, 0x7f0202e2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 2505
    const v0, 0x7f020167

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    goto/16 :goto_4

    .line 2509
    :cond_10
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    packed-switch v0, :pswitch_data_3

    .line 2511
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 2512
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 2513
    const v0, 0x7f020054

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    goto/16 :goto_4

    .line 2516
    :pswitch_6
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 2517
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 2518
    const v0, 0x7f020164

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    goto/16 :goto_4

    .line 2521
    :pswitch_7
    const v0, 0x7f0202e1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 2522
    const v0, 0x7f0202e1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 2523
    const v0, 0x7f020166

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    goto/16 :goto_4

    .line 2552
    :cond_11
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_12

    const-string v0, "SBar.NetworkController"

    const-string v2, "updateTelephonySignalStrength: mSignalStrength != null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getLevel(Landroid/telephony/SignalStrength;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    .line 2573
    if-gez v0, :cond_13

    move v0, v1

    .line 2580
    :cond_13
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    if-le v0, v2, :cond_14

    .line 2581
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    .line 2585
    :cond_14
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 2595
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v2, :cond_26

    .line 2596
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    packed-switch v2, :pswitch_data_4

    .line 2598
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_WIDE:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v3, v2, v3

    .line 2602
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH_WIDE:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v2, v2, v4

    .line 2678
    :goto_5
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v4, :cond_15

    .line 2679
    const-string v4, "SBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateTelephonySignalStrength Service={CDMA, Not-Roaming}, iconLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " NumBars="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " default IconId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v0

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2808
    :cond_15
    :goto_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v4

    if-eqz v4, :cond_16

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingEnabledCDMA:Z

    if-eq v4, v11, :cond_18

    :cond_16
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isLte()Z

    move-result v4

    if-eqz v4, :cond_17

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingEnabledLTE:Z

    if-eq v4, v11, :cond_18

    :cond_17
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v4

    if-nez v4, :cond_24

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isLte()Z

    move-result v4

    if-nez v4, :cond_24

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingEnabledGSM:Z

    if-ne v4, v11, :cond_24

    .line 2825
    :cond_18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2827
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v4, :cond_19

    .line 2828
    const-string v4, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateTelephonySignalStrength: Before Smoothing: iconLevel="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " NumBars="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " IconId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v3, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v3, v0

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " IconIdQS="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v0

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n currTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n mSignalStrengthSmoothingLastIncreaseChangeTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingLastIncreaseChangeTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mSignalStrengthSmoothingLastDecreaseChangeTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingLastDecreaseChangeTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n mSignalStrengthSmoothingReportedIconLevel="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingReportedIconLevel:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mSignalStrengthSmoothingIsFirstStepInThisDirection="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingIsFirstStepInThisDirection:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n mSignalStrengthSmoothingDelayFirstDecrease="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingDelayFirstDecrease:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mSignalStrengthSmoothingDecreaseInterval="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingDecreaseInterval:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n mSignalStrengthSmoothingDelayFirstIncrease="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingDelayFirstIncrease:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mSignalStrengthSmoothingIncreaseInterval="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingIncreaseInterval:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2859
    :cond_19
    iget-wide v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingLastIncreaseChangeTime:J

    cmp-long v4, v5, v7

    if-gez v4, :cond_1b

    .line 2860
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v4, :cond_1a

    .line 2861
    const-string v4, "SBar.NetworkController"

    const-string v7, "Clock Skew reset mSignalStrengthSmoothingLastIncreaseChangeTime"

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2865
    :cond_1a
    iput-wide v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingLastIncreaseChangeTime:J

    .line 2866
    iput-wide v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingLastDecreaseChangeTime:J

    .line 2868
    :cond_1b
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mStatusBarHandler:Landroid/os/Handler;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 2870
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingReportedIconLevel:I

    if-ge v0, v4, :cond_2d

    .line 2873
    const/16 v4, 0x3e8

    .line 2878
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingLastChangeWasIncrease:Z

    if-eqz v7, :cond_1c

    .line 2880
    iput-wide v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingLastIncreaseChangeTime:J

    .line 2882
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingDelayFirstDecrease:I

    .line 2883
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingIsFirstStepInThisDirection:Z

    .line 2885
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingLastChangeWasIncrease:Z

    .line 2886
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingLastChangeWasDecrease:Z

    .line 2889
    :cond_1c
    if-eqz v4, :cond_1e

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingIsFirstStepInThisDirection:Z

    if-eqz v7, :cond_1d

    iget-wide v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingLastIncreaseChangeTime:J

    sub-long v7, v5, v7

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingDelayFirstDecrease:I

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_1e

    :cond_1d
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingIsFirstStepInThisDirection:Z

    if-nez v7, :cond_20

    iget-wide v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingLastDecreaseChangeTime:J

    sub-long v7, v5, v7

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingDecreaseInterval:I

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-ltz v7, :cond_20

    .line 2912
    :cond_1e
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingDecreaseInterval:I

    if-nez v4, :cond_2b

    .line 2914
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingReportedIconLevel:I

    move v4, v1

    .line 2933
    :cond_1f
    :goto_7
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingIsFirstStepInThisDirection:Z

    .line 2935
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingLastChangeWasIncrease:Z

    .line 2936
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingLastChangeWasDecrease:Z

    .line 2938
    iput-wide v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingLastDecreaseChangeTime:J

    .line 2943
    :cond_20
    if-eqz v4, :cond_22

    .line 2944
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v1, :cond_21

    .line 2945
    const-string v1, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateTelephonySignalStrength: Smoothing: Decrease timerInterval="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    :cond_21
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mStatusBarHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mStatusBarHandler:Landroid/os/Handler;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    int-to-long v8, v4

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3058
    :cond_22
    :goto_8
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingReportedIconLevel:I

    if-ltz v1, :cond_23

    .line 3060
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingReportedIconLevel:I

    .line 3063
    :cond_23
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v1, :cond_24

    .line 3064
    const-string v1, "SBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTelephonySignalStrength: After Smoothing: iconLevel="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " NumBars="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " smoothed IconId="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v7, v3, v0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v7, v3, v0

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " IconIdQS="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v7, v2, v0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v7, v2, v0

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n currTime="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n mSignalStrengthSmoothingLastIncreaseChangeTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingLastIncreaseChangeTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mSignalStrengthSmoothingLastDecreaseChangeTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingLastDecreaseChangeTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n mSignalStrengthSmoothingReportedIconLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingReportedIconLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mSignalStrengthSmoothingIsFirstStepInThisDirection="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingIsFirstStepInThisDirection:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n mSignalStrengthSmoothingDelayFirstDecrease="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingDelayFirstDecrease:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mSignalStrengthSmoothingDecreaseInterval="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingDecreaseInterval:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n mSignalStrengthSmoothingDelayFirstIncrease="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingDelayFirstIncrease:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mSignalStrengthSmoothingIncreaseInterval="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingIncreaseInterval:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    :cond_24
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    if-ge v0, v1, :cond_37

    .line 3099
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v4, v4, v0

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 3108
    :goto_9
    array-length v1, v3

    if-lt v0, v1, :cond_25

    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    .line 3110
    :cond_25
    aget v1, v3, v0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 3111
    aget v1, v2, v0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    .line 3118
    aget v0, v3, v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto/16 :goto_3

    .line 2608
    :pswitch_8
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_5_BAR_WIDE:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v3, v2, v3

    .line 2612
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH_5_BAR_WIDE:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v2, v2, v4

    goto/16 :goto_5

    .line 2618
    :pswitch_9
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_6_BAR_WIDE:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v3, v2, v3

    .line 2622
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH_6_BAR_WIDE:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v2, v2, v4

    goto/16 :goto_5

    .line 2629
    :cond_26
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    packed-switch v2, :pswitch_data_5

    .line 2631
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-nez v2, :cond_27

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaEri()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 2636
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v3, v2, v3

    .line 2640
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v2, v2, v4

    goto/16 :goto_5

    .line 2645
    :cond_27
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v3, v2, v3

    .line 2649
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v2, v2, v4

    goto/16 :goto_5

    .line 2656
    :pswitch_a
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_5_BAR:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v3, v2, v3

    .line 2660
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH_5_BAR:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v2, v2, v4

    goto/16 :goto_5

    .line 2666
    :pswitch_b
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_6_BAR:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v3, v2, v3

    .line 2670
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH_6_BAR:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v2, v2, v4

    goto/16 :goto_5

    .line 2703
    :cond_28
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v2, :cond_29

    .line 2704
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    packed-switch v2, :pswitch_data_6

    .line 2706
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_WIDE:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v3, v2, v3

    .line 2710
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH_WIDE:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v2, v2, v4

    .line 2785
    :goto_a
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v4, :cond_15

    .line 2786
    const-string v4, "SBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateTelephonySignalStrength Service={Not-CDMA, Not-Roaming}, iconLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " NumBars="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " IconId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v0

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " IconIdQS="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v2, v0

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2716
    :pswitch_c
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_5_BAR_WIDE:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v3, v2, v3

    .line 2720
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH_5_BAR_WIDE:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v2, v2, v4

    goto :goto_a

    .line 2726
    :pswitch_d
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_6_BAR_WIDE:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v3, v2, v3

    .line 2730
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH_6_BAR_WIDE:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v2, v2, v4

    goto :goto_a

    .line 2737
    :cond_29
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    packed-switch v2, :pswitch_data_7

    .line 2739
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-nez v2, :cond_2a

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2744
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v3, v2, v3

    .line 2748
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v2, v2, v4

    goto/16 :goto_a

    .line 2753
    :cond_2a
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v3, v2, v3

    .line 2757
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v2, v2, v4

    goto/16 :goto_a

    .line 2764
    :pswitch_e
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_5_BAR:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v3, v2, v3

    .line 2768
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH_5_BAR:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v2, v2, v4

    goto/16 :goto_a

    .line 2774
    :pswitch_f
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_6_BAR:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    aget-object v3, v2, v3

    .line 2778
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH_6_BAR:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v2, v2, v4

    goto/16 :goto_a

    .line 2917
    :cond_2b
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingReportedIconLevel:I

    if-lez v4, :cond_2c

    .line 2918
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingReportedIconLevel:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingReportedIconLevel:I

    .line 2919
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingDecreaseInterval:I

    .line 2920
    sget-boolean v7, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v7, :cond_1f

    .line 2921
    const-string v7, "SBar.NetworkController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateTelephonySignalStrength: Smoothing: Reported IconLevel decreased to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingReportedIconLevel:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_2c
    move v4, v1

    .line 2929
    goto/16 :goto_7

    .line 2957
    :cond_2d
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingReportedIconLevel:I

    if-le v0, v4, :cond_36

    .line 2960
    const/16 v4, 0x3e8

    .line 2965
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingLastChangeWasDecrease:Z

    if-eqz v7, :cond_2e

    .line 2967
    iput-wide v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingLastDecreaseChangeTime:J

    .line 2969
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingDelayFirstIncrease:I

    .line 2970
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingIsFirstStepInThisDirection:Z

    .line 2972
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingLastChangeWasIncrease:Z

    .line 2973
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingLastChangeWasDecrease:Z

    .line 2976
    :cond_2e
    if-eqz v4, :cond_30

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingIsFirstStepInThisDirection:Z

    if-eqz v7, :cond_2f

    iget-wide v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingLastDecreaseChangeTime:J

    sub-long v7, v5, v7

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingDelayFirstIncrease:I

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_30

    :cond_2f
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingIsFirstStepInThisDirection:Z

    if-nez v7, :cond_32

    iget-wide v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingLastIncreaseChangeTime:J

    sub-long v7, v5, v7

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingIncreaseInterval:I

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-ltz v7, :cond_32

    .line 2999
    :cond_30
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingIncreaseInterval:I

    if-nez v4, :cond_34

    .line 3001
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingReportedIconLevel:I

    move v4, v1

    .line 3023
    :cond_31
    :goto_b
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingIsFirstStepInThisDirection:Z

    .line 3026
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingLastChangeWasIncrease:Z

    .line 3027
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingLastChangeWasDecrease:Z

    .line 3029
    iput-wide v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingLastIncreaseChangeTime:J

    .line 3033
    :cond_32
    if-eqz v4, :cond_22

    .line 3034
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v1, :cond_33

    .line 3035
    const-string v1, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateTelephonySignalStrength: Smoothing: Increase timerInterval="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3041
    :cond_33
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mStatusBarHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mStatusBarHandler:Landroid/os/Handler;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    int-to-long v8, v4

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_8

    .line 3004
    :cond_34
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingReportedIconLevel:I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    if-ge v4, v7, :cond_35

    .line 3009
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingReportedIconLevel:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingReportedIconLevel:I

    .line 3010
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingIncreaseInterval:I

    .line 3011
    sget-boolean v7, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v7, :cond_31

    .line 3012
    const-string v7, "SBar.NetworkController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateTelephonySignalStrength: Smoothing: Reported IconLevel increased to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingReportedIconLevel:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_35
    move v4, v1

    .line 3020
    goto :goto_b

    .line 3047
    :cond_36
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingReportedIconLevel:I

    if-ne v0, v1, :cond_22

    .line 3049
    iput-wide v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingLastIncreaseChangeTime:J

    .line 3050
    iput-wide v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingLastDecreaseChangeTime:J

    .line 3054
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrengthSmoothingReportedIconLevel:I

    goto/16 :goto_8

    .line 3102
    :cond_37
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    .line 3103
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    goto/16 :goto_9

    .line 2413
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2431
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2491
    :pswitch_data_2
    .packed-switch 0x5
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 2509
    :pswitch_data_3
    .packed-switch 0x5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 2596
    :pswitch_data_4
    .packed-switch 0x5
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 2629
    :pswitch_data_5
    .packed-switch 0x5
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 2704
    :pswitch_data_6
    .packed-switch 0x5
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 2737
    :pswitch_data_7
    .packed-switch 0x5
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public addCombinedLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 996
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 997
    return-void
.end method

.method public addEmergencyLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmergencyLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1013
    return-void
.end method

.method public addMobileLabelShortFormView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelShortFormViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1005
    return-void
.end method

.method public addMobileLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1001
    return-void
.end method

.method public addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1022
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    .line 1023
    return-void
.end method

.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V
    .locals 1
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1017
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    .line 1018
    return-void
.end method

.method protected createWifiHandler()V
    .locals 4

    .prologue
    .line 973
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 974
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 975
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 976
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 977
    .local v1, "wifiMessenger":Landroid/os/Messenger;
    if-eqz v1, :cond_0

    .line 978
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 980
    :cond_0
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 13

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 9450
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoMode:Z

    if-nez v0, :cond_1

    const-string v0, "enter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9451
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoMode:Z

    .line 9452
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoWifiLevel:I

    .line 9453
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoInetCondition:I

    .line 9454
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoDataTypeIconId:I

    .line 9455
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoMobileLevel:I

    .line 9536
    :cond_0
    return-void

    .line 9456
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoMode:Z

    if-eqz v0, :cond_2

    const-string v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9457
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoMode:Z

    .line 9458
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .line 9459
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    goto :goto_0

    .line 9461
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoMode:Z

    if-eqz v0, :cond_0

    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9462
    const-string v0, "airplane"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9463
    if-eqz v0, :cond_3

    .line 9464
    const-string v4, "show"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 9465
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .line 9466
    const v6, 0x7f02009f

    invoke-interface {v0, v4, v6}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setIsAirplaneMode(ZI)V

    goto :goto_1

    .line 9469
    :cond_3
    const-string v0, "fully"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9470
    if-eqz v0, :cond_4

    .line 9471
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoInetCondition:I

    .line 9473
    :cond_4
    const-string v0, "wifi"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9474
    if-eqz v0, :cond_9

    .line 9475
    const-string v1, "show"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 9476
    const-string v0, "level"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9477
    if-eqz v0, :cond_5

    .line 9478
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v0, v3

    :goto_3
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoWifiLevel:I

    .line 9481
    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoWifiLevel:I

    if-gez v0, :cond_8

    const v0, 0x7f0200a8

    move v1, v0

    .line 9483
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .line 9484
    const-string v6, "Demo"

    invoke-interface {v0, v4, v1, v2, v6}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setWifiIndicators(ZIILjava/lang/String;)V

    goto :goto_5

    :cond_6
    move v0, v2

    .line 9471
    goto :goto_2

    .line 9478
    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3

    .line 9481
    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoWifiLevel:I

    aget v0, v0, v1

    move v1, v0

    goto :goto_4

    .line 9491
    :cond_9
    const-string v0, "mobile"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9492
    if-eqz v0, :cond_0

    .line 9493
    const-string v1, "show"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 9494
    const-string v0, "datatype"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9495
    if-eqz v0, :cond_a

    .line 9496
    const-string v4, "1x"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const v0, 0x7f02008c

    :goto_6
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoDataTypeIconId:I

    .line 9508
    :cond_a
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 9509
    const-string v4, "level"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 9510
    if-eqz v4, :cond_b

    .line 9511
    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    :goto_7
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoMobileLevel:I

    .line 9514
    :cond_b
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoMobileLevel:I

    if-gez v3, :cond_15

    const v3, 0x7f0200a0

    .line 9516
    :goto_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .line 9517
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoDataTypeIconId:I

    const-string v7, ""

    const-string v8, "Demo"

    const-string v9, ""

    const-string v10, "Demo"

    const-string v11, ""

    move v4, v2

    move v6, v2

    invoke-interface/range {v0 .. v11}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setMobileDataIndicators(ZIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 9496
    :cond_c
    const-string v4, "3g"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const v0, 0x7f02008d

    goto :goto_6

    :cond_d
    const-string v4, "4g"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const v0, 0x7f02008e

    goto :goto_6

    :cond_e
    const-string v4, "e"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const v0, 0x7f02008f

    goto :goto_6

    :cond_f
    const-string v4, "g"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const v0, 0x7f020090

    goto :goto_6

    :cond_10
    const-string v4, "h"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const v0, 0x7f020091

    goto :goto_6

    :cond_11
    const-string v4, "lte"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const v0, 0x7f020092

    goto/16 :goto_6

    :cond_12
    const-string v4, "roam"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x7f020093

    goto/16 :goto_6

    :cond_13
    move v0, v2

    goto/16 :goto_6

    .line 9511
    :cond_14
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v4, v0, v2

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto/16 :goto_7

    .line 9514
    :cond_15
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoInetCondition:I

    aget-object v0, v0, v3

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoMobileLevel:I

    aget v3, v0, v3

    goto/16 :goto_8
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9075
    const-string v0, "NetworkController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9076
    const-string v1, "  %s network type %d (%s)"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    if-eqz v0, :cond_1

    const-string v0, "CONNECTED"

    :goto_0
    aput-object v0, v2, v3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9079
    const-string v0, "  - telephony ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9080
    const-string v0, "  hasVoiceCallingFeature()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9081
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasVoiceCallingFeature()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9082
    const-string v0, "  hasService()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9083
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9085
    const-string v0, "  hasDataService()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9086
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasDataService()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9088
    const-string v0, "  mHspaDataDistinguishable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9089
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9090
    const-string v0, "  mDataConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9091
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9092
    const-string v0, "  mSimState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9093
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9094
    const-string v0, "  mPhoneCallState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9095
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneCallState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9096
    const-string v0, "  mDataState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9097
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9098
    const-string v0, "  mDataActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9099
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9100
    const-string v0, "  mDataNetType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9101
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9102
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9103
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9104
    const-string v0, "  mServiceState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9105
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9106
    const-string v0, "  mSignalStrength="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9107
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 9108
    const-string v0, "  mLastSignalLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9109
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9110
    const-string v0, "  mNetworkName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9111
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9112
    const-string v0, "  mNetworkNameDefault="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9113
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9114
    const-string v0, "  mNetworkNameSeparator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9115
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9116
    const-string v0, "  mPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9117
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9118
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9119
    const-string v0, "  mQSPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9120
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9121
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9122
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9129
    const-string v0, "  mRoamingIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9130
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9131
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9132
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9135
    const-string v0, "  mSimIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9136
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9137
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9138
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9140
    const-string v0, "  mDataSignalIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9141
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9142
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9143
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9144
    const-string v0, "  mDataTypeIconId[NetworkType]="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9145
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9146
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9147
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9149
    const-string v0, "  mDataTypeIconIdShown[NetworkType]="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9150
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9151
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9152
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9154
    const-string v0, "  mQSDataTypeIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9155
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9156
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9157
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9159
    const-string v0, "  - wifi ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9160
    const-string v0, "  mWifiEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9161
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9162
    const-string v0, "  mWifiConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9163
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9164
    const-string v0, "  mWifiRssi="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9165
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiRssi:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9166
    const-string v0, "  mWifiLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9167
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9168
    const-string v0, "  mWifiSsid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9169
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9170
    const-string v0, "  mWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9172
    const-string v0, "  mQSWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9174
    const-string v0, "  mWifiActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9175
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9177
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    if-eqz v0, :cond_0

    .line 9178
    const-string v0, "  - wimax ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9179
    const-string v0, "  mIsWimaxEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9180
    const-string v0, "  mWimaxState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9181
    const-string v0, "  mWimaxConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9182
    const-string v0, "  mWimaxIdle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9183
    const-string v0, "  mWimaxIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9185
    const-string v0, "  mWimaxSignal=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9186
    const-string v0, "  mWimaxState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9187
    const-string v0, "  mWimaxExtraState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9190
    :cond_0
    const-string v0, "  - Bluetooth ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9191
    const-string v0, "  mBtReverseTethered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9192
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 9194
    const-string v0, "  - connectivity ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9195
    const-string v0, "  mMobileInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9196
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9197
    const-string v0, "  mMobileInetConditionSB="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9198
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9199
    const-string v0, "  mWifiInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9200
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9201
    const-string v0, "  mWifiInetConditionSB="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9202
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetConditionSB:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9203
    const-string v0, "  mWimaxInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9204
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9205
    const-string v0, "  mWimaxInetConditionSB="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9206
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetConditionSB:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 9208
    const-string v0, "  - icons ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9209
    const-string v0, "  mLastPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9210
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9211
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9212
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9217
    const-string v0, "  mLastWifiActivityIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9218
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiActivityIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9219
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9220
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiActivityIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9221
    const-string v0, "  mLastWifiIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9222
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9223
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9224
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9229
    const-string v0, "  mLastDataTypeIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9230
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9231
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9232
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9233
    const-string v0, "  mLastDataActivityIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9234
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataActivityIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9235
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9236
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataActivityIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9237
    const-string v0, "  mLastCombinedLabel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9238
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9239
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9240
    return-void

    .line 9076
    :cond_1
    const-string v0, "DISCONNECTED"

    goto/16 :goto_0
.end method

.method protected getResourceName(I)Ljava/lang/String;
    .locals 6
    .param p1, "resId"    # I

    .prologue
    .line 9244
    if-eqz p1, :cond_1

    .line 9245
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 9248
    .local v2, "res":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    .line 9249
    .local v3, "var":Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 9250
    .local v0, "delim":I
    if-lez v0, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 9251
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 9258
    .end local v0    # "delim":I
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "var":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 9254
    .restart local v2    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 9255
    .local v1, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "(unknown)"

    goto :goto_0

    .line 9258
    .end local v1    # "ex":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_1
    const-string v3, "(none)"

    goto :goto_0
.end method

.method public hasMobileDataFeature()Z
    .locals 1

    .prologue
    .line 956
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    return v0
.end method

.method public hasVoiceCallingFeature()Z
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCdmaEri()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 5258
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    if-nez v3, :cond_2

    .line 5267
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 5268
    .local v0, "iconIndex":I
    if-eq v0, v2, :cond_2

    .line 5269
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 5270
    .local v1, "iconMode":I
    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_2

    .line 5279
    .end local v0    # "iconIndex":I
    .end local v1    # "iconMode":I
    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isEmergencyOnly()Z
    .locals 1

    .prologue
    .line 964
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 16

    .prologue
    .line 1414
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-nez v1, :cond_a

    :cond_0
    const/4 v2, 0x1

    .line 1423
    :goto_0
    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    .line 1428
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-nez v1, :cond_3

    .line 1430
    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_c

    :cond_1
    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIn:Z

    .line 1441
    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_d

    :cond_2
    const/4 v1, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityOut:Z

    .line 1452
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigWideIconsAreBlue:Z

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigDisableWideActivityStatusbarIcons:Z

    if-nez v1, :cond_e

    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiActivityIconId:I

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigWideIconsAreBlue:Z

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigDisableWideActivityStatusbarIcons:Z

    if-nez v1, :cond_f

    :cond_5
    const/4 v5, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigWideIconsAreBlue:Z

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigDisableWideActivityStatusbarIcons:Z

    if-nez v1, :cond_10

    :cond_6
    const/4 v6, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v8}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onWifiSignalChanged(ZIIZZLjava/lang/String;Ljava/lang/String;)V

    .line 1510
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-nez v1, :cond_9

    .line 1512
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    if-eqz v1, :cond_11

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    :cond_7
    const/4 v1, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 1521
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    if-eqz v1, :cond_12

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_12

    :cond_8
    const/4 v1, 0x1

    :goto_8
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    .line 1531
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1532
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSSimIconId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSRoamingIconId:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v1, :cond_13

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    :goto_9
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v1, :cond_14

    const/4 v8, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v1, :cond_15

    const/4 v9, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionSim:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    const-string v14, ""

    const/4 v15, 0x0

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v15}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZIIIIIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onAirplaneModeChanged(Z)V

    .line 1639
    return-void

    .line 1414
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1423
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1430
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 1441
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 1452
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIn:Z

    goto/16 :goto_5

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityOut:Z

    goto/16 :goto_6

    .line 1512
    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_7

    .line 1521
    :cond_12
    const/4 v1, 0x0

    goto :goto_8

    .line 1532
    :cond_13
    const/4 v7, 0x0

    goto :goto_9

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    goto :goto_a

    :cond_15
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    goto :goto_b

    .line 1564
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v1, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v1, :cond_1a

    .line 1566
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSSimIconId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSRoamingIconId:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v1, :cond_17

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    :goto_d
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v1, :cond_18

    const/4 v8, 0x0

    :goto_e
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v1, :cond_19

    const/4 v9, 0x0

    :goto_f
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionSim:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    const-string v14, ""

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v15}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZIIIIIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_17
    const/4 v7, 0x0

    goto :goto_d

    :cond_18
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    goto :goto_e

    :cond_19
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    goto :goto_f

    .line 1601
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-nez v1, :cond_1b

    :cond_1b
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSSimIconId:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSRoamingIconId:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v1, :cond_1c

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    :goto_10
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v1, :cond_1d

    const/4 v8, 0x0

    :goto_11
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v1, :cond_1e

    const/4 v9, 0x0

    :goto_12
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionSim:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    const-string v14, ""

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v15}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZIIIIIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_1c
    const/4 v7, 0x0

    goto :goto_10

    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    goto :goto_11

    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    goto :goto_12
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1647
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1648
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1651
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_0

    .line 1652
    const-string v0, "SBar.NetworkController"

    const-string v1, "onReceive: WifiManager.RSSI_CHANGED_ACTION Received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiState(Landroid/content/Intent;)V

    .line 1655
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 1795
    :cond_1
    :goto_0
    return-void

    .line 1656
    :cond_2
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1659
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_3

    .line 1660
    const-string v0, "SBar.NetworkController"

    const-string v1, "onReceive: WifiManager.WIFI_STATE_CHANGED_ACTION Received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiState(Landroid/content/Intent;)V

    .line 1663
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto :goto_0

    .line 1664
    :cond_4
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1667
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_5

    .line 1668
    const-string v0, "SBar.NetworkController"

    const-string v1, "onReceive: WifiManager.NETWORK_STATE_CHANGED_ACTION Received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiState(Landroid/content/Intent;)V

    .line 1671
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto :goto_0

    .line 1675
    :cond_6
    const-string v1, "com.motorola.android.intent.action.GET_REAL_DATA_NET_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1676
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateRealDataNetType(Landroid/content/Intent;)V

    goto :goto_0

    .line 1679
    :cond_7
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1680
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_8

    const-string v0, "SBar.NetworkController"

    const-string v1, "onReceive: TelephonyIntents.ACTION_SIM_STATE_CHANGED) Received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    :cond_8
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateSimState(Landroid/content/Intent;)V

    .line 1696
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto :goto_0

    .line 1697
    :cond_9
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1698
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_a

    const-string v0, "SBar.NetworkController"

    const-string v1, "onReceive: TelephonyIntents.SPN_STRINGS_UPDATED_ACTION Received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    :cond_a
    const-string v0, "showSpn"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCacheShowSpn:Z

    .line 1703
    const-string v0, "spn"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCacheSpn:Ljava/lang/String;

    .line 1704
    const-string v0, "showPlmn"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCacheShowPlmn:Z

    .line 1705
    const-string v0, "plmn"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCachePlmn:Ljava/lang/String;

    .line 1706
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_b

    .line 1707
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     showSpn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCacheShowSpn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " spn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCacheSpn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " showPlmn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCacheShowPlmn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " plmn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCachePlmn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    :cond_b
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCacheShowSpn:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCacheSpn:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCacheShowPlmn:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCachePlmn:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 1726
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 1727
    :cond_c
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1728
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_d

    const-string v0, "SBar.NetworkController"

    const-string v1, "onReceive: ConnectivityManager.CONNECTIVITY_ACTION Received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    :cond_d
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateConnectivity(Landroid/content/Intent;)V

    .line 1731
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 1732
    :cond_e
    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1733
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_f

    const-string v0, "SBar.NetworkController"

    const-string v1, "onReceive: ConnectivityManager.INET_CONDITION_ACTION Received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    :cond_f
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateConnectivity(Landroid/content/Intent;)V

    .line 1736
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 1740
    :cond_10
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1741
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_11

    const-string v0, "SBar.NetworkController"

    const-string v1, "onReceive: ACTION_BOOT_COMPLETED Received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mStatusBarHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1744
    :cond_12
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1745
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_13

    const-string v0, "SBar.NetworkController"

    const-string v1, "onReceive: Intent.ACTION_CONFIGURATION_CHANGED Received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    :cond_13
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableCarrierCustomMappings:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 1751
    :cond_14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104062b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    .line 1756
    :goto_1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_15

    .line 1757
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Config Changed:mOperatorName_string is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    :cond_15
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshLocale()V

    .line 1760
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 1754
    :cond_16
    const-string v0, "@0"

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    goto :goto_1

    .line 1761
    :cond_17
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1762
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_18

    const-string v0, "SBar.NetworkController"

    const-string v1, "onReceive: Intent.ACTION_AIRPLANE_MODE_CHANGED Received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    :cond_18
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshLocale()V

    .line 1764
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateAirplaneMode()V

    .line 1765
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateSimIcon()V

    .line 1766
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 1767
    :cond_19
    const-string v1, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1770
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_1a

    .line 1771
    const-string v0, "SBar.NetworkController"

    const-string v1, "onReceive: WimaxManagerConstants.NET_4G_STATE_CHANGED_ACTION Received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    :cond_1a
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxState(Landroid/content/Intent;)V

    .line 1774
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 1776
    :cond_1b
    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1779
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_1c

    .line 1780
    const-string v0, "SBar.NetworkController"

    const-string v1, "onReceive: WimaxManagerConstants.SIGNAL_LEVEL_CHANGED_ACTION Received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    :cond_1c
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxState(Landroid/content/Intent;)V

    .line 1783
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 1785
    :cond_1d
    const-string v1, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1788
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_1e

    .line 1789
    const-string v0, "SBar.NetworkController"

    const-string v1, "onReceive: WimaxManagerConstants.WIMAX_NETWORK_STATE_CHANGED_ACTION Received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    :cond_1e
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxState(Landroid/content/Intent;)V

    .line 1792
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0
.end method

.method public refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V
    .locals 18

    .prologue
    .line 1026
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoMode:Z

    if-eqz v1, :cond_0

    .line 1408
    :goto_0
    return-void

    .line 1030
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 1031
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 1036
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    .line 1041
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    .line 1047
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-nez v4, :cond_b

    :cond_1
    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigDisableWideActivityStatusbarIcons:Z

    if-eqz v5, :cond_c

    const/4 v5, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v6, v5, v7}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setWifiIndicators(ZIILjava/lang/String;)V

    .line 1067
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v4, :cond_3

    .line 1071
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWifiIconId:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    if-ne v4, v5, :cond_2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWifiIntervalTimestamp:J

    cmp-long v4, v16, v4

    if-lez v4, :cond_3

    .line 1080
    :cond_2
    const-string v5, "SBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshSignalCluster: wifi: mWifiConnected="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " Wifi="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v4, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    :goto_6
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v4, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v4, :cond_e

    const-string v4, "/"

    :goto_7
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " Activity="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v4, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v4, :cond_f

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    :goto_8
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v4, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v4, :cond_10

    const-string v4, "/"

    :goto_9
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " in="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Accessibility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    const-wide/32 v1, 0x1d4c0

    add-long v1, v1, v16

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWifiIntervalTimestamp:J

    .line 1102
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWifiIconId:I

    .line 1103
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWifiActivityIconId:I

    .line 1108
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v1, :cond_11

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    move v13, v1

    .line 1113
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    move v14, v1

    .line 1118
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    move v15, v1

    .line 1124
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v1, :cond_24

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v1, :cond_24

    .line 1140
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v1, :cond_14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_d
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigDisableWideActivityStatusbarIcons:Z

    if-eqz v1, :cond_15

    const/4 v7, 0x0

    :goto_e
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionSim:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    const-string v12, ""

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v12}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setMobileDataIndicators(ZIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v1, :cond_7

    .line 1168
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxIconId:I

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v1, :cond_16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_f
    if-ne v2, v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxRoamingIconId:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    if-ne v1, v2, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxSimIconId:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    if-ne v1, v2, :cond_4

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxSignalIntervalTimestamp:J

    cmp-long v1, v16, v1

    if-lez v1, :cond_5

    .line 1183
    :cond_4
    const-string v2, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshSignalCluster: wimax: Signal="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v1, :cond_17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    :goto_11
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_19

    const-string v1, "/"

    :goto_12
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v1, :cond_1a

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Roaming="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_1b

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    :goto_14
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_1c

    const-string v1, "/"

    :goto_15
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mSimIconId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_1d

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    :goto_16
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_1e

    const-string v1, "/"

    :goto_17
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Accessibility="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionSim:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    const-wide/32 v1, 0x1d4c0

    add-long v1, v1, v16

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxSignalIntervalTimestamp:J

    .line 1224
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v1, :cond_1f

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_18
    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxIconId:I

    .line 1225
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxRoamingIconId:I

    .line 1226
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxSimIconId:I

    .line 1228
    :cond_5
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxDataTypeIconId:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    if-ne v1, v2, :cond_6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxActivityIconId:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    if-ne v1, v2, :cond_6

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxDataIntervalTimestamp:J

    cmp-long v1, v16, v1

    if-lez v1, :cond_7

    .line 1237
    :cond_6
    const-string v2, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshSignalCluster: wimax: mHasMobileDataFeature=true DataTypeShown="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_20

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    :goto_19
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_21

    const-string v1, "/"

    :goto_1a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Activity="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_22

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_23

    const-string v1, "/"

    :goto_1c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " in="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " out="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Accessibility="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    const-wide/32 v1, 0x1d4c0

    add-long v1, v1, v16

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxDataIntervalTimestamp:J

    .line 1256
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxDataTypeIconId:I

    .line 1257
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxActivityIconId:I

    .line 1404
    :cond_7
    :goto_1d
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setIsAirplaneMode(ZI)V

    goto/16 :goto_0

    .line 1031
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 1036
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIn:Z

    goto/16 :goto_2

    .line 1041
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityOut:Z

    goto/16 :goto_3

    .line 1047
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_c
    move v5, v1

    goto/16 :goto_5

    .line 1080
    :cond_d
    const-string v4, ""

    goto/16 :goto_6

    :cond_e
    const-string v4, ""

    goto/16 :goto_7

    :cond_f
    const-string v4, ""

    goto/16 :goto_8

    :cond_10
    const-string v4, ""

    goto/16 :goto_9

    .line 1108
    :cond_11
    const/4 v1, 0x0

    move v13, v1

    goto/16 :goto_a

    .line 1113
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    move v14, v1

    goto/16 :goto_b

    .line 1118
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    move v15, v1

    goto/16 :goto_c

    .line 1140
    :cond_14
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    goto/16 :goto_d

    :cond_15
    move v7, v13

    goto/16 :goto_e

    .line 1168
    :cond_16
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    goto/16 :goto_f

    .line 1183
    :cond_17
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    goto/16 :goto_10

    :cond_18
    const-string v1, ""

    goto/16 :goto_11

    :cond_19
    const-string v1, ""

    goto/16 :goto_12

    :cond_1a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    goto/16 :goto_13

    :cond_1b
    const-string v1, ""

    goto/16 :goto_14

    :cond_1c
    const-string v1, ""

    goto/16 :goto_15

    :cond_1d
    const-string v1, ""

    goto/16 :goto_16

    :cond_1e
    const-string v1, ""

    goto/16 :goto_17

    .line 1224
    :cond_1f
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    goto/16 :goto_18

    .line 1237
    :cond_20
    const-string v1, ""

    goto/16 :goto_19

    :cond_21
    const-string v1, ""

    goto/16 :goto_1a

    :cond_22
    const-string v1, ""

    goto/16 :goto_1b

    :cond_23
    const-string v1, ""

    goto/16 :goto_1c

    .line 1273
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPhoneRSSIForData:Z

    if-eqz v1, :cond_28

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_1e
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigDisableWideActivityStatusbarIcons:Z

    if-eqz v1, :cond_29

    const/4 v7, 0x0

    :goto_1f
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionSim:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    const-string v12, ""

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v12}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setMobileDataIndicators(ZIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v1, :cond_7

    .line 1301
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-nez v1, :cond_25

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileIconId:I

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v1, :cond_2a

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_20
    if-ne v2, v1, :cond_25

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileRoamingIconId:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    if-ne v1, v2, :cond_25

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileSimIconId:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    if-ne v1, v2, :cond_25

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileSignalIntervalTimestamp:J

    cmp-long v1, v16, v1

    if-lez v1, :cond_26

    .line 1316
    :cond_25
    const-string v2, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshSignalCluster: mobile: Signal="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_2c

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPhoneRSSIForData:Z

    if-eqz v1, :cond_2b

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_21
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    :goto_22
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_2d

    const-string v1, "/"

    :goto_23
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPhoneRSSIForData:Z

    if-eqz v1, :cond_2e

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_24
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Roaming="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_2f

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    :goto_25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_30

    const-string v1, "/"

    :goto_26
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mSimIconId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_31

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    :goto_27
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_32

    const-string v1, "/"

    :goto_28
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Accessibility="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionSim:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    const-wide/32 v1, 0x1d4c0

    add-long v1, v1, v16

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileSignalIntervalTimestamp:J

    .line 1359
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v1, :cond_33

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_29
    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileIconId:I

    .line 1365
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileRoamingIconId:I

    .line 1366
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileSimIconId:I

    .line 1368
    :cond_26
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-nez v1, :cond_27

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileDataTypeIconId:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    if-ne v1, v2, :cond_27

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileActivityIconId:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    if-ne v1, v2, :cond_27

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileDataIntervalTimestamp:J

    cmp-long v1, v16, v1

    if-lez v1, :cond_7

    .line 1377
    :cond_27
    const-string v2, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshSignalCluster: mobile: mHasMobileDataFeature="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " DataTypeShown="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_34

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_35

    const-string v1, "/"

    :goto_2b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Activity="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_36

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_37

    const-string v1, "/"

    :goto_2d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " in="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " out="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Accessibility="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    const-wide/32 v1, 0x1d4c0

    add-long v1, v1, v16

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileDataIntervalTimestamp:J

    .line 1397
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileDataTypeIconId:I

    .line 1398
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileActivityIconId:I

    goto/16 :goto_1d

    .line 1273
    :cond_28
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto/16 :goto_1e

    :cond_29
    move v7, v13

    goto/16 :goto_1f

    .line 1301
    :cond_2a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto/16 :goto_20

    .line 1316
    :cond_2b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto/16 :goto_21

    :cond_2c
    const-string v1, ""

    goto/16 :goto_22

    :cond_2d
    const-string v1, ""

    goto/16 :goto_23

    :cond_2e
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto/16 :goto_24

    :cond_2f
    const-string v1, ""

    goto/16 :goto_25

    :cond_30
    const-string v1, ""

    goto/16 :goto_26

    :cond_31
    const-string v1, ""

    goto/16 :goto_27

    :cond_32
    const-string v1, ""

    goto/16 :goto_28

    .line 1359
    :cond_33
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto/16 :goto_29

    .line 1377
    :cond_34
    const-string v1, ""

    goto/16 :goto_2a

    :cond_35
    const-string v1, ""

    goto/16 :goto_2b

    :cond_36
    const-string v1, ""

    goto/16 :goto_2c

    :cond_37
    const-string v1, ""

    goto/16 :goto_2d
.end method

.method refreshViews()V
    .locals 14

    .prologue
    const v12, 0x7f020093

    const v11, 0x7f0b008f

    const/16 v10, 0x8

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 7653
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    .line 7661
    const-string v1, ""

    .line 7662
    const-string v0, ""

    .line 7663
    const-string v0, ""

    .line 7666
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    .line 7668
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 7676
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionActual:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetConditionActual:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetConditionActual:I

    invoke-direct {p0, v0, v2, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->resolveInetCondition(III)V

    .line 7684
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateTelephonySignalStrength()V

    .line 7685
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateRoamingIcon()V

    .line 7686
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateSimIcon()V

    .line 7689
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 7690
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxIcons()V

    .line 7691
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataIcon()V

    .line 7692
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataActivityIcon()V

    .line 7695
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiIcons()V

    .line 7696
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiActivityIcon()V

    .line 7701
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-nez v0, :cond_0

    .line 7702
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    if-eqz v0, :cond_0

    .line 7703
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 7704
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 7705
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    .line 7706
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 7707
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSRoamingIconId:I

    .line 7709
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 7710
    const-string v0, "SBar.NetworkController"

    const-string v2, "refreshViews: signal/roaming icons disabled - narrow no-sim shown"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7717
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 7718
    const-string v0, "SBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshViews: mDataConnected="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7723
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-nez v0, :cond_14

    .line 7725
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 7726
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 7727
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    .line 7728
    const-string v0, ""

    move v2, v3

    .line 7840
    :goto_0
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v4, :cond_2

    .line 7841
    const-string v4, "SBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshViews: mWifiConnected="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7844
    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v4, :cond_1d

    .line 7856
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    if-nez v1, :cond_1c

    .line 7857
    const v1, 0x7f0b0090

    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 7872
    :cond_3
    :goto_1
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v4, :cond_7d

    .line 7873
    const-string v4, "SBar.NetworkController"

    const-string v5, "refreshViews: wifi active:"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7875
    const-string v4, "SBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshViews:   wifiLabel=\""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7877
    const-string v4, "SBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshViews:   mWifiActivityIconId="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7884
    const-string v4, "SBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshViews:   mQSWifiActivityIconId="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiActivityIconId:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiActivityIconId:I

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7891
    const-string v4, "SBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshViews:   mWifiIconId="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7900
    const-string v4, "SBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshViews:   combinedLabel=\""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v1

    .line 7934
    :goto_2
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v5, :cond_4

    .line 7935
    const-string v5, "SBar.NetworkController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews: mBluetoothTethered="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7938
    :cond_4
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    if-eqz v5, :cond_5

    .line 7939
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v4, 0x7f0b001a

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 7945
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 7946
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSRoamingIconId:I

    .line 7949
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v5, :cond_5

    .line 7950
    const-string v5, "SBar.NetworkController"

    const-string v8, "refreshViews: bluetooth tethering active:"

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7952
    const-string v5, "SBar.NetworkController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews:   mBluetoothTetherIconId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherIconId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherIconId:I

    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7962
    const-string v5, "SBar.NetworkController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews:   combinedLabel=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7967
    :cond_5
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v5, :cond_6

    .line 7968
    const-string v5, "SBar.NetworkController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews: mAirplaneMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7969
    const-string v5, "SBar.NetworkController"

    const-string v8, "refreshViews: or no service:"

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7970
    const-string v5, "SBar.NetworkController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews:   mServiceState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "==null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7971
    const-string v5, "SBar.NetworkController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews:   || ( hasService()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "==false && "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7972
    const-string v8, "SBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews:   mServiceState.isEmergencyOnly()="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :goto_3
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "==false )"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7976
    :cond_6
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    const/16 v8, 0x9

    if-ne v5, v8, :cond_21

    move v5, v6

    .line 7978
    :goto_4
    if-eqz v5, :cond_7

    .line 7981
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 7984
    :cond_7
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eqz v8, :cond_25

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v8, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v8

    if-nez v8, :cond_25

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v8

    if-nez v8, :cond_25

    .line 8000
    :cond_8
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v8, 0x7f0b0072

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 8006
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v5, :cond_22

    .line 8007
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    packed-switch v5, :pswitch_data_0

    .line 8009
    const v5, 0x7f0202e5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    .line 8033
    :goto_5
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 8034
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 8036
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    .line 8039
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 8041
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    .line 8042
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 8044
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    .line 8045
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSSimIconId:I

    .line 8048
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    .line 8049
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 8050
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    .line 8052
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    .line 8055
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v5, :cond_23

    .line 8057
    const-string v0, ""

    .line 8070
    :goto_6
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v5, :cond_2a

    .line 8071
    const-string v5, "SBar.NetworkController"

    const-string v7, "refreshViews: airplane mode or no service:"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8073
    const-string v5, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshViews:   mPhoneSignalIconId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8078
    const-string v5, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshViews:   mDataSignalIconId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8083
    const-string v5, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshViews:   mAirplaneIconId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8086
    const-string v5, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshViews:   mDataTypeIconId(NetworkType)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8090
    const-string v5, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshViews:   mDataTypeIconIdShown(NetworkType)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8093
    const-string v5, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshViews:   wifiLabel=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v2

    move-object v2, v1

    move-object v1, v0

    .line 8247
    :goto_7
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 8248
    const-string v0, "SBar.NetworkController"

    const-string v7, "refreshViews: PRE Expostfacto adjustment to networkType icon"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8249
    const-string v0, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshViews:   mDataTypeIconId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mDataActivityIconId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mMobileInetConditionSB="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8256
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 8257
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_a

    .line 8258
    const-string v0, "SBar.NetworkController"

    const-string v7, "Data is enabled"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8260
    :cond_a
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v0, :cond_3a

    .line 8261
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 8262
    const-string v0, "SBar.NetworkController"

    const-string v7, "Data is enabled, wifi is active"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8264
    :cond_b
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigShowBothWifiAndMobileNetwork:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigAlwaysShowAttachedNetworkType:Z

    if-eqz v0, :cond_35

    .line 8269
    :cond_c
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_d

    .line 8270
    const-string v0, "SBar.NetworkController"

    const-string v7, "Data is enabled, wifi is active, show both is true: show \"suspended-for-wifi icon\""

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8275
    :cond_d
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_2f

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    :goto_8
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    .line 8281
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    .line 8282
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 8283
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    .line 8287
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_30

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeSuspendedIconId:I

    :goto_9
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 8292
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    .line 8297
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    const/4 v7, -0x1

    if-ne v0, v7, :cond_e

    .line 8303
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    .line 8304
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 8308
    :cond_e
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigAllowDifferentiatedInetCondition:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_f

    .line 8314
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    .line 8315
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_33

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigDisableColoredWideStatusbarIcons:Z

    if-eqz v0, :cond_32

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigWideIconsAreBlue:Z

    if-eqz v0, :cond_31

    move v0, v3

    :goto_a
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    .line 8617
    :cond_f
    :goto_b
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_10

    .line 8618
    const-string v0, "SBar.NetworkController"

    const-string v6, "refreshViews: POST Expostfacto adjustment to networkType icon"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8619
    const-string v0, "SBar.NetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refreshViews:   mDataTypeIconIdShown="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mDataActivityIconId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mMobileInetConditionSB="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8629
    :cond_10
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    if-nez v0, :cond_11

    .line 8630
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    .line 8631
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 8632
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    .line 8636
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    .line 8639
    :cond_11
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_12

    .line 8640
    const-string v0, "SBar.NetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refreshViews:   adjusted mDataActivityIconId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8646
    :cond_12
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_13

    .line 8649
    const-string v6, "SBar.NetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refreshViews: SUMMARY:\n connected to={"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v0, :cond_5c

    const-string v0, " wifi"

    :goto_c
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    if-eqz v0, :cond_5d

    const-string v0, " data"

    :goto_d
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " }\n level="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_5e

    const-string v0, "null"

    :goto_e
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n  mobileLabel="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " wifiLabel="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " combinedLabel="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n  mAirplaneMode="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " isEmergencyOnly()="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " mDataActivity="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " mPhoneSignalIconId=0x"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " mRoamingIconId=0x"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n mQSPhoneSignalIconId=0x"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSPhoneSignalIconId:I

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " mQSRoamingIconId=0x"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSRoamingIconId:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSRoamingIconId:I

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n  mDataSignalIconId=0x"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n  mSimIconId=0x"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n  mDataTypeIconId(NetworkType)=0x"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n  mDataTypeIconIdShown(NetworkType)=0x"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " mDataActivityIconId=0x"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n  mQSDataTypeIconId=0x"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " mQSDataActivityIconId=0x"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n  mWimaxIconId=0x"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n  mWifiIconId=0x"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n  mQSWifiIconId=0x"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n  mWifiActivityIconId=0x"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n  mQSWifiActivityIconId=0x"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiActivityIconId:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiActivityIconId:I

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n  mBluetoothTetherIconId=0x"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherIconId:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherIconId:I

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8714
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .line 8715
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    goto :goto_f

    .line 7739
    :cond_14
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    if-eqz v0, :cond_15

    .line 7740
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 7763
    :goto_10
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    if-eqz v2, :cond_1a

    .line 7772
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 7773
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSRoamingIconId:I

    .line 7776
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v2, :cond_7e

    .line 7777
    const-string v2, "SBar.NetworkController"

    const-string v4, "refreshViews: mobile active:"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7779
    const-string v2, "SBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshViews:   combinedLabel=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7781
    const-string v2, "SBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshViews:   mDataActivityIconId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7790
    const-string v2, "SBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshViews:   mDataSignalIconId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7800
    const-string v2, "SBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshViews:   roamingIconId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    move-object v1, v0

    goto/16 :goto_0

    .line 7741
    :cond_15
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 7742
    :cond_16
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 7747
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto/16 :goto_10

    .line 7750
    :cond_18
    const-string v0, ""

    goto/16 :goto_10

    .line 7757
    :cond_19
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto/16 :goto_10

    .line 7815
    :cond_1a
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v2, :cond_1b

    .line 7818
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    .line 7819
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 7820
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    .line 7821
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    move v2, v3

    goto/16 :goto_0

    .line 7828
    :cond_1b
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    .line 7829
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 7830
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    .line 7831
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    .line 7835
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 7836
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSRoamingIconId:I

    goto/16 :goto_0

    .line 7860
    :cond_1c
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    .line 7861
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v4, :cond_3

    .line 7862
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "xxxxXXXXxxxxXXXX"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 7906
    :cond_1d
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-eqz v4, :cond_1f

    .line 7907
    const-string v4, ""

    .line 7914
    :goto_11
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 7915
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiActivityIconId:I

    .line 7916
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIn:Z

    .line 7917
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityOut:Z

    .line 7919
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v5, :cond_1e

    .line 7920
    const-string v5, "SBar.NetworkController"

    const-string v8, "refreshViews: wifi disabled:"

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7922
    const-string v5, "SBar.NetworkController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews:   wifiLabel=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7924
    const-string v5, "SBar.NetworkController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews:   mWifiActivityIconId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7927
    const-string v5, "SBar.NetworkController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews:   mQSWifiActivityIconId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiActivityIconId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiActivityIconId:I

    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    move-object v13, v4

    move-object v4, v1

    move-object v1, v13

    goto/16 :goto_2

    .line 7909
    :cond_1f
    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_11

    .line 7972
    :cond_20
    const-string v5, "null"

    goto/16 :goto_3

    :cond_21
    move v5, v3

    .line 7976
    goto/16 :goto_4

    .line 8012
    :pswitch_0
    const v5, 0x7f0202c0

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    goto/16 :goto_5

    .line 8015
    :pswitch_1
    const v5, 0x7f0202e0

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    goto/16 :goto_5

    .line 8019
    :cond_22
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    packed-switch v5, :pswitch_data_1

    .line 8021
    const v5, 0x7f02009f

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    goto/16 :goto_5

    .line 8024
    :pswitch_2
    const v5, 0x7f0202bf

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    goto/16 :goto_5

    .line 8027
    :pswitch_3
    const v5, 0x7f0202df

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    goto/16 :goto_5

    .line 8059
    :cond_23
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-eqz v1, :cond_24

    .line 8061
    const-string v1, ""

    goto/16 :goto_6

    .line 8063
    :cond_24
    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 8065
    goto/16 :goto_6

    .line 8100
    :cond_25
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    if-nez v8, :cond_2a

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v8, :cond_2a

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    if-nez v8, :cond_2a

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-nez v8, :cond_2a

    if-nez v5, :cond_2a

    .line 8107
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v4, :cond_26

    .line 8108
    const-string v4, "SBar.NetworkController"

    const-string v5, "refreshViews: pretty much totally disconnected:"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8109
    const-string v4, "SBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshViews:   mDataConnected="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8110
    const-string v4, "SBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshViews:   mWifiConnected="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8111
    const-string v4, "SBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshViews:   mBluetoothTethered="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8112
    const-string v4, "SBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshViews:   mWimaxConnected="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8115
    :cond_26
    invoke-virtual {v7, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 8141
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 8142
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 8144
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    .line 8147
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 8149
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    .line 8150
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 8151
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    .line 8154
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    .line 8156
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v5, :cond_2d

    .line 8158
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIndicationDisabled:Z

    if-nez v2, :cond_2c

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingNoDataIndicationDisabled:Z

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 8166
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v2, :cond_2b

    .line 8167
    const v2, 0x7f0201ee

    .line 8175
    :goto_12
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-nez v5, :cond_28

    .line 8176
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    if-eqz v5, :cond_28

    .line 8180
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v2, :cond_27

    .line 8181
    const-string v2, "SBar.NetworkController"

    const-string v5, "refreshViews: roaming icons disabled - narrow no-sim shown"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    move v2, v3

    .line 8188
    :cond_28
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v5, :cond_29

    .line 8189
    const-string v5, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshViews: roamingIconId=R.drawable.zz_moto_stat_sys_data_connected_roam = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (#A)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8222
    :cond_29
    :goto_13
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v5, :cond_2a

    .line 8223
    const-string v5, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshViews:   mPhoneSignalIconId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8229
    const-string v5, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshViews:   combinedLabel=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8231
    const-string v5, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshViews:   roamingIconId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8234
    const-string v5, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshViews:   mDataTypeIconId(NetworkType)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8238
    const-string v5, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshViews:   mDataTypeIconIdShown(NetworkType)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    move v5, v2

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_7

    .line 8170
    :cond_2b
    const v2, 0x7f0201ec

    .line 8171
    goto/16 :goto_12

    .line 8199
    :cond_2c
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 8200
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSRoamingIconId:I

    .line 8202
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v5, :cond_29

    .line 8203
    const-string v5, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshViews: roamingIconId var = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (#B)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 8211
    :cond_2d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 8212
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaEri()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 8213
    iput v12, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 8214
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_R:[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v5, v5, v7

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    goto/16 :goto_13

    .line 8216
    :cond_2e
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 8217
    iput v12, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 8218
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->QS_DATA_R:[I

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget v5, v5, v7

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    goto/16 :goto_13

    :cond_2f
    move v0, v3

    .line 8275
    goto/16 :goto_8

    :cond_30
    move v0, v3

    .line 8287
    goto/16 :goto_9

    :cond_31
    move v0, v6

    .line 8315
    goto/16 :goto_a

    :cond_32
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    goto/16 :goto_a

    :cond_33
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableColoredNarrowStatusbarIcons:Z

    if-eqz v0, :cond_34

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    goto/16 :goto_a

    :cond_34
    move v0, v6

    goto/16 :goto_a

    .line 8334
    :cond_35
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_36

    .line 8335
    const-string v0, "SBar.NetworkController"

    const-string v7, "Data is enabled, wifi is active, show both is false: show \"no icon\""

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8340
    :cond_36
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    .line 8341
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    .line 8342
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 8343
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    .line 8347
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 8348
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    .line 8351
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigAllowDifferentiatedInetCondition:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_f

    .line 8357
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    .line 8358
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_39

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigDisableColoredWideStatusbarIcons:Z

    if-eqz v0, :cond_38

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigWideIconsAreBlue:Z

    if-eqz v0, :cond_37

    move v6, v3

    :cond_37
    :goto_14
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    goto/16 :goto_b

    :cond_38
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    goto :goto_14

    :cond_39
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableColoredNarrowStatusbarIcons:Z

    if-eqz v0, :cond_37

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    goto :goto_14

    .line 8378
    :cond_3a
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_3b

    .line 8379
    const-string v0, "SBar.NetworkController"

    const-string v7, "Data is enabled, Wifi is inactive: check for attached mode"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8381
    :cond_3b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v0

    if-nez v0, :cond_49

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isLte()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    const/4 v7, 0x2

    if-eq v0, v7, :cond_49

    .line 8394
    :cond_3c
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_3d

    .line 8395
    const-string v0, "SBar.NetworkController"

    const-string v7, "is GSM"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8397
    :cond_3d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isConnectingOrAttachedMobileDataTypeIconShown()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 8398
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_3e

    .line 8399
    const-string v0, "SBar.NetworkController"

    const-string v7, "Data is enabled, wifi is inactive, is GSM, attached icon enabled: show \"attached icon\""

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8404
    :cond_3e
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_40

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    :goto_15
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    .line 8410
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    .line 8411
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 8412
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    .line 8416
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_41

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeAttachedIconId:I

    :goto_16
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 8421
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    .line 8424
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigAllowDifferentiatedInetCondition:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_f

    .line 8430
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    .line 8431
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigDisableColoredWideStatusbarIcons:Z

    if-eqz v0, :cond_42

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigWideIconsAreBlue:Z

    if-eqz v0, :cond_3f

    move v6, v3

    :cond_3f
    :goto_17
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    goto/16 :goto_b

    :cond_40
    move v0, v3

    .line 8404
    goto :goto_15

    :cond_41
    move v0, v3

    .line 8416
    goto :goto_16

    .line 8431
    :cond_42
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    goto :goto_17

    :cond_43
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableColoredNarrowStatusbarIcons:Z

    if-eqz v0, :cond_3f

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    goto :goto_17

    .line 8450
    :cond_44
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_45

    .line 8451
    const-string v0, "SBar.NetworkController"

    const-string v7, "Show normal data and activity icons"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8453
    :cond_45
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    .line 8454
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    .line 8455
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    .line 8456
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_48

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigDisableColoredWideStatusbarIcons:Z

    if-eqz v0, :cond_47

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigWideIconsAreBlue:Z

    if-eqz v0, :cond_46

    move v6, v3

    :cond_46
    :goto_18
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    goto/16 :goto_b

    :cond_47
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    goto :goto_18

    :cond_48
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableColoredNarrowStatusbarIcons:Z

    if-eqz v0, :cond_46

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    goto :goto_18

    .line 8481
    :cond_49
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_4a

    .line 8482
    const-string v0, "SBar.NetworkController"

    const-string v7, "is CDMA"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8484
    :cond_4a
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_4b

    .line 8485
    const-string v0, "SBar.NetworkController"

    const-string v7, "Show normal data and activity icons"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8487
    :cond_4b
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    .line 8488
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    .line 8489
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    .line 8490
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_4e

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigDisableColoredWideStatusbarIcons:Z

    if-eqz v0, :cond_4d

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigWideIconsAreBlue:Z

    if-eqz v0, :cond_4c

    move v6, v3

    :cond_4c
    :goto_19
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    goto/16 :goto_b

    :cond_4d
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    goto :goto_19

    :cond_4e
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableColoredNarrowStatusbarIcons:Z

    if-eqz v0, :cond_4c

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    goto :goto_19

    .line 8516
    :cond_4f
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isDisabledMobileDataTypeIconShown()Z

    move-result v0

    if-nez v0, :cond_50

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigAlwaysShowAttachedNetworkType:Z

    if-eqz v0, :cond_57

    .line 8521
    :cond_50
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_51

    .line 8522
    const-string v0, "SBar.NetworkController"

    const-string v7, "Data is disabled, show \"disabled icon\""

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8524
    :cond_51
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_53

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    :goto_1a
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    .line 8530
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    .line 8531
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 8532
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    .line 8533
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v7, 0x7f0b004b

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 8538
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_54

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    :goto_1b
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 8543
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    .line 8546
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigAllowDifferentiatedInetCondition:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_f

    .line 8552
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    .line 8553
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_56

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigDisableColoredWideStatusbarIcons:Z

    if-eqz v0, :cond_55

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigWideIconsAreBlue:Z

    if-eqz v0, :cond_52

    move v6, v3

    :cond_52
    :goto_1c
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    goto/16 :goto_b

    :cond_53
    move v0, v3

    .line 8524
    goto :goto_1a

    :cond_54
    move v0, v3

    .line 8538
    goto :goto_1b

    .line 8553
    :cond_55
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    goto :goto_1c

    :cond_56
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableColoredNarrowStatusbarIcons:Z

    if-eqz v0, :cond_52

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    goto :goto_1c

    .line 8572
    :cond_57
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_58

    .line 8573
    const-string v0, "SBar.NetworkController"

    const-string v7, "Data is disabled, show \"no icon\""

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8575
    :cond_58
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    .line 8577
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    .line 8578
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIn:Z

    .line 8579
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityOut:Z

    .line 8580
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v7, 0x7f0b004b

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 8585
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataTypeIconId:I

    .line 8586
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSDataActivityIconId:I

    .line 8589
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigAllowDifferentiatedInetCondition:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_f

    .line 8595
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    .line 8596
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_5b

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigDisableColoredWideStatusbarIcons:Z

    if-eqz v0, :cond_5a

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigWideIconsAreBlue:Z

    if-eqz v0, :cond_59

    move v6, v3

    :cond_59
    :goto_1d
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionSB:I

    goto/16 :goto_b

    :cond_5a
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    goto :goto_1d

    :cond_5b
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableColoredNarrowStatusbarIcons:Z

    if-eqz v0, :cond_59

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    goto :goto_1d

    .line 8649
    :cond_5c
    const-string v0, ""

    goto/16 :goto_c

    :cond_5d
    const-string v0, ""

    goto/16 :goto_d

    :cond_5e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 8718
    :cond_5f
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    if-ne v0, v6, :cond_60

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiActivityIconId:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    if-ne v0, v6, :cond_60

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastRoamingIconId:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    if-ne v0, v6, :cond_60

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    if-ne v0, v6, :cond_60

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    if-ne v0, v6, :cond_60

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    if-ne v0, v6, :cond_60

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataActivityIconId:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    if-ne v0, v6, :cond_60

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-ne v0, v6, :cond_60

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSimIconId:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    if-ne v0, v6, :cond_60

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastMobileLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastLocale:Ljava/util/Locale;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLocale:Ljava/util/Locale;

    if-eq v0, v6, :cond_61

    .line 8742
    :cond_60
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .line 8743
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    goto :goto_1e

    .line 8747
    :cond_61
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eq v0, v6, :cond_62

    .line 8748
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    .line 8751
    :cond_62
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastLocale:Ljava/util/Locale;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLocale:Ljava/util/Locale;

    if-eq v0, v6, :cond_63

    .line 8752
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLocale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastLocale:Ljava/util/Locale;

    .line 8756
    :cond_63
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    if-eq v0, v6, :cond_64

    .line 8757
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    .line 8766
    :cond_64
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSimIconId:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    if-eq v0, v6, :cond_66

    .line 8767
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_65

    .line 8768
    const-string v0, "SBar.NetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changing Sim icon id to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8772
    :cond_65
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSimIconId:I

    .line 8777
    :cond_66
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    if-eq v0, v6, :cond_67

    .line 8778
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    .line 8782
    :cond_67
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    if-eq v0, v6, :cond_68

    .line 8783
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    .line 8793
    :cond_68
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    if-eq v0, v6, :cond_69

    .line 8794
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    .line 8796
    :cond_69
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataActivityIconId:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    if-eq v0, v6, :cond_6a

    .line 8797
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivityIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataActivityIconId:I

    .line 8804
    :cond_6a
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiActivityIconId:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    if-eq v0, v6, :cond_6c

    .line 8805
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_6b

    .line 8806
    const-string v0, "SBar.NetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changing data overlay icon id to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8810
    :cond_6b
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiActivityIconId:I

    .line 8816
    :cond_6c
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastRoamingIconId:I

    if-eq v0, v5, :cond_6e

    .line 8817
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_6d

    .line 8818
    const-string v0, "SBar.NetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changing roaming icon id to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8822
    :cond_6d
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastRoamingIconId:I

    .line 8827
    :cond_6e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    .line 8828
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    .line 8829
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v3

    .line 8830
    :goto_1f
    if-ge v5, v6, :cond_70

    .line 8831
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 8832
    if-eqz v0, :cond_6f

    .line 8833
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8830
    :cond_6f
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1f

    .line 8839
    :cond_70
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v3

    .line 8840
    :goto_20
    if-ge v4, v5, :cond_73

    .line 8841
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 8842
    if-eqz v0, :cond_71

    .line 8843
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8844
    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_72

    .line 8845
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8840
    :cond_71
    :goto_21
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_20

    .line 8847
    :cond_72
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_21

    .line 8853
    :cond_73
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    .line 8854
    :goto_22
    if-ge v2, v4, :cond_75

    .line 8855
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 8856
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8857
    if-eqz v0, :cond_74

    .line 8858
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8854
    :cond_74
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_22

    .line 8871
    :cond_75
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelShortFormViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    .line 8872
    :goto_23
    if-ge v2, v4, :cond_78

    .line 8873
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelShortFormViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 8874
    if-eqz v0, :cond_76

    .line 8875
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameShortForm:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8876
    const-string v5, ""

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameShortForm:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_77

    .line 8877
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8872
    :cond_76
    :goto_24
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_23

    .line 8879
    :cond_77
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_24

    .line 8888
    :cond_78
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastMobileLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    .line 8889
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastMobileLabel:Ljava/lang/String;

    .line 8894
    :cond_79
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmergencyLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    .line 8895
    :goto_25
    if-ge v2, v4, :cond_7c

    .line 8896
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmergencyLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 8897
    if-eqz v0, :cond_7a

    .line 8898
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v5

    if-nez v5, :cond_7b

    .line 8899
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8895
    :cond_7a
    :goto_26
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_25

    .line 8901
    :cond_7b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8902
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_26

    .line 8906
    :cond_7c
    return-void

    :cond_7d
    move-object v4, v1

    goto/16 :goto_2

    :cond_7e
    move v2, v1

    move-object v1, v0

    goto/16 :goto_0

    .line 8007
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 8019
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected registerPhoneStateListener(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 984
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    .line 985
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x1e1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 993
    return-void
.end method

.method protected updateAirplaneMode()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2299
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 2301
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eq v1, v0, :cond_0

    .line 2302
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    .line 2303
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAirplaneMode: AirplaneMode changed: mAirplaneMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 2299
    goto :goto_0
.end method

.method protected updateConnectivity(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7492
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 7493
    const-string v0, "SBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateConnectivity: intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7496
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 7498
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 7501
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    .line 7502
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    if-eqz v0, :cond_6

    .line 7503
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    .line 7504
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 7510
    :goto_1
    const-string v0, "inetCondition"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 7512
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v4, :cond_1

    .line 7513
    const-string v4, "SBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateConnectivity: networkInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7514
    const-string v4, "SBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateConnectivity: connectionStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7516
    :cond_1
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 7517
    const-string v4, "SBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateConnectivity: Before modification: mMobileInetConditionActual= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionActual:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mWifiInetConditionActual= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetConditionActual:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mWimaxInetConditionActual= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetConditionActual:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7529
    :cond_2
    const/16 v4, 0x32

    if-le v0, v4, :cond_7

    .line 7531
    :goto_2
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_3

    .line 7533
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    invoke-direct {p0, v0, v4, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->signalIconLog(Ljava/lang/String;II)V

    .line 7540
    :cond_3
    const-string v0, "SBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateConnectivity: NetworkInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", inetCondition= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7548
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    packed-switch v0, :pswitch_data_0

    .line 7600
    :goto_3
    :pswitch_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 7601
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateConnectivity:  mMobileInetConditionActual= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionActual:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " mWifiInetConditionActual= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetConditionActual:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " mWimaxInetConditionActual= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetConditionActual:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7616
    :cond_4
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_f

    .line 7621
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    .line 7646
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 7647
    return-void

    :cond_5
    move v0, v2

    .line 7501
    goto/16 :goto_0

    .line 7506
    :cond_6
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    .line 7507
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    move v1, v2

    .line 7529
    goto/16 :goto_2

    .line 7550
    :pswitch_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 7551
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_8

    .line 7552
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionActual:I

    if-eq v0, v1, :cond_8

    .line 7553
    const-string v0, "SBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateConnectivity:  Change mMobileInetCondition= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7558
    :cond_8
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionActual:I

    goto :goto_3

    .line 7560
    :cond_9
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionActual:I

    goto/16 :goto_3

    .line 7564
    :pswitch_2
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7565
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_a

    .line 7566
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetConditionActual:I

    if-eq v0, v1, :cond_a

    .line 7567
    const-string v0, "SBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateConnectivity:  Change mWifiInetConditionActual= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7572
    :cond_a
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetConditionActual:I

    goto/16 :goto_3

    .line 7574
    :cond_b
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetConditionActual:I

    goto/16 :goto_3

    .line 7578
    :pswitch_3
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 7579
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_c

    .line 7580
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetConditionActual:I

    if-eq v0, v1, :cond_c

    .line 7581
    const-string v0, "SBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateConnectivity:  Change mWimaxInetConditionActual= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7586
    :cond_c
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetConditionActual:I

    goto/16 :goto_3

    .line 7588
    :cond_d
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetConditionActual:I

    goto/16 :goto_3

    .line 7592
    :pswitch_4
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_e

    .line 7593
    const-string v0, "SBar.NetworkController"

    const-string v1, "there is no connection, reset iNetConditionActual"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7595
    :cond_e
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetConditionActual:I

    .line 7596
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetConditionActual:I

    .line 7597
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetConditionActual:I

    goto/16 :goto_3

    .line 7623
    :cond_f
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    goto/16 :goto_4

    .line 7548
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const v9, 0x1040326

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 6925
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 6926
    const-string v0, "SBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateNetworkName: showSpn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " spn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " showPlmn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " plmn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6939
    :cond_0
    if-eqz p3, :cond_8

    if-eqz p4, :cond_8

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    move v6, v3

    .line 6950
    :goto_0
    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    move v5, v3

    .line 6966
    :goto_1
    if-eqz p4, :cond_17

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 6972
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameShortForm:Ljava/lang/String;

    move-object v0, v2

    .line 6975
    :goto_2
    if-eqz p4, :cond_16

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 6986
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameShortForm:Ljava/lang/String;

    .line 6989
    :goto_3
    if-eqz p2, :cond_15

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameShortFormAbbreviationsTable:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_15

    move v0, v1

    .line 6996
    :goto_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameShortFormAbbreviationsTable:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_15

    .line 6999
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameShortFormAbbreviationsTable:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 7004
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameShortFormAbbreviationsTable:[Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v4, v0

    move-object v4, v0

    .line 7010
    :goto_5
    if-eqz v2, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameShortFormAbbreviationsTable:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_14

    move v0, v1

    .line 7017
    :goto_6
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameShortFormAbbreviationsTable:[Ljava/lang/String;

    array-length v7, v7

    if-ge v0, v7, :cond_14

    .line 7020
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameShortFormAbbreviationsTable:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 7025
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameShortFormAbbreviationsTable:[Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v2, v0

    .line 7031
    :goto_7
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 7032
    const-string v2, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateNetworkName:   mConfigNetworkNameShortFormSupported is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigNetworkNameShortFormSupported:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7038
    const-string v2, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateNetworkName:   mConfigNetworkNameSpnHasPriority is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigNetworkNameSpnHasPriority:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7042
    const-string v2, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateNetworkName:   mConfigShowNoServiceText is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigShowNoServiceText:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7046
    const-string v2, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateNetworkName:   updateNetworkName after fixups: showSpn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " spn=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " short_spn=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" \n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "showPlmn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " plmn=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " short_plmn=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7059
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigNetworkNameShortFormSupported:Z

    if-eqz v2, :cond_c

    .line 7060
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigNetworkNameSpnHasPriority:Z

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-nez v2, :cond_13

    if-eqz v5, :cond_13

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    if-eqz v4, :cond_13

    .line 7080
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameShortForm:Ljava/lang/String;

    move v2, v3

    .line 7084
    :goto_8
    if-nez v2, :cond_12

    if-eqz v6, :cond_12

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    if-eqz v0, :cond_12

    .line 7098
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameShortForm:Ljava/lang/String;

    move v0, v3

    .line 7101
    :goto_9
    if-nez v0, :cond_2

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    .line 7108
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameShortForm:Ljava/lang/String;

    move v0, v3

    .line 7112
    :cond_2
    if-nez v0, :cond_3

    .line 7113
    const-string v2, ""

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameShortForm:Ljava/lang/String;

    .line 7120
    :cond_3
    :goto_a
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 7121
    const-string v2, "SBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateNetworkName:   isShortFormDone is "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7122
    const-string v0, "SBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNetworkName: set mNetworkNameShortForm="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameShortForm:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7134
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 7137
    if-eqz v6, :cond_11

    if-eqz p4, :cond_11

    .line 7142
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    .line 7146
    :goto_b
    if-eqz v5, :cond_6

    if-eqz p2, :cond_6

    .line 7151
    if-eqz v0, :cond_d

    .line 7152
    if-eqz p4, :cond_5

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 7165
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7166
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_c
    move v0, v3

    .line 7176
    :cond_6
    if-eqz v0, :cond_e

    .line 7177
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 7200
    :goto_d
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 7201
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNetworkName: set mNetworkName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7206
    :cond_7
    return-void

    :cond_8
    move v6, v1

    .line 6939
    goto/16 :goto_0

    :cond_9
    move v5, v1

    .line 6950
    goto/16 :goto_1

    .line 6997
    :cond_a
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_4

    .line 7018
    :cond_b
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_6

    .line 7117
    :cond_c
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameShortForm:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_a

    .line 7171
    :cond_d
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 7181
    :cond_e
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 7182
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNetworkName: mConfigShowNoServiceText is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigShowNoServiceText:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7187
    :cond_f
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigShowNoServiceText:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_10

    .line 7194
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_d

    .line 7196
    :cond_10
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_d

    :cond_11
    move v0, v1

    goto/16 :goto_b

    :cond_12
    move v0, v2

    goto/16 :goto_9

    :cond_13
    move v2, v1

    goto/16 :goto_8

    :cond_14
    move-object v0, v2

    goto/16 :goto_7

    :cond_15
    move-object v4, p2

    goto/16 :goto_5

    :cond_16
    move-object v2, v0

    goto/16 :goto_3

    :cond_17
    move-object v0, p4

    goto/16 :goto_2
.end method

.method protected updateSimState(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 2108
    const-string v0, "ss"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2109
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2110
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 2141
    :goto_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_0

    .line 2142
    const-string v1, "SBar.NetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSimState: mSimState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_8

    const-string v0, "IccCardConstants.State.ABSENT"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 2166
    return-void

    .line 2112
    :cond_1
    const-string v1, "CARD_IO_ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2113
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 2115
    :cond_2
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "IMSI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "LOADED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2123
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 2125
    :cond_4
    const-string v1, "LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2126
    const-string v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2128
    const-string v1, "PIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2129
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 2131
    :cond_5
    const-string v1, "PUK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2132
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto/16 :goto_0

    .line 2135
    :cond_6
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto/16 :goto_0

    .line 2138
    :cond_7
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto/16 :goto_0

    .line 2142
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_9

    const-string v0, "IccCardConstants.State.READY"

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_a

    const-string v0, "IccCardConstants.State.PIN_REQUIRED"

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_b

    const-string v0, "IccCardConstants.State.PUK_REQUIRED"

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_c

    const-string v0, "IccCardConstants.State.NETWORK_LOCKED"

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_d

    const-string v0, "IccCardConstants.State.CARD_IO_ERROR"

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v3, :cond_e

    const-string v0, "IccCardConstants.State.UNKNOWN"

    goto/16 :goto_1

    :cond_e
    const-string v0, "-unknown-"

    goto/16 :goto_1
.end method

.method protected updateWifiActivityIcon()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7346
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v0, :cond_7

    .line 7347
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 7348
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 7349
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiActivityIconId:I

    .line 7350
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIn:Z

    .line 7351
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityOut:Z

    .line 7411
    :goto_0
    return-void

    .line 7353
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7398
    :pswitch_0
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 7399
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiActivityIconId:I

    .line 7400
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIn:Z

    .line 7401
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityOut:Z

    goto :goto_0

    .line 7356
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0202ec

    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 7361
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_2

    const v0, 0x7f02018e

    :goto_2
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiActivityIconId:I

    .line 7366
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIn:Z

    .line 7367
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityOut:Z

    goto :goto_0

    .line 7356
    :cond_1
    const v0, 0x7f0202eb

    goto :goto_1

    :cond_2
    move v0, v1

    .line 7361
    goto :goto_2

    .line 7370
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0202f0

    :goto_3
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 7375
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_4

    const v0, 0x7f020194

    :goto_4
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiActivityIconId:I

    .line 7380
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIn:Z

    .line 7381
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityOut:Z

    goto :goto_0

    .line 7370
    :cond_3
    const v0, 0x7f0202ef

    goto :goto_3

    :cond_4
    move v0, v1

    .line 7375
    goto :goto_4

    .line 7384
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_6

    const v0, 0x7f0202ee

    :goto_5
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 7389
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_5

    const v1, 0x7f020190

    :cond_5
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiActivityIconId:I

    .line 7394
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIn:Z

    .line 7395
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityOut:Z

    goto :goto_0

    .line 7384
    :cond_6
    const v0, 0x7f0202ed

    goto :goto_5

    .line 7406
    :cond_7
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 7407
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiActivityIconId:I

    .line 7408
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIn:Z

    .line 7409
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityOut:Z

    goto :goto_0

    .line 7353
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected updateWifiIcons()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 7278
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v0, :cond_1

    .line 7279
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_0

    .line 7280
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_WIDE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetConditionSB:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 7282
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH_WIDE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    .line 7291
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    .line 7324
    :goto_1
    return-void

    .line 7285
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetConditionSB:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 7287
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    goto :goto_0

    .line 7294
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataAndWifiStacked:Z

    if-eqz v0, :cond_2

    .line 7295
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 7297
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    .line 7322
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0051

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_1

    .line 7300
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigEnableWideIcons:Z

    if-eqz v0, :cond_5

    .line 7301
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v0, :cond_4

    const v0, 0x7f020301

    :goto_3
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 7306
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v0, :cond_3

    const v1, 0x7f020191

    :cond_3
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    goto :goto_2

    :cond_4
    move v0, v1

    .line 7301
    goto :goto_3

    .line 7311
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v0, :cond_7

    const v0, 0x7f0200a8

    :goto_4
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 7316
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v0, :cond_6

    const v1, 0x7f020063

    :cond_6
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mQSWifiIconId:I

    goto :goto_2

    :cond_7
    move v0, v1

    .line 7311
    goto :goto_4
.end method

.method protected updateWifiState(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/16 v4, -0xc8

    const/4 v2, 0x0

    .line 7236
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 7237
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7238
    const-string v0, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    .line 7274
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiIcons()V

    .line 7275
    return-void

    :cond_1
    move v0, v2

    .line 7238
    goto :goto_0

    .line 7241
    :cond_2
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 7242
    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 7244
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    .line 7245
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    .line 7247
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v0, :cond_7

    if-nez v3, :cond_7

    .line 7249
    const-string v0, "wifiInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    .line 7250
    if-nez v0, :cond_3

    .line 7251
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 7253
    :cond_3
    if-eqz v0, :cond_6

    .line 7254
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    .line 7264
    :cond_4
    :goto_3
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    .line 7265
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiRssi:I

    goto :goto_1

    :cond_5
    move v1, v2

    .line 7245
    goto :goto_2

    .line 7256
    :cond_6
    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    goto :goto_3

    .line 7258
    :cond_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v0, :cond_4

    .line 7259
    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    goto :goto_3

    .line 7266
    :cond_8
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7267
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v0, :cond_0

    .line 7268
    const-string v0, "newRssi"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiRssi:I

    .line 7269
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiRssi:I

    sget v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    goto :goto_1
.end method

.method protected updateWimaxIcons()V
    .locals 3

    .prologue
    .line 7469
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_2

    .line 7470
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_1

    .line 7471
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    if-eqz v0, :cond_0

    .line 7472
    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_IDLE:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    .line 7476
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    .line 7486
    :goto_1
    return-void

    .line 7474
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetConditionSB:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    goto :goto_0

    .line 7479
    :cond_1
    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_DISCONNECTED:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    .line 7480
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    goto :goto_1

    .line 7483
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    .line 7484
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    goto :goto_1
.end method

.method protected final updateWimaxState(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7445
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 7446
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    .line 7447
    const-string v3, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7448
    const-string v2, "4g_state"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 7450
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    .line 7464
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 7465
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxIcons()V

    .line 7466
    return-void

    :cond_1
    move v0, v1

    .line 7450
    goto :goto_0

    .line 7452
    :cond_2
    const-string v3, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7453
    const-string v0, "newSignalLevel"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    goto :goto_1

    .line 7454
    :cond_3
    const-string v3, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7455
    const-string v2, "WimaxState"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    .line 7457
    const-string v2, "WimaxStateDetail"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    .line 7460
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_4

    move v2, v0

    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    .line 7462
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    :goto_3
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    goto :goto_1

    :cond_4
    move v2, v1

    .line 7460
    goto :goto_2

    :cond_5
    move v0, v1

    .line 7462
    goto :goto_3
.end method
