.class public Lcom/android/systemui/statusbar/policy/NetworkController;
.super Landroid/content/BroadcastReceiver;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkController$StatusBarHandler;,
        Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;,
        Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    }
.end annotation


# static fields
.field static final CHATTY:Z

.field static final DEBUG:Z

.field static final INFO:Z


# instance fields
.field private currentShowingIconLevel:I

.field private lastIconLevelChangeTime:J

.field mAirplaneIconId:I

.field protected mAirplaneMode:Z

.field mAlwaysShowCdmaRssi:Z

.field mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field protected mBluetoothTetherIconId:I

.field protected mBluetoothTethered:Z

.field mCm:Landroid/net/ConnectivityManager;

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

.field mCombinedSignalIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mConfigAlwaysShowAttachedNetworkType:Z

.field mConfigShowBothWifiAndMobileNetwork:Z

.field protected mConnected:Z

.field protected mConnectedNetworkType:I

.field protected mConnectedNetworkTypeName:Ljava/lang/String;

.field mContentDescriptionCombinedSignal:Ljava/lang/String;

.field mContentDescriptionDataType:Ljava/lang/String;

.field mContentDescriptionPhoneSignal:Ljava/lang/String;

.field mContentDescriptionRoaming:Ljava/lang/String;

.field mContentDescriptionSim:Ljava/lang/String;

.field mContentDescriptionWifi:Ljava/lang/String;

.field mContentDescriptionWimax:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field mDataActivity:I

.field mDataAndWifiStacked:Z

.field mDataConnected:Z

.field mDataDirectionIconId:I

.field mDataDirectionIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mDataDirectionOverlayIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mDataIconList:[I

.field mDataNetType:I

.field protected mDataServiceState:I

.field mDataSignalIconId:I

.field mDataState:I

.field mDataTypeDisabledIconId:I

.field mDataTypeIconId:I

.field mDataTypeIconIdShown:I

.field mDataTypeIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mDataTypeNotConnectedIconId:I

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

.field mLastCombinedSignalIconId:I

.field mLastDataDirectionIconId:I

.field mLastDataDirectionOverlayIconId:I

.field mLastDataTypeIconId:I

.field mLastMobileDataDirectionOverlayIconId:I

.field mLastPhoneSignalIconId:I

.field mLastRoamingIconId:I

.field mLastSignalLevel:I

.field mLastSimIconId:I

.field mLastWifiIconId:I

.field mLastWimaxIconId:I

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

.field mMobileActivityIconId:I

.field mMobileDataDirectionOverlayIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mMobileDataEnabled:Z

.field protected mMobileInetCondition:I

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

.field mNoRoaming:Z

.field mOperatorName_string:Ljava/lang/String;

.field private mPhone:Landroid/telephony/TelephonyManager;

.field mPhoneSignalIconId:I

.field mPhoneSignalIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mPhoneState:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mRoamingIconId:I

.field mRoamingIconOverlayViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mRoamingIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mRoamingNoData:Z

.field mServiceState:Landroid/telephony/ServiceState;

.field mShowAtLeastThreeGees:Z

.field mShowDataDisabledIcon:I

.field mShowPhoneRSSIForData:Z

.field private mShowPlmnAndSpn:Z

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

.field mSimIconId:I

.field mSimIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mSimState:Lcom/android/internal/telephony/IccCard$State;

.field private mSmoothenCDMASignalStrength:Z

.field private final mStatusBarHandler:Landroid/os/Handler;

.field mWifiActivity:I

.field mWifiActivityIconId:I

.field protected mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiConnected:Z

.field mWifiEnabled:Z

.field mWifiIconId:I

.field mWifiIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field protected mWifiInetCondition:I

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

.field mWifiLevel:I

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiRssi:I

.field mWifiSsid:Ljava/lang/String;

.field protected mWimaxConnected:Z

.field protected mWimaxExtraState:I

.field protected mWimaxIconId:I

.field mWimaxIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field protected mWimaxIdle:Z

.field protected mWimaxInetCondition:I

.field protected mWimaxSignal:I

.field protected mWimaxState:I

.field protected mWimaxSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 95
    const-string v0, "SBar.NetworkController"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    .line 96
    const-string v0, "SBar.NetworkController"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    .line 97
    sput-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    return-void

    .line 96
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 388
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

    .line 153
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowDataDisabledIcon:I

    .line 157
    const-string v0, "ro.mot.noroamingicon"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNoRoaming:Z

    .line 160
    const-string v0, "ro.mot.roamingiconnodata"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingNoData:Z

    .line 164
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 165
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneState:I

    .line 166
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    .line 167
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    .line 168
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    .line 172
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCm:Landroid/net/ConnectivityManager;

    .line 173
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileDataEnabled:Z

    .line 174
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigShowBothWifiAndMobileNetwork:Z

    .line 175
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigAlwaysShowAttachedNetworkType:Z

    .line 185
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 201
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSimIconId:I

    .line 207
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPhoneRSSIForData:Z

    .line 208
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    .line 209
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    .line 231
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    .line 236
    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->lastIconLevelChangeTime:J

    .line 237
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->currentShowingIconLevel:I

    .line 239
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$StatusBarHandler;

    invoke-direct {v0, p0, v6}, Lcom/android/systemui/statusbar/policy/NetworkController$StatusBarHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/NetworkController$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mStatusBarHandler:Landroid/os/Handler;

    .line 245
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLock:Ljava/lang/Object;

    .line 262
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 263
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 264
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    .line 267
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    .line 268
    const v0, 0x1080555

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherIconId:I

    .line 272
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    .line 273
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    .line 274
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    .line 275
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    .line 276
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    .line 277
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    .line 278
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    .line 279
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    .line 283
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    .line 289
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    .line 290
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    .line 297
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    .line 298
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetCondition:I

    .line 299
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetCondition:I

    .line 304
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    .line 305
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    .line 308
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPlmnAndSpn:Z

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconViews:Ljava/util/ArrayList;

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconOverlayViews:Ljava/util/ArrayList;

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconViews:Ljava/util/ArrayList;

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconViews:Ljava/util/ArrayList;

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconViews:Ljava/util/ArrayList;

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconViews:Ljava/util/ArrayList;

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconViews:Ljava/util/ArrayList;

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmergencyLabelViews:Ljava/util/ArrayList;

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    .line 338
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    .line 340
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastRoamingIconId:I

    .line 342
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    .line 343
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    .line 344
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    .line 345
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    .line 346
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    .line 347
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    .line 348
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    .line 351
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastMobileDataDirectionOverlayIconId:I

    .line 356
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataAndWifiStacked:Z

    .line 941
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 389
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    .line 390
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 394
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCm:Landroid/net/ConnectivityManager;

    .line 395
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    .line 396
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileDataEnabled:Z

    .line 399
    const v0, 0x7f080004

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPhoneRSSIForData:Z

    .line 400
    const v0, 0x7f080005

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    .line 401
    const v0, 0x1110034

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    .line 405
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiIcons()V

    .line 406
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxIcons()V

    .line 409
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->registerPhoneStateListener(Landroid/content/Context;)V

    .line 410
    const v0, 0x7f080002

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    .line 414
    const v0, 0x7f080007

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspapDataDistinguishable:Z

    .line 422
    const v0, 0x111003f

    :try_start_0
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mGprsAttachIconDisplayable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "show_data_ps_attached"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mGprsAttachIconDisplayable:Z

    .line 431
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 432
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGprsAttachIconDisplayable is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mGprsAttachIconDisplayable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_1
    const v0, 0x1040523

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    .line 438
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 439
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOperatorName_string is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_2
    const v0, 0x111004d

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigShowBothWifiAndMobileNetwork:Z

    .line 448
    const v0, 0x111004e

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigAlwaysShowAttachedNetworkType:Z

    .line 454
    const v0, 0x1110046

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSmoothenCDMASignalStrength:Z

    .line 458
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    .line 459
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x1040306

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    .line 461
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 464
    const v0, 0x1110045

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDifferingIconForSimError:Z

    .line 469
    new-instance v0, Lcom/motorola/android/systemui/statusbar/VzwEri;

    invoke-direct {v0, p1}, Lcom/motorola/android/systemui/statusbar/VzwEri;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEri:Lcom/motorola/android/systemui/statusbar/VzwEri;

    .line 472
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->createWifiHandler()V

    .line 475
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 476
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 477
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 478
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 481
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 484
    const-string v1, "com.motorola.android.intent.action.GET_REAL_DATA_NET_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 487
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 488
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 489
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 490
    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 491
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 492
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 493
    const v1, 0x1110039

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    .line 495
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    if-eqz v1, :cond_3

    .line 496
    const-string v1, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 497
    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 498
    const-string v1, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 500
    :cond_3
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 503
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateAirplaneMode()V

    .line 506
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 507
    return-void

    :cond_4
    move v0, v2

    .line 157
    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 160
    goto/16 :goto_1

    .line 424
    :catch_0
    move-exception v0

    .line 425
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mGprsAttachIconDisplayable:Z

    goto/16 :goto_2
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 91
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerSignalLevel:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateTelephonySignalStrength()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/NetworkController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;
    .param p1, "x1"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerSignalLevel:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/NetworkController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetworkController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerSignalLevelIntervalTimestamp:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/NetworkController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;
    .param p1, "x1"    # J

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerSignalLevelIntervalTimestamp:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataIcon()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mStatusBarHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/NetworkController;)Lcom/motorola/android/systemui/statusbar/VzwEri;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEri:Lcom/motorola/android/systemui/statusbar/VzwEri;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isDisabledMobileDataTypeIconShown()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/NetworkController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isConnectingOrAttachedMobileDataTypeIconShown()Z

    move-result v0

    return v0
.end method

.method private doesDisplayDataIcon()Z
    .locals 2

    .prologue
    .line 5102
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isConnectingOrAttachedMobileDataTypeIconShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5107
    :cond_0
    const/4 v0, 0x1

    .line 5109
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLevel(Landroid/telephony/SignalStrength;)I
    .locals 3

    .prologue
    .line 5152
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isForced1xMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5153
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_0

    .line 5154
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

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5156
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 5161
    :goto_0
    return v0

    .line 5158
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_2

    .line 5159
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

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5161
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    goto :goto_0
.end method

.method private hasDataService()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1279
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 1280
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1287
    const/4 v0, 0x1

    .line 1290
    :cond_0
    :pswitch_0
    return v0

    .line 1280
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private hasService()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1263
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 1264
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1269
    :pswitch_0
    const/4 v0, 0x1

    .line 1272
    :cond_0
    :pswitch_1
    return v0

    .line 1264
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 3570
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 3571
    .local v3, "ssid":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 3581
    .end local v3    # "ssid":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 3575
    .restart local v3    # "ssid":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 3576
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

    .line 3577
    .local v1, "net":Landroid/net/wifi/WifiConfiguration;
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 3578
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 3581
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

    .line 2745
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    .line 2747
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    return v0

    :cond_0
    move v0, v1

    .line 2745
    goto :goto_0
.end method

.method private isCdma()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1235
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 1236
    .local v0, "isCdma":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v4, :cond_3

    .line 1237
    if-eqz v0, :cond_2

    .line 1255
    :cond_0
    :goto_1
    return v2

    .end local v0    # "isCdma":Z
    :cond_1
    move v0, v3

    .line 1235
    goto :goto_0

    .restart local v0    # "isCdma":Z
    :cond_2
    move v2, v3

    .line 1240
    goto :goto_1

    .line 1243
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v1

    .line 1244
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

    .line 1255
    goto :goto_1
.end method

.method private isConfigMobileDataTypeShowDataDisabledIcon()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1640
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowDataDisabledIcon:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1642
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "show_data_disabled_icon"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1648
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowDataDisabledIcon:I

    .line 1655
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowDataDisabledIcon:I

    if-ne v2, v0, :cond_3

    .line 1661
    :goto_1
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1662
    const-string v1, "SBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isConfigMobileDataTypeShowDataDisabledIcon: mShowDataDisabledIcon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowDataDisabledIcon:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returnValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    :cond_1
    return v0

    .line 1650
    :cond_2
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowDataDisabledIcon:I

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1655
    goto :goto_1
.end method

.method private isConnectingOrAttachedMobileDataTypeIconShown()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 5083
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

    .line 5094
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 5096
    :cond_1
    return v0
.end method

.method private isDisabledMobileDataTypeIconShown()Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1690
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isConfigMobileDataTypeShowDataDisabledIcon()Z

    move-result v5

    .line 1692
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 1700
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isMobileDataEnabled()Z

    move-result v6

    .line 1702
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

    .line 1718
    :goto_1
    if-eqz v5, :cond_5

    if-eqz v0, :cond_5

    if-nez v6, :cond_5

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v1

    .line 1730
    :goto_2
    sget-boolean v7, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 1731
    const-string v7, "SBar.NetworkController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isDisabledMobileDataTypeIconShown: displayDataDisabledIcon="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", hasVoiceAndDataService="

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

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    :cond_2
    return v3

    :cond_3
    move v0, v2

    .line 1692
    goto :goto_0

    :cond_4
    move v4, v2

    .line 1702
    goto :goto_1

    :cond_5
    move v3, v2

    .line 1718
    goto :goto_2

    :cond_6
    move v0, v2

    .line 1731
    goto :goto_3

    :cond_7
    move v1, v2

    goto :goto_4
.end method

.method private isEvdo()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2563
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v2, :cond_1

    .line 2565
    :cond_0
    :goto_0
    return v1

    .line 2564
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    .line 2565
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

    .line 5171
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_0

    .line 5172
    const-string v3, "SBar.NetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isForced1xMode: ( mPhoneState != TelephonyManager.CALL_STATE_IDLE )="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneState:I

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5174
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

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5175
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

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5176
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

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5178
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

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5179
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

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5194
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isLte()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5195
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 5196
    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneState:I

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

    .line 5211
    :cond_3
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 5212
    const-string v0, "SBar.NetworkController"

    const-string v2, "isForced1xMode: returns true (use 1X mode)"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5223
    :cond_4
    :goto_2
    return v1

    :cond_5
    move v0, v2

    .line 5172
    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 5195
    goto :goto_1

    .line 5220
    :cond_7
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 5221
    const-string v0, "SBar.NetworkController"

    const-string v1, "isForced1xMode: returns false (use active radioTech\'s normal mode)"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v1, v2

    .line 5223
    goto :goto_2
.end method

.method private isLte()Z
    .locals 2

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMobileDataEnabled()Z
    .locals 4

    .prologue
    .line 1672
    .line 1673
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    .line 1674
    const/4 v0, 0x0

    .line 1679
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1680
    const-string v1, "SBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIsDataDisabled: returnValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    :cond_0
    return v0

    .line 1676
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private signalIconLog(Ljava/lang/String;II)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3616
    .line 3617
    sparse-switch p2, :sswitch_data_0

    .line 3631
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 3632
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

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3636
    :cond_1
    return-void

    .line 3619
    :sswitch_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-eq p3, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 3622
    :sswitch_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetCondition:I

    if-eq p3, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 3625
    :sswitch_2
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetCondition:I

    if-eq p3, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 3632
    :cond_2
    const-string v0, "white."

    goto :goto_1

    .line 3617
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
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 3113
    .line 3120
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v2, "SBar.NetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDataActivityIcon: mDataServiceState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    if-nez v0, :cond_6

    const-string v0, "STATE_IN_SERVICE"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " hasDataService="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasDataService()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3134
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v2, "SBar.NetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDataActivityIcon: mDataState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_a

    const-string v0, "DATA_UNKNOWN"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3148
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v2, "SBar.NetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDataActivityIcon: mDataActivity="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    if-nez v0, :cond_f

    const-string v0, "DATA_ACTIVITY_NONE"

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isLte()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3159
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasDataService()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3160
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 3251
    :goto_3
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "SBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataActivityIcon: LTE: mDataState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " iconId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3423
    :cond_3
    :goto_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isAirplaneModeOn()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ERROR:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_2e

    .line 3428
    :cond_4
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 3433
    :goto_5
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataActivityIcon: mMobileActivityIconId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3437
    :cond_5
    return-void

    .line 3120
    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    if-ne v0, v5, :cond_7

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

    .line 3134
    :cond_a
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-nez v0, :cond_b

    const-string v0, "DATA_DISCONNECTED"

    goto/16 :goto_1

    :cond_b
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-ne v0, v5, :cond_c

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

    .line 3148
    :cond_f
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    if-ne v0, v5, :cond_10

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

    if-ne v0, v8, :cond_13

    const-string v0, "DATA_ACTIVITY_DORMANT"

    goto/16 :goto_2

    :cond_13
    const-string v0, "unknown"

    goto/16 :goto_2

    .line 3169
    :pswitch_0
    const-string v0, "att"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3170
    const v0, 0x7f02011c

    goto/16 :goto_3

    .line 3172
    :cond_14
    const v0, 0x7f02011a

    .line 3174
    goto/16 :goto_3

    .line 3177
    :pswitch_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    packed-switch v0, :pswitch_data_1

    .line 3181
    const-string v0, "att"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3182
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_15

    .line 3183
    const v0, 0x7f0200e5

    goto/16 :goto_3

    .line 3185
    :cond_15
    const v0, 0x7f0200f6

    goto/16 :goto_3

    .line 3188
    :cond_16
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v2

    aget v0, v0, v1

    goto/16 :goto_3

    .line 3194
    :pswitch_2
    const-string v0, "att"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3195
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_17

    .line 3196
    const v0, 0x7f020106

    goto/16 :goto_3

    .line 3198
    :cond_17
    const v0, 0x7f0200fa

    goto/16 :goto_3

    .line 3201
    :cond_18
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v2

    aget v0, v0, v5

    goto/16 :goto_3

    .line 3207
    :pswitch_3
    const-string v0, "att"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3208
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_19

    .line 3209
    const v0, 0x7f020121

    goto/16 :goto_3

    .line 3211
    :cond_19
    const v0, 0x7f0200ff

    goto/16 :goto_3

    .line 3214
    :cond_1a
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v2

    aget v0, v0, v6

    goto/16 :goto_3

    .line 3220
    :pswitch_4
    const-string v0, "att"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3221
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_1b

    .line 3222
    const v0, 0x7f020107

    goto/16 :goto_3

    .line 3224
    :cond_1b
    const v0, 0x7f0200fb

    goto/16 :goto_3

    .line 3227
    :cond_1c
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v2

    aget v0, v0, v7

    goto/16 :goto_3

    .line 3233
    :pswitch_5
    const-string v0, "att"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3234
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_1d

    .line 3235
    const v0, 0x7f0200e5

    goto/16 :goto_3

    .line 3237
    :cond_1d
    const v0, 0x7f0200f6

    goto/16 :goto_3

    .line 3240
    :cond_1e
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v2

    aget v0, v0, v8

    goto/16 :goto_3

    .line 3256
    :cond_1f
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 3258
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v2, :cond_20

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v2, :cond_2f

    .line 3259
    :cond_20
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasDataService()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->doesDisplayDataIcon()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 3260
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    packed-switch v0, :pswitch_data_2

    move v0, v1

    .line 3357
    :goto_6
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "SBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataActivityIcon: GSM: mDataState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " iconId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3270
    :pswitch_6
    const-string v0, "att"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3271
    const v0, 0x7f02011c

    goto :goto_6

    .line 3273
    :cond_21
    const v0, 0x7f02011a

    .line 3275
    goto :goto_6

    .line 3278
    :pswitch_7
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    packed-switch v0, :pswitch_data_3

    .line 3282
    const-string v0, "att"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3283
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_22

    .line 3284
    const v0, 0x7f0200e5

    goto :goto_6

    .line 3286
    :cond_22
    const v0, 0x7f0200f6

    goto :goto_6

    .line 3289
    :cond_23
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v2

    aget v0, v0, v1

    goto :goto_6

    .line 3295
    :pswitch_8
    const-string v0, "att"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3296
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_24

    .line 3297
    const v0, 0x7f020106

    goto/16 :goto_6

    .line 3299
    :cond_24
    const v0, 0x7f0200fa

    goto/16 :goto_6

    .line 3302
    :cond_25
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v2

    aget v0, v0, v5

    goto/16 :goto_6

    .line 3308
    :pswitch_9
    const-string v0, "att"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3309
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_26

    .line 3310
    const v0, 0x7f020121

    goto/16 :goto_6

    .line 3312
    :cond_26
    const v0, 0x7f0200ff

    goto/16 :goto_6

    .line 3315
    :cond_27
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v2

    aget v0, v0, v6

    goto/16 :goto_6

    .line 3321
    :pswitch_a
    const-string v0, "att"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3324
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_28

    .line 3325
    const v0, 0x7f020107

    goto/16 :goto_6

    .line 3327
    :cond_28
    const v0, 0x7f0200fb

    goto/16 :goto_6

    .line 3331
    :cond_29
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v2

    aget v0, v0, v7

    goto/16 :goto_6

    .line 3337
    :pswitch_b
    const-string v0, "att"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 3338
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_2a

    .line 3339
    const v0, 0x7f0200e5

    goto/16 :goto_6

    .line 3341
    :cond_2a
    const v0, 0x7f0200f6

    goto/16 :goto_6

    .line 3344
    :cond_2b
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v2

    aget v0, v0, v8

    goto/16 :goto_6

    .line 3365
    :cond_2c
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    packed-switch v0, :pswitch_data_4

    move v0, v1

    .line 3413
    :goto_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isForced1xMode()Z

    move-result v2

    if-eqz v2, :cond_2d

    move v0, v1

    .line 3417
    :cond_2d
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "SBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataActivityIcon: CDMA: mDataState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " iconId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :pswitch_c
    move v0, v1

    .line 3375
    goto :goto_7

    .line 3378
    :pswitch_d
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    packed-switch v0, :pswitch_data_5

    .line 3382
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v2

    aget v0, v0, v1

    goto :goto_7

    .line 3387
    :pswitch_e
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v2

    aget v0, v0, v5

    goto :goto_7

    .line 3392
    :pswitch_f
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v2

    aget v0, v0, v6

    goto :goto_7

    .line 3397
    :pswitch_10
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v2

    aget v0, v0, v7

    goto :goto_7

    .line 3402
    :pswitch_11
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v2

    aget v0, v0, v8

    goto :goto_7

    .line 3430
    :cond_2e
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto/16 :goto_5

    :cond_2f
    move v0, v1

    goto/16 :goto_6

    :cond_30
    move v0, v1

    goto/16 :goto_3

    .line 3160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 3177
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 3260
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 3278
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 3365
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_c
    .end packed-switch

    .line 3378
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private final updateDataIcon()V
    .locals 9

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2835
    .line 2844
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

    if-nez v0, :cond_8

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

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
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

    if-ne v0, v5, :cond_c

    const-string v0, "DATA_UNKNOWN"

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
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

    if-nez v0, :cond_11

    const-string v0, "DATA_ACTIVITY_NONE"

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    if-nez v0, :cond_16

    move v2, v1

    move v0, v1

    .line 3072
    :cond_3
    :goto_3
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    .line 3074
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isAirplaneModeOn()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ERROR:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v3, :cond_1d

    .line 3079
    :cond_4
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    .line 3086
    :goto_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    if-nez v0, :cond_5

    .line 3087
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    .line 3090
    :cond_5
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDataIcon: mDataConnected="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3091
    :cond_6
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDataIcon: mDataDirectionIconId(NetworkType)="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3100
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3103
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3106
    :goto_5
    return-void

    .line 2844
    :cond_8
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    if-ne v0, v2, :cond_9

    const-string v0, "STATE_OUT_OF_SERVICE"

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    if-ne v0, v6, :cond_a

    const-string v0, "STATE_EMERGENCY_ONLY"

    goto/16 :goto_0

    :cond_a
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    if-ne v0, v7, :cond_b

    const-string v0, "STATE_POWER_OFF"

    goto/16 :goto_0

    :cond_b
    const-string v0, "unknown"

    goto/16 :goto_0

    .line 2858
    :cond_c
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-nez v0, :cond_d

    const-string v0, "DATA_DISCONNECTED"

    goto/16 :goto_1

    :cond_d
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-ne v0, v2, :cond_e

    const-string v0, "DATA_CONNECTING"

    goto/16 :goto_1

    :cond_e
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-ne v0, v6, :cond_f

    const-string v0, "DATA_CONNECTED"

    goto/16 :goto_1

    :cond_f
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-ne v0, v7, :cond_10

    const-string v0, "DATA_SUSPENDED"

    goto/16 :goto_1

    :cond_10
    const-string v0, "unknown"

    goto/16 :goto_1

    .line 2872
    :cond_11
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    if-ne v0, v2, :cond_12

    const-string v0, "DATA_ACTIVITY_IN"

    goto/16 :goto_2

    :cond_12
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    if-ne v0, v6, :cond_13

    const-string v0, "DATA_ACTIVITY_OUT"

    goto/16 :goto_2

    :cond_13
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    if-ne v0, v7, :cond_14

    const-string v0, "DATA_ACTIVITY_INOUT"

    goto/16 :goto_2

    :cond_14
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    const/4 v5, 0x4

    if-ne v0, v5, :cond_15

    const-string v0, "DATA_ACTIVITY_DORMANT"

    goto/16 :goto_2

    :cond_15
    const-string v0, "unknown"

    goto/16 :goto_2

    .line 2887
    :cond_16
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isLte()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2889
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasDataService()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2890
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    move v2, v1

    .line 2942
    :goto_6
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v3, :cond_1f

    const-string v3, "SBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataIcon: LTE: mDataState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " iconId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " visible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v0

    move v0, v2

    move v2, v8

    goto/16 :goto_3

    .line 2900
    :pswitch_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    move v8, v2

    move v2, v0

    move v0, v8

    .line 2901
    goto :goto_6

    .line 2904
    :pswitch_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    packed-switch v0, :pswitch_data_1

    .line 2908
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v1

    move v8, v2

    move v2, v0

    move v0, v8

    .line 2909
    goto :goto_6

    .line 2913
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v2

    move v8, v2

    move v2, v0

    move v0, v8

    .line 2914
    goto :goto_6

    .line 2918
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v6

    move v8, v2

    move v2, v0

    move v0, v8

    .line 2919
    goto :goto_6

    .line 2923
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v7

    move v8, v2

    move v2, v0

    move v0, v8

    .line 2924
    goto :goto_6

    .line 2928
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v1

    move v8, v2

    move v2, v0

    move v0, v8

    .line 2929
    goto :goto_6

    :cond_17
    move v0, v1

    move v2, v1

    .line 2939
    goto :goto_6

    .line 2947
    :cond_18
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2949
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v3, :cond_19

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v3, :cond_1e

    .line 2950
    :cond_19
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasDataService()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->doesDisplayDataIcon()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2951
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    packed-switch v0, :pswitch_data_2

    move v2, v1

    move v0, v1

    .line 3003
    :goto_7
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "SBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataIcon: GSM: mDataState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " iconId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " visible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2961
    :pswitch_6
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    goto :goto_7

    .line 2965
    :pswitch_7
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    packed-switch v0, :pswitch_data_3

    .line 2969
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v1

    goto :goto_7

    .line 2974
    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v2

    goto :goto_7

    .line 2979
    :pswitch_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v6

    goto :goto_7

    .line 2984
    :pswitch_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v7

    goto :goto_7

    .line 2989
    :pswitch_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v1

    goto :goto_7

    :cond_1a
    move v2, v1

    move v0, v1

    .line 2999
    goto :goto_7

    .line 3010
    :cond_1b
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    packed-switch v0, :pswitch_data_4

    move v2, v1

    move v0, v1

    .line 3060
    :goto_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isForced1xMode()Z

    move-result v3

    if-eqz v3, :cond_1c

    move v2, v1

    move v0, v1

    .line 3065
    :cond_1c
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "SBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataIcon: CDMA: mDataState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " iconId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " visible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_c
    move v2, v1

    move v0, v1

    .line 3022
    goto :goto_8

    .line 3025
    :pswitch_d
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    packed-switch v0, :pswitch_data_5

    .line 3029
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v1

    goto :goto_8

    .line 3034
    :pswitch_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v2

    goto :goto_8

    .line 3039
    :pswitch_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v6

    goto :goto_8

    .line 3044
    :pswitch_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v7

    goto :goto_8

    .line 3049
    :pswitch_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v1

    goto :goto_8

    .line 3083
    :cond_1d
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    goto/16 :goto_4

    .line 3101
    :catch_0
    move-exception v0

    .line 3103
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_1e
    move v0, v1

    goto/16 :goto_7

    :cond_1f
    move v8, v0

    move v0, v2

    move v2, v8

    goto/16 :goto_3

    .line 2890
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2904
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 2951
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 2965
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 3010
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_c
    .end packed-switch

    .line 3025
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private final updateDataNetType()V
    .locals 8

    .prologue
    const v7, 0x7f09005a

    const v6, 0x7f02010b

    const v5, 0x7f0200c5

    const v0, 0x7f02006f

    const/4 v4, 0x0

    .line 1784
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileDataEnabled:Z

    .line 1787
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v1, :cond_2

    .line 1788
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SBar.NetworkController"

    const-string v1, "updateDataNetType: (mIsWimaxEnabled && mWimaxConnected) == true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1793
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetCondition:I

    if-nez v0, :cond_1

    const v0, 0x7f020070

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1798
    const v0, 0x7f02010d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1802
    const v0, 0x7f0200c8

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 1804
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f09005c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2542
    :goto_1
    return-void

    .line 1793
    :cond_1
    const v0, 0x7f020077

    goto :goto_0

    .line 1807
    :cond_2
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "SBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDataNetType: mDataNetType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    :cond_3
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "SBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDataNetType: mOperatorName_string is \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v1, :pswitch_data_0

    .line 2530
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

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    .line 2532
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    goto :goto_1

    .line 1813
    :pswitch_1
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 1814
    const-string v1, "SBar.NetworkController"

    const-string v2, "updateDataNetType: mDataNetType=NETWORK_TYPE_UNKNOWN"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v1, :cond_a

    .line 1817
    const-string v0, "att"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1818
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G_WAVES:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1821
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_6

    const v0, 0x7f0200de

    :goto_2
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1826
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1829
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 1854
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f090059

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 1821
    :cond_6
    const v0, 0x7f0200ef

    goto :goto_2

    .line 1832
    :cond_7
    const-string v0, "sfr"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1833
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_2G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1836
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_8

    const v0, 0x7f0200d6

    :goto_4
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1841
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1842
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    goto :goto_3

    .line 1836
    :cond_8
    const v0, 0x7f0200e7

    goto :goto_4

    .line 1845
    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1846
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1847
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1850
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    goto :goto_3

    .line 1863
    :cond_a
    :pswitch_2
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_b

    const-string v1, "SBar.NetworkController"

    const-string v2, "updateDataNetType: mDataNetType=NETWORK_TYPE_EDGE"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    :cond_b
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v1, :cond_f

    .line 1865
    const-string v0, "att"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1866
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E_WAVES:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1869
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_c

    const v0, 0x7f0200dc

    :goto_5
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1874
    const v0, 0x7f020112

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1878
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 1897
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f09005e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 1869
    :cond_c
    const v0, 0x7f0200ed

    goto :goto_5

    .line 1881
    :cond_d
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1884
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_e

    const v0, 0x7f020071

    :goto_7
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1889
    const v0, 0x7f020111

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1893
    const v0, 0x7f0200e6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    goto :goto_6

    .line 1884
    :cond_e
    const v0, 0x7f020078

    goto :goto_7

    .line 1906
    :cond_f
    :pswitch_3
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_10

    const-string v1, "SBar.NetworkController"

    const-string v2, "updateDataNetType: mDataNetType=NETWORK_TYPE_UMTS"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    :cond_10
    const-string v1, "att"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1908
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_WAVES:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1911
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_11

    const v0, 0x7f0200da

    :goto_8
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1916
    const v0, 0x7f020110

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1920
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 1922
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f09005c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 1911
    :cond_11
    const v0, 0x7f0200eb

    goto :goto_8

    .line 1925
    :cond_12
    const-string v1, "bellca"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1926
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_HPLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1929
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_13

    const v0, 0x7f0200df

    :goto_9
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1934
    const v0, 0x7f020116

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1938
    const v0, 0x7f020102

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 1940
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f090083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 1929
    :cond_13
    const v0, 0x7f0200f0

    goto :goto_9

    .line 1943
    :cond_14
    const-string v1, "tmo"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1946
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1947
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1950
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v1, :cond_15

    :goto_a
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1955
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1959
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 1961
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 1950
    :cond_15
    const v0, 0x7f020076

    goto :goto_a

    .line 1964
    :cond_16
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1967
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_17

    const v0, 0x7f020070

    :goto_b
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1972
    const v0, 0x7f02010d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1976
    const v0, 0x7f0200c8

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 1978
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f09005c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 1967
    :cond_17
    const v0, 0x7f020077

    goto :goto_b

    .line 1982
    :cond_18
    const-string v1, "rogers"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "fido"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1989
    :cond_19
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1990
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1993
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v1, :cond_1a

    :goto_c
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1998
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2002
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 2004
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 1993
    :cond_1a
    const v0, 0x7f020076

    goto :goto_c

    .line 2007
    :cond_1b
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_HPLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2010
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_1c

    const v0, 0x7f0200df

    :goto_d
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2015
    const v0, 0x7f020116

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2019
    const v0, 0x7f020102

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 2021
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f090083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 2010
    :cond_1c
    const v0, 0x7f0200f0

    goto :goto_d

    .line 2025
    :cond_1d
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2028
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v1, :cond_1e

    :goto_e
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2033
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2037
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 2039
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 2028
    :cond_1e
    const v0, 0x7f020076

    goto :goto_e

    .line 2049
    :pswitch_4
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_1f

    const-string v1, "SBar.NetworkController"

    const-string v2, "updateDataNetType: mDataNetType=NETWORK_TYPE_HSDPA || NETWORK_TYPE_HSUPA || NETWORK_TYPE_HSPA || NETWORK_TYPE_HSPAP"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    :cond_1f
    const-string v1, "att"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2054
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_WAVES:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2057
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_20

    const v0, 0x7f0200da

    :goto_f
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2062
    const v0, 0x7f020110

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2066
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 2068
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f09005c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 2057
    :cond_20
    const v0, 0x7f0200eb

    goto :goto_f

    .line 2071
    :cond_21
    const-string v1, "bellca"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2072
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_HPLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2075
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_22

    const v0, 0x7f0200df

    :goto_10
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2080
    const v0, 0x7f020116

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2084
    const v0, 0x7f020102

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 2086
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f090083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 2075
    :cond_22
    const v0, 0x7f0200f0

    goto :goto_10

    .line 2090
    :cond_23
    const-string v1, "sfr"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2091
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2094
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_24

    const v0, 0x7f0200d7

    :goto_11
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2099
    const v0, 0x7f02010c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2101
    const v0, 0x7f0200c6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 2102
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f090082

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 2094
    :cond_24
    const v0, 0x7f0200d7

    goto :goto_11

    .line 2106
    :cond_25
    const-string v1, "tmo"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2109
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2110
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2113
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v1, :cond_26

    :cond_26
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2118
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2122
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 2124
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 2127
    :cond_27
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2130
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_28

    const v0, 0x7f020070

    :goto_12
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2135
    const v0, 0x7f02010d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2139
    const v0, 0x7f0200c8

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 2141
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f09005c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 2130
    :cond_28
    const v0, 0x7f020077

    goto :goto_12

    .line 2145
    :cond_29
    const-string v1, "rogers"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "fido"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2152
    :cond_2a
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2153
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2156
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v1, :cond_2b

    :goto_13
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2161
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2165
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 2167
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 2156
    :cond_2b
    const v0, 0x7f020076

    goto :goto_13

    .line 2170
    :cond_2c
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_HPLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2173
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_2d

    const v0, 0x7f0200df

    :goto_14
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2178
    const v0, 0x7f020116

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2182
    const v0, 0x7f020102

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 2184
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f090083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 2173
    :cond_2d
    const v0, 0x7f0200f0

    goto :goto_14

    .line 2190
    :cond_2e
    const-string v1, "orange"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2193
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_30

    .line 2194
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_HPLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2197
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_2f

    const v0, 0x7f0200df

    :goto_15
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2202
    const v0, 0x7f020116

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2204
    const v0, 0x7f020102

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 2205
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f090083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 2197
    :cond_2f
    const v0, 0x7f0200f0

    goto :goto_15

    .line 2208
    :cond_30
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2211
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_31

    const v0, 0x7f0200d7

    :goto_16
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2216
    const v0, 0x7f02010c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2218
    const v0, 0x7f0200c6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 2219
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f090082

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 2211
    :cond_31
    const v0, 0x7f0200e8

    goto :goto_16

    .line 2227
    :cond_32
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspapDataDistinguishable:Z

    if-eqz v1, :cond_34

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_34

    .line 2229
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_HPLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2232
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_33

    const v0, 0x7f0200df

    :goto_17
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2237
    const v0, 0x7f020116

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2241
    const v0, 0x7f020102

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 2243
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f090083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 2232
    :cond_33
    const v0, 0x7f0200f0

    goto :goto_17

    .line 2248
    :cond_34
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v1, :cond_36

    .line 2249
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2252
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_35

    const v0, 0x7f020073

    :goto_18
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2257
    const v0, 0x7f020115

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2261
    const v0, 0x7f020101

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 2263
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f09005b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 2252
    :cond_35
    const v0, 0x7f02007a

    goto :goto_18

    .line 2266
    :cond_36
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2269
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v1, :cond_37

    :goto_19
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2274
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2278
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 2280
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 2269
    :cond_37
    const v0, 0x7f020076

    goto :goto_19

    .line 2289
    :pswitch_5
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_38

    const-string v1, "SBar.NetworkController"

    const-string v2, "updateDataNetType: mDataNetType=NETWORK_TYPE_CDMA"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    :cond_38
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v1, :cond_3a

    .line 2292
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2295
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_39

    const v0, 0x7f02006e

    :goto_1a
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2300
    const v0, 0x7f020109

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2304
    const v0, 0x7f0200c3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 2306
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f09005d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 2295
    :cond_39
    const v0, 0x7f020075

    goto :goto_1a

    .line 2314
    :cond_3a
    :pswitch_6
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_3b

    const-string v1, "SBar.NetworkController"

    const-string v2, "updateDataNetType: mDataNetType=NETWORK_TYPE_1xRTT"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    :cond_3b
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v1, :cond_3d

    .line 2316
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2319
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_3c

    const v0, 0x7f02006e

    :goto_1b
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2324
    const v0, 0x7f020109

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2328
    const v0, 0x7f0200c3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 2330
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f09005d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 2319
    :cond_3c
    const v0, 0x7f020075

    goto :goto_1b

    .line 2341
    :cond_3d
    :pswitch_7
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_3e

    const-string v1, "SBar.NetworkController"

    const-string v2, "updateDataNetType: mDataNetType=NETWORK_TYPE_EVDO_0 || NETWORK_TYPE_EVDO_A || NETWORK_TYPE_EVDO_B || NETWORK_TYPE_EHRPD"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    :cond_3e
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2348
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v1, :cond_3f

    :goto_1c
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2353
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2357
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 2359
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 2348
    :cond_3f
    const v0, 0x7f020076

    goto :goto_1c

    .line 2364
    :pswitch_8
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_40

    const-string v0, "SBar.NetworkController"

    const-string v1, "updateDataNetType: mDataNetType=NETWORK_TYPE_LTE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    :cond_40
    const-string v0, "att"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2368
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE_WAVES:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2371
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_41

    const v0, 0x7f0200d9

    :goto_1d
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2377
    const v0, 0x7f02010f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2381
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 2383
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f090080

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 2371
    :cond_41
    const v0, 0x7f0200ea

    goto :goto_1d

    .line 2385
    :cond_42
    const-string v0, "vzw"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "usc"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 2387
    :cond_43
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2390
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_44

    const v0, 0x7f0200d8

    :goto_1e
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2395
    const v0, 0x7f02010e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2399
    const v0, 0x7f0200c7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 2401
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f090080

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 2390
    :cond_44
    const v0, 0x7f0200e9

    goto :goto_1e

    .line 2405
    :cond_45
    const-string v0, "rogers"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "fido"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "bellca"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "skt"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "kt"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "telus"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "tmo-intl"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "o2de"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2424
    :cond_46
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2427
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_47

    const v0, 0x7f0200e0

    :goto_1f
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2432
    const v0, 0x7f020117

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2436
    const v0, 0x7f020108

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 2438
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f090081

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 2427
    :cond_47
    const v0, 0x7f0200f1

    goto :goto_1f

    .line 2442
    :cond_48
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2445
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_49

    const v0, 0x7f020070

    :goto_20
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2450
    const v0, 0x7f02010d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2454
    const v0, 0x7f0200c8

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 2456
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f09005c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 2445
    :cond_49
    const v0, 0x7f020077

    goto :goto_20

    .line 2462
    :pswitch_9
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v1, :cond_4f

    .line 2464
    const-string v0, "att"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 2465
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G_WAVES:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2468
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_4a

    const v0, 0x7f0200de

    :goto_21
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2473
    const v0, 0x7f020114

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2477
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 2508
    :goto_22
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f090059

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 2468
    :cond_4a
    const v0, 0x7f0200ef

    goto :goto_21

    .line 2480
    :cond_4b
    const-string v0, "sfr"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 2481
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_2G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2484
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_4c

    const v0, 0x7f0200d6

    :goto_23
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2489
    const v0, 0x7f02010a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2490
    const v0, 0x7f0200c4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    goto :goto_22

    .line 2484
    :cond_4c
    const v0, 0x7f0200e7

    goto :goto_23

    .line 2493
    :cond_4d
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2496
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_4e

    const v0, 0x7f020072

    :goto_24
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2501
    const v0, 0x7f020113

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2505
    const v0, 0x7f020100

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    goto :goto_22

    .line 2496
    :cond_4e
    const v0, 0x7f020079

    goto :goto_24

    .line 2511
    :cond_4f
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2514
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v1, :cond_50

    :goto_25
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2519
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2523
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 2525
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 2514
    :cond_50
    const v0, 0x7f020076

    goto :goto_25

    .line 1811
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_9
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method private updateRealDataNetType(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 928
    const-string v0, "showRealDataNetType"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 929
    if-nez v0, :cond_0

    .line 938
    :goto_0
    return-void

    .line 932
    :cond_0
    const-string v0, "realDataNetType"

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 933
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 934
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

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {v1, v2, v0}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(II)V

    goto :goto_0
.end method

.method private final updateRoamingIcon()V
    .locals 7

    .prologue
    const v5, 0x7f090097

    const v6, 0x7f090098

    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 2581
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2588
    :cond_0
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 2594
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2595
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    .line 2600
    :goto_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2601
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRoamingIcon: no Service: mRoamingIconId=(none) Accessibility=\""

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

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    :cond_1
    :goto_1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_2

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

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    :cond_2
    return-void

    .line 2597
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    goto :goto_0

    .line 2609
    :cond_4
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_5

    .line 2610
    const-string v0, "SBar.NetworkController"

    const-string v2, "updateRoamingIcon: has Service"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2613
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_6

    .line 2614
    const-string v0, "SBar.NetworkController"

    const-string v1, "updateRoamingIcon: not CDMA"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNoRoaming:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2620
    const v0, 0x7f020074

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 2621
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_7

    .line 2622
    const-string v0, "SBar.NetworkController"

    const-string v1, "updateRoamingIcon: mRoamingIconId = R.drawable.stat_sys_data_connected_roam (#1)"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    goto/16 :goto_1

    .line 2626
    :cond_8
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 2627
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_9

    const-string v0, "SBar.NetworkController"

    const-string v1, "updateRoamingIcon: mRoamingIconId = 0 (#2)"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2628
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    goto/16 :goto_1

    .line 2632
    :cond_a
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_b

    .line 2633
    const-string v0, "SBar.NetworkController"

    const-string v2, "updateRoamingIcon: CDMA"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-static {v0}, Lcom/motorola/android/systemui/statusbar/MotoSystemUIUtils;->updateCdmaFemtoIcon(Landroid/telephony/ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2638
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_c

    .line 2639
    const-string v0, "SBar.NetworkController"

    const-string v1, "updateRoamingIcon: CDMA FemtoCell"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2641
    :cond_c
    const v0, 0x7f020122

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 2642
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f090099

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    goto/16 :goto_1

    .line 2647
    :cond_d
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_ROAMING_INDICATOR_CDMA:[I

    .line 2648
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 2649
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v4

    .line 2651
    :goto_3
    if-ne v0, v1, :cond_10

    .line 2652
    const-string v0, "SBar.NetworkController"

    const-string v1, "getCdmaEriIconIndex returned null, skipping ERI icon update"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_e
    move v0, v1

    .line 2648
    goto :goto_2

    :cond_f
    move v4, v1

    .line 2649
    goto :goto_3

    .line 2654
    :cond_10
    if-ne v4, v1, :cond_11

    .line 2655
    const-string v0, "SBar.NetworkController"

    const-string v1, "getCdmeEriIconMode returned null, skipping ERI icon update"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2658
    :cond_11
    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 2659
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_12

    const-string v0, "SBar.NetworkController"

    const-string v1, "Cdma ROAMING_INDICATOR_OFF, removing ERI icon"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    :cond_12
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 2661
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_13

    const-string v0, "SBar.NetworkController"

    const-string v1, "updateRoamingIcon: mRoamingIconId = 0 (#3)"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    goto/16 :goto_1

    .line 2669
    :cond_14
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEri:Lcom/motorola/android/systemui/statusbar/VzwEri;

    invoke-virtual {v1}, Lcom/motorola/android/systemui/statusbar/VzwEri;->isVzwEriOn()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2670
    packed-switch v4, :pswitch_data_0

    move-object v1, v2

    .line 2684
    :goto_4
    array-length v2, v1

    if-lt v0, v2, :cond_15

    .line 2686
    const-string v2, "SBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iconIndex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " is greater than iconList\'s length"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 2689
    :cond_15
    aget v0, v1, v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 2690
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_16

    .line 2691
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRoamingIcon: mRoamingIconId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (#4)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    goto/16 :goto_1

    .line 2672
    :pswitch_0
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v1, :cond_17

    .line 2673
    const-string v1, "SBar.NetworkController"

    const-string v2, "updateRoamingIcon: CDMA \"VzwEriOn\" normal mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    :cond_17
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_ROAMING_INDICATOR_CDMA_VZW:[I

    goto :goto_4

    .line 2678
    :pswitch_1
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v1, :cond_18

    .line 2679
    const-string v1, "SBar.NetworkController"

    const-string v2, "updateRoamingIcon: CDMA \"VzwEriOn\" flashing mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    :cond_18
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_ROAMING_INDICATOR_CDMA_FLASH_VZW:[I

    goto :goto_4

    .line 2696
    :cond_19
    packed-switch v4, :pswitch_data_1

    goto/16 :goto_1

    .line 2698
    :pswitch_2
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v1, :cond_1a

    .line 2699
    const-string v1, "SBar.NetworkController"

    const-string v3, "updateRoamingIcon: CDMA normal mode"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    :cond_1a
    aget v0, v2, v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 2702
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_1b

    .line 2703
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRoamingIcon: mRoamingIconId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (#5)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    goto/16 :goto_1

    .line 2708
    :pswitch_3
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_1c

    .line 2709
    const-string v0, "SBar.NetworkController"

    const-string v1, "updateRoamingIcon: CDMA flashing mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2711
    :cond_1c
    const v0, 0x7f02008c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 2712
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_1d

    .line 2713
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRoamingIcon: mRoamingIconId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (#6)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    goto/16 :goto_1

    .line 2670
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2696
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private final updateSimIcon()V
    .locals 4

    .prologue
    .line 2754
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSimIcon: simState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2755
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

    const-string v2, " mSimState == IccCard.State.ABSENT="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v3, :cond_7

    const-string v0, "true"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mSimState == IccCard.State.ERROR="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ERROR:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v3, :cond_8

    const-string v0, "true"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ERROR:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_9

    .line 2780
    :cond_3
    const v0, 0x7f020088

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    .line 2781
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f09009a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionSim:Ljava/lang/String;

    .line 2783
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_4

    const-string v0, "SBar.NetworkController"

    const-string v1, "updateSimIcon: set mSimIconId to NO_SIM"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDifferingIconForSimError:Z

    if-eqz v0, :cond_5

    const-string v0, "vzw"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2790
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ERROR:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_5

    .line 2791
    const v0, 0x7f0200c2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    .line 2792
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f09009b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionSim:Ljava/lang/String;

    .line 2794
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_5

    const-string v0, "SBar.NetworkController"

    const-string v1, "updateSimIcon:  override mSimIconId to SIM_CORRUPT"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    :cond_5
    :goto_2
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 2807
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

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2819
    :cond_6
    return-void

    .line 2755
    :cond_7
    const-string v0, "false"

    goto/16 :goto_0

    :cond_8
    const-string v0, "false"

    goto/16 :goto_1

    .line 2801
    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    .line 2802
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionSim:Ljava/lang/String;

    .line 2803
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_5

    const-string v0, "SBar.NetworkController"

    const-string v1, "updateSimIcon: has Service: mSimIconId=0"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private final updateTelephonySignalStrength()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const v6, 0x7f020142

    const v5, 0x7f020141

    const v4, 0x7f020140

    const v3, 0x7f020130

    .line 1303
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_0

    .line 1304
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTelephonySignalStrength mSignalStrength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_2

    .line 1309
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getMaxLevel()I

    move-result v0

    .line 1310
    if-lez v0, :cond_1

    .line 1311
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    .line 1313
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1314
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTelephonySignalStrength mMaxSignalLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    if-ge v0, v7, :cond_3

    .line 1323
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    .line 1325
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_4

    .line 1326
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    .line 1332
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1336
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_5

    const-string v0, "SBar.NetworkController"

    const-string v1, "updateTelephonySignalStrength:  No service"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    packed-switch v0, :pswitch_data_0

    .line 1339
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1340
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 1351
    :goto_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 1352
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

    const-string v2, " NumBars="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
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

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    :cond_6
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 1366
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    .line 1592
    :goto_1
    return-void

    .line 1343
    :pswitch_0
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1344
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto/16 :goto_0

    .line 1347
    :pswitch_1
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1348
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto/16 :goto_0

    .line 1376
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_c

    .line 1379
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "SBar.NetworkController"

    const-string v1, "updateTelephonySignalStrength: mSignalStrength == null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1383
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_9

    const-string v0, "SBar.NetworkController"

    const-string v1, "updateTelephonySignalStrength: EmergencyOnly mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    :cond_9
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1385
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 1386
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f090095

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 1389
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    goto :goto_1

    .line 1403
    :cond_a
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    packed-switch v0, :pswitch_data_1

    .line 1405
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1406
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 1417
    :goto_2
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 1418
    const-string v0, "SBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTelephonySignalStrength hasService={noSignalLevel}: No service icon="

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

    const-string v2, " NumBars="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    :cond_b
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 1427
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    goto/16 :goto_1

    .line 1409
    :pswitch_2
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1410
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto :goto_2

    .line 1413
    :pswitch_3
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1414
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto :goto_2

    .line 1442
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getLevel(Landroid/telephony/SignalStrength;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    .line 1447
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1448
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "SBar.NetworkController"

    const-string v1, "updateTelephonySignalStrength: EmergencyOnly mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    :cond_d
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1450
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 1451
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f090095

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 1454
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    goto/16 :goto_1

    .line 1468
    :cond_e
    if-gez v0, :cond_f

    .line 1469
    const/4 v0, 0x0

    .line 1474
    :cond_f
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    if-le v0, v1, :cond_10

    .line 1475
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    .line 1479
    :cond_10
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1482
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    packed-switch v1, :pswitch_data_2

    .line 1484
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    .line 1493
    :goto_3
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v2, :cond_11

    .line 1494
    const-string v2, "SBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTelephonySignalStrength Service={CDMA, Not-Roaming}, iconLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NumBars="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IconId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v0

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    :cond_11
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSmoothenCDMASignalStrength:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    .line 1505
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1506
    iget-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->lastIconLevelChangeTime:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_13

    .line 1507
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v4, :cond_12

    const-string v4, "SBar.NetworkController"

    const-string v5, "Clock Skew reset lastIconLevelChangeTime"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    :cond_12
    iput-wide v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->lastIconLevelChangeTime:J

    .line 1510
    :cond_13
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mStatusBarHandler:Landroid/os/Handler;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1511
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->currentShowingIconLevel:I

    if-ge v0, v4, :cond_18

    .line 1512
    iget-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->lastIconLevelChangeTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x7d0

    cmp-long v4, v4, v6

    if-lez v4, :cond_14

    .line 1514
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->currentShowingIconLevel:I

    if-lez v4, :cond_14

    .line 1515
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->currentShowingIconLevel:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->currentShowingIconLevel:I

    .line 1516
    iput-wide v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->lastIconLevelChangeTime:J

    .line 1529
    :cond_14
    :goto_4
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->currentShowingIconLevel:I

    if-eq v0, v2, :cond_15

    .line 1530
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mStatusBarHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mStatusBarHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1535
    :cond_15
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->currentShowingIconLevel:I

    .line 1570
    :cond_16
    :goto_5
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    if-ge v0, v2, :cond_1a

    .line 1572
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 1580
    :goto_6
    array-length v2, v1

    if-lt v0, v2, :cond_17

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 1581
    :cond_17
    aget v2, v1, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1588
    aget v0, v1, v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto/16 :goto_1

    .line 1487
    :pswitch_4
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_5_BAR:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    goto/16 :goto_3

    .line 1490
    :pswitch_5
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_6_BAR:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    goto/16 :goto_3

    .line 1519
    :cond_18
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->currentShowingIconLevel:I

    if-le v0, v4, :cond_14

    .line 1520
    iget-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->lastIconLevelChangeTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-lez v4, :cond_14

    .line 1523
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->currentShowingIconLevel:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    if-gt v4, v5, :cond_14

    .line 1524
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->currentShowingIconLevel:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->currentShowingIconLevel:I

    .line 1525
    iput-wide v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->lastIconLevelChangeTime:J

    goto :goto_4

    .line 1550
    :cond_19
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    packed-switch v1, :pswitch_data_3

    .line 1552
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    .line 1561
    :goto_7
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v2, :cond_16

    .line 1562
    const-string v2, "SBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTelephonySignalStrength Service={Not-CDMA, Not-Roaming}, iconLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NumBars="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IconId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v0

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1555
    :pswitch_6
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_5_BAR:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    goto :goto_7

    .line 1558
    :pswitch_7
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_6_BAR:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    goto :goto_7

    .line 1575
    :cond_1a
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    .line 1576
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    goto/16 :goto_6

    .line 1337
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1403
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1482
    :pswitch_data_2
    .packed-switch 0x5
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1550
    :pswitch_data_3
    .packed-switch 0x5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public addCombinedLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    return-void
.end method

.method public addDataDirectionOverlayIconView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    return-void
.end method

.method public addDataTypeIconView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    return-void
.end method

.method public addEmergencyLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmergencyLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    return-void
.end method

.method public addMobileLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    return-void
.end method

.method public addPhoneSignalIconView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    return-void
.end method

.method public addRoamingIconView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    return-void
.end method

.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V
    .locals 1
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    .line 599
    return-void
.end method

.method public addWifiIconView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    return-void
.end method

.method public addWifiLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    return-void
.end method

.method protected createWifiHandler()V
    .locals 4

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 516
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 517
    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 518
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 519
    if-eqz v1, :cond_0

    .line 520
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 522
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4913
    const-string v0, "NetworkController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4914
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

    .line 4917
    const-string v0, "  - telephony ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4918
    const-string v0, "  hasService()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4919
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4921
    const-string v0, "  hasDataService()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4922
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasDataService()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4924
    const-string v0, "  mHspaDataDistinguishable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4925
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4926
    const-string v0, "  mDataConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4927
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4928
    const-string v0, "  mSimState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4929
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4930
    const-string v0, "  mPhoneState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4931
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4932
    const-string v0, "  mDataState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4933
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4934
    const-string v0, "  mDataActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4935
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4936
    const-string v0, "  mDataNetType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4937
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4938
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4939
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4940
    const-string v0, "  mServiceState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4941
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4942
    const-string v0, "  mSignalStrength="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4943
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4944
    const-string v0, "  mLastSignalLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4945
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4946
    const-string v0, "  mNetworkName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4947
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4948
    const-string v0, "  mNetworkNameDefault="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4949
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4950
    const-string v0, "  mNetworkNameSeparator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4951
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4952
    const-string v0, "  mPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4953
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4954
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4955
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4956
    const-string v0, "  mDataDirectionIconId(NetworkType)="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4957
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4958
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4959
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4961
    const-string v0, "  mRoamingIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4962
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4963
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4964
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4967
    const-string v0, "  mSimIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4968
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4969
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4970
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4972
    const-string v0, "  mDataSignalIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4973
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4974
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4975
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4976
    const-string v0, "  mDataTypeIconId(NetworkType)="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4977
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4978
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4979
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4981
    const-string v0, "  mDataTypeIconIdShown(NetworkType)="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4982
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4983
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4984
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4987
    const-string v0, "  - wifi ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4988
    const-string v0, "  mWifiEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4989
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4990
    const-string v0, "  mWifiConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4991
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4992
    const-string v0, "  mWifiRssi="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4993
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiRssi:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4994
    const-string v0, "  mWifiLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4995
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4996
    const-string v0, "  mWifiSsid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4997
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4998
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

    .line 5000
    const-string v0, "  mWifiActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5001
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5003
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    if-eqz v0, :cond_0

    .line 5004
    const-string v0, "  - wimax ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5005
    const-string v0, "  mIsWimaxEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5006
    const-string v0, "  mWimaxState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5007
    const-string v0, "  mWimaxConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5008
    const-string v0, "  mWimaxIdle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5009
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

    .line 5010
    const-string v0, "  mWimaxSignal=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5011
    const-string v0, "  mWimaxState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5012
    const-string v0, "  mWimaxExtraState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5015
    :cond_0
    const-string v0, "  - Bluetooth ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5016
    const-string v0, "  mBtReverseTethered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5017
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5019
    const-string v0, "  - connectivity ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5020
    const-string v0, "  mMobileInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5021
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5022
    const-string v0, "  mWifiInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5023
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5024
    const-string v0, "  mWimaxInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5025
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5027
    const-string v0, "  - icons ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5028
    const-string v0, "  mLastPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5029
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5030
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5031
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5032
    const-string v0, "  mLastDataDirectionIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5033
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5034
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5035
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5036
    const-string v0, "  mLastDataDirectionOverlayIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5037
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5038
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5039
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5040
    const-string v0, "  mLastWifiIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5041
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5042
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5043
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5044
    const-string v0, "  mLastCombinedSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5045
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5046
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5047
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5048
    const-string v0, "  mLastDataTypeIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5049
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5050
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5051
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5052
    const-string v0, "  mLastCombinedLabel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5053
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5054
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5055
    return-void

    .line 4914
    :cond_1
    const-string v0, "DISCONNECTED"

    goto/16 :goto_0
.end method

.method protected getResourceName(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 5059
    if-eqz p1, :cond_1

    .line 5060
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 5063
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 5064
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 5065
    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5066
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 5073
    :cond_0
    :goto_0
    return-object v0

    .line 5069
    :catch_0
    move-exception v0

    .line 5070
    const-string v0, "(unknown)"

    goto :goto_0

    .line 5073
    :cond_1
    const-string v0, "(none)"

    goto :goto_0
.end method

.method public hasMobileDataFeature()Z
    .locals 1

    .prologue
    .line 510
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    return v0
.end method

.method public isEmergencyOnly()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1597
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 1610
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1618
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataState()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 1626
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1632
    :goto_0
    :pswitch_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1610
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 1618
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 845
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 846
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 849
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_1

    .line 850
    const-string v0, "SBar.NetworkController"

    const-string v1, "onReceive: WifiManager.RSSI_CHANGED_ACTION | WIFI_STATE_CHANGED_ACTION | NETWORK_STATE_CHANGED_ACTION Received"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiState(Landroid/content/Intent;)V

    .line 853
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 920
    :cond_2
    :goto_0
    return-void

    .line 857
    :cond_3
    const-string v1, "com.motorola.android.intent.action.GET_REAL_DATA_NET_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 858
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateRealDataNetType(Landroid/content/Intent;)V

    goto :goto_0

    .line 861
    :cond_4
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 862
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_5

    const-string v0, "SBar.NetworkController"

    const-string v1, "onReceive: TelephonyIntents.ACTION_SIM_STATE_CHANGED) Received"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateSimState(Landroid/content/Intent;)V

    .line 877
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto :goto_0

    .line 878
    :cond_6
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 879
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_7

    const-string v0, "SBar.NetworkController"

    const-string v1, "onReceive: Telephony.Intents.SPN_STRINGS_UPDATED_ACTION Received"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_7
    const-string v0, "showSpn"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "spn"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "showPlmn"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "plmn"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 884
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto :goto_0

    .line 885
    :cond_8
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 887
    :cond_9
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_a

    const-string v0, "SBar.NetworkController"

    const-string v1, "onReceive: ConnectivityManager.CONNECTIVITY_ACTION || INET_CONDITION_ACTION Received"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateConnectivity(Landroid/content/Intent;)V

    .line 889
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto :goto_0

    .line 893
    :cond_b
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 894
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_c

    const-string v0, "SBar.NetworkController"

    const-string v1, "onReceive: ACTION_BOOT_COMPLETED Received"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mStatusBarHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 897
    :cond_d
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 898
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_e

    const-string v0, "SBar.NetworkController"

    const-string v1, "onReceive: Intent.ACTION_CONFIGURATION_CHANGED Received"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_e
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040523

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    .line 901
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 902
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

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_f
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 905
    :cond_10
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 906
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_11

    const-string v0, "SBar.NetworkController"

    const-string v1, "onReceive: Intent.ACTION_AIRPLANE_MODE_CHANGED Received"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateAirplaneMode()V

    .line 908
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 909
    :cond_12
    const-string v1, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 912
    :cond_13
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_14

    .line 913
    const-string v0, "SBar.NetworkController"

    const-string v1, "onReceive: WimaxManagerConstants.NET_4G_STATE_CHANGED_ACTION || SIGNAL_LEVEL_CHANGED_ACTION || WIMAX_NETWORK_STATE_CHANGED_ACTION Received"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_14
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxState(Landroid/content/Intent;)V

    .line 917
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0
.end method

.method public refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V
    .locals 13

    .prologue
    .line 604
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 606
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-nez v0, :cond_7

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setWifiIndicators(ZIILjava/lang/String;)V

    .line 613
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_2

    .line 616
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWifiIconId:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWifiIntervalTimestamp:J

    cmp-long v0, v11, v0

    if-lez v0, :cond_2

    .line 625
    :cond_1
    const-string v1, "SBar.NetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshSignalCluster: wifi: mWifiConnected="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Wifi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "/"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Activity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "/"

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Accessibility="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const-wide/32 v0, 0x1d4c0

    add-long/2addr v0, v11

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWifiIntervalTimestamp:J

    .line 640
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWifiIconId:I

    .line 641
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWifiActivityIconId:I

    .line 645
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_1b

    .line 657
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_c

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_5
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionSim:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v10}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setMobileDataIndicators(ZIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 672
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_6

    .line 675
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-nez v0, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxIconId:I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_6
    if-ne v1, v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxRoamingIconId:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxSimIconId:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    if-ne v0, v1, :cond_3

    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxSignalIntervalTimestamp:J

    cmp-long v0, v11, v0

    if-lez v0, :cond_4

    .line 686
    :cond_3
    const-string v1, "SBar.NetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshSignalCluster: wimax: Signal="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_7
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_10

    const-string v0, "/"

    :goto_9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_a
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Roaming="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_13

    const-string v0, "/"

    :goto_c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mSimIconId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_15

    const-string v0, "/"

    :goto_e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Accessibility="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionSim:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const-wide/32 v0, 0x1d4c0

    add-long/2addr v0, v11

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxSignalIntervalTimestamp:J

    .line 707
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_f
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxIconId:I

    .line 708
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxRoamingIconId:I

    .line 709
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxSimIconId:I

    .line 711
    :cond_4
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxDataTypeIconId:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxActivityIconId:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    if-ne v0, v1, :cond_5

    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxDataIntervalTimestamp:J

    cmp-long v0, v11, v0

    if-lez v0, :cond_6

    .line 720
    :cond_5
    const-string v1, "SBar.NetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshSignalCluster: wimax: mHasMobileDataFeature=true DataTypeShown="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_18

    const-string v0, "/"

    :goto_11
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Activity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_1a

    const-string v0, "/"

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Accessibility="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const-wide/32 v0, 0x1d4c0

    add-long/2addr v0, v11

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxDataIntervalTimestamp:J

    .line 734
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxDataTypeIconId:I

    .line 735
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerWimaxActivityIconId:I

    .line 836
    :cond_6
    :goto_14
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setIsAirplaneMode(ZI)V

    .line 837
    return-void

    .line 606
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 625
    :cond_8
    const-string v0, ""

    goto/16 :goto_1

    :cond_9
    const-string v0, ""

    goto/16 :goto_2

    :cond_a
    const-string v0, ""

    goto/16 :goto_3

    :cond_b
    const-string v0, ""

    goto/16 :goto_4

    .line 657
    :cond_c
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    goto/16 :goto_5

    .line 675
    :cond_d
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    goto/16 :goto_6

    .line 686
    :cond_e
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    goto/16 :goto_7

    :cond_f
    const-string v0, ""

    goto/16 :goto_8

    :cond_10
    const-string v0, ""

    goto/16 :goto_9

    :cond_11
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    goto/16 :goto_a

    :cond_12
    const-string v0, ""

    goto/16 :goto_b

    :cond_13
    const-string v0, ""

    goto/16 :goto_c

    :cond_14
    const-string v0, ""

    goto/16 :goto_d

    :cond_15
    const-string v0, ""

    goto/16 :goto_e

    .line 707
    :cond_16
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    goto/16 :goto_f

    .line 720
    :cond_17
    const-string v0, ""

    goto/16 :goto_10

    :cond_18
    const-string v0, ""

    goto/16 :goto_11

    :cond_19
    const-string v0, ""

    goto/16 :goto_12

    :cond_1a
    const-string v0, ""

    goto/16 :goto_13

    .line 751
    :cond_1b
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_1f

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_15
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionSim:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v10}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setMobileDataIndicators(ZIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 766
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_6

    .line 769
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-nez v0, :cond_1c

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileIconId:I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_20

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_16
    if-ne v1, v0, :cond_1c

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileRoamingIconId:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    if-ne v0, v1, :cond_1c

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileSimIconId:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    if-ne v0, v1, :cond_1c

    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileSignalIntervalTimestamp:J

    cmp-long v0, v11, v0

    if-lez v0, :cond_1d

    .line 780
    :cond_1c
    const-string v1, "SBar.NetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshSignalCluster: mobile: Signal="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_17
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_23

    const-string v0, "/"

    :goto_19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_1a
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Roaming="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_25

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_26

    const-string v0, "/"

    :goto_1c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mSimIconId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_27

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_28

    const-string v0, "/"

    :goto_1e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Accessibility="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionSim:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const-wide/32 v0, 0x1d4c0

    add-long/2addr v0, v11

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileSignalIntervalTimestamp:J

    .line 801
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_29

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_1f
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileIconId:I

    .line 802
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileRoamingIconId:I

    .line 803
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileSimIconId:I

    .line 805
    :cond_1d
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-nez v0, :cond_1e

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileDataTypeIconId:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    if-ne v0, v1, :cond_1e

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileActivityIconId:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    if-ne v0, v1, :cond_1e

    iget-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileDataIntervalTimestamp:J

    cmp-long v0, v11, v0

    if-lez v0, :cond_6

    .line 814
    :cond_1e
    const-string v1, "SBar.NetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshSignalCluster: mobile: mHasMobileDataFeature="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " DataTypeShown="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_2b

    const-string v0, "/"

    :goto_21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Activity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_2c

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_2d

    const-string v0, "/"

    :goto_23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Accessibility="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const-wide/32 v0, 0x1d4c0

    add-long/2addr v0, v11

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileDataIntervalTimestamp:J

    .line 829
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileDataTypeIconId:I

    .line 830
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLoggerMobileActivityIconId:I

    goto/16 :goto_14

    .line 751
    :cond_1f
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto/16 :goto_15

    .line 769
    :cond_20
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto/16 :goto_16

    .line 780
    :cond_21
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto/16 :goto_17

    :cond_22
    const-string v0, ""

    goto/16 :goto_18

    :cond_23
    const-string v0, ""

    goto/16 :goto_19

    :cond_24
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto/16 :goto_1a

    :cond_25
    const-string v0, ""

    goto/16 :goto_1b

    :cond_26
    const-string v0, ""

    goto/16 :goto_1c

    :cond_27
    const-string v0, ""

    goto/16 :goto_1d

    :cond_28
    const-string v0, ""

    goto/16 :goto_1e

    .line 801
    :cond_29
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto/16 :goto_1f

    .line 814
    :cond_2a
    const-string v0, ""

    goto/16 :goto_20

    :cond_2b
    const-string v0, ""

    goto/16 :goto_21

    :cond_2c
    const-string v0, ""

    goto :goto_22

    :cond_2d
    const-string v0, ""

    goto :goto_23
.end method

.method refreshViews()V
    .locals 12

    .prologue
    .line 3808
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    .line 3809
    const/4 v4, 0x0

    .line 3811
    const/4 v3, 0x0

    .line 3813
    const/4 v2, 0x0

    .line 3814
    const-string v1, ""

    .line 3815
    const-string v0, ""

    .line 3816
    const-string v0, ""

    .line 3818
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v8

    .line 3820
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    .line 3826
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateTelephonySignalStrength()V

    .line 3827
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateRoamingIcon()V

    .line 3828
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateSimIcon()V

    .line 3831
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 3832
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxIcons()V

    .line 3833
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataIcon()V

    .line 3834
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataActivityIcon()V

    .line 3840
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiIcons()V

    .line 3841
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiActivityIcon()V

    .line 3844
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3845
    const-string v0, "SBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshViews: mDataConnected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3849
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-nez v0, :cond_13

    .line 3850
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 3851
    const-string v0, ""

    .line 3964
    :goto_0
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v5, :cond_1

    .line 3965
    const-string v5, "SBar.NetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews: mWifiConnected="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3968
    :cond_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v5, :cond_1c

    .line 3998
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    if-nez v1, :cond_1b

    .line 3999
    const v1, 0x7f090074

    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4008
    :cond_2
    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 4010
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 4011
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 4013
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v5, :cond_60

    .line 4014
    const-string v5, "SBar.NetworkController"

    const-string v6, "refreshViews: wifi active:"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4016
    const-string v5, "SBar.NetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews:   wifiLabel=\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4018
    const-string v5, "SBar.NetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews:   combinedActivityIconId="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " = mWifiActivityIconId="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4023
    const-string v5, "SBar.NetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews:   combinedSignalIconId="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " = mWifiIconId="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4027
    const-string v5, "SBar.NetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews:   mContentDescriptionCombinedSignal=\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4029
    const-string v5, "SBar.NetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews:   combinedLabel=\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    move v4, v2

    move-object v2, v1

    .line 4054
    :goto_2
    sget-boolean v6, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v6, :cond_3

    .line 4055
    const-string v6, "SBar.NetworkController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "refreshViews: mBluetoothTethered="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4058
    :cond_3
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    if-eqz v6, :cond_4

    .line 4059
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v3, 0x7f09001c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4060
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherIconId:I

    .line 4061
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v6, 0x7f090061

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 4064
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 4066
    sget-boolean v6, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v6, :cond_4

    .line 4067
    const-string v6, "SBar.NetworkController"

    const-string v9, "refreshViews: bluetooth tethering active:"

    invoke-static {v6, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4069
    const-string v6, "SBar.NetworkController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "refreshViews:   combinedActivityIconId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " = mBluetoothTetherIconId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherIconId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherIconId:I

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4074
    const-string v6, "SBar.NetworkController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "refreshViews:   mContentDescriptionCombinedSignal=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4076
    const-string v6, "SBar.NetworkController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "refreshViews:   combinedLabel=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4081
    :cond_4
    sget-boolean v6, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v6, :cond_5

    .line 4082
    const-string v6, "SBar.NetworkController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "refreshViews: mAirplaneMode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4083
    const-string v6, "SBar.NetworkController"

    const-string v9, "refreshViews: or no service:"

    invoke-static {v6, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4084
    const-string v6, "SBar.NetworkController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "refreshViews:   mServiceState="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "==null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4085
    const-string v6, "SBar.NetworkController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "refreshViews:   || ( hasService()="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "==false && "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4086
    const-string v9, "SBar.NetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "refreshViews:   mServiceState.isEmergencyOnly()="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v6, :cond_1f

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    :goto_3
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "==false )"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4090
    :cond_5
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    const/16 v9, 0x9

    if-ne v6, v9, :cond_20

    const/4 v6, 0x1

    .line 4091
    :goto_4
    if-eqz v6, :cond_6

    .line 4093
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 4096
    :cond_6
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eqz v9, :cond_23

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v9, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v9

    if-nez v9, :cond_23

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v9

    if-nez v9, :cond_23

    .line 4112
    :cond_7
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v9, 0x7f090062

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 4114
    const v6, 0x7f020099

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    .line 4115
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 4116
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    .line 4118
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4119
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    .line 4120
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 4123
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v6, :cond_21

    .line 4125
    const-string v0, ""

    .line 4139
    :goto_5
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    packed-switch v6, :pswitch_data_0

    .line 4141
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 4142
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 4143
    const v6, 0x7f020099

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    .line 4157
    :goto_6
    sget-boolean v6, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v6, :cond_5f

    .line 4158
    const-string v6, "SBar.NetworkController"

    const-string v7, "refreshViews: airplane mode or no service:"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4160
    const-string v6, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews:   mPhoneSignalIconId="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4162
    const-string v6, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews:   mDataSignalIconId="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4164
    const-string v6, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews:   mAirplaneIconId="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4166
    const-string v6, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews:   mDataTypeIconId(NetworkType)="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4169
    const-string v6, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews:   mDataTypeIconIdShown(NetworkType)="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4172
    const-string v6, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews:   wifiLabel=\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4174
    const-string v6, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews:   mContentDescriptionCombinedSignal=\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    move v5, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 4274
    :goto_7
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 4275
    const-string v0, "SBar.NetworkController"

    const-string v7, "refreshViews: PRE Expostfacto adjustment to networkType icon"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4276
    const-string v0, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews:   mDataTypeIconId="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " mMobileActivityIconId="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " mMobileInetCondition="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4283
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 4284
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 4285
    const-string v0, "SBar.NetworkController"

    const-string v7, "Data is enabled"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4287
    :cond_9
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v0, :cond_2c

    .line 4288
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_a

    .line 4289
    const-string v0, "SBar.NetworkController"

    const-string v7, "Data is enabled, wifi is active"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4291
    :cond_a
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigShowBothWifiAndMobileNetwork:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigAlwaysShowAttachedNetworkType:Z

    if-eqz v0, :cond_2a

    .line 4296
    :cond_b
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 4297
    const-string v0, "SBar.NetworkController"

    const-string v7, "Data is enabled, wifi is active, show both is false: show \"suspended-for-wifi icon\""

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4299
    :cond_c
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    .line 4300
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 4301
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_d

    .line 4302
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    .line 4599
    :cond_d
    :goto_8
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_e

    .line 4600
    const-string v0, "SBar.NetworkController"

    const-string v7, "refreshViews: POST Expostfacto adjustment to networkType icon"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4601
    const-string v0, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews:   mDataTypeIconIdShown="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " mMobileActivityIconId="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " mMobileInetCondition="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4612
    :cond_e
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    if-nez v0, :cond_f

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 4614
    :cond_f
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_10

    .line 4615
    const-string v0, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews:   adjusted mMobileActivityIconId="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4621
    :cond_10
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_11

    .line 4624
    const-string v7, "SBar.NetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews: SUMMARY:\n connected to={"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v0, :cond_3b

    const-string v0, " wifi"

    :goto_9
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    if-eqz v0, :cond_3c

    const-string v0, " data"

    :goto_a
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " }\n level="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_3d

    const-string v0, "null"

    :goto_b
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "\n combinedSignalIconId=0x"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "\n  combinedActivityIconId=0x"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n  mAirplaneMode="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n  emergencyOnly="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n  mDataActivity="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n  mPhoneSignalIconId=0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n  mDataDirectionIconId(NetworkType)=0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n  mDataSignalIconId=0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n  mDataTypeIconId(NetworkType)=0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n  mSimIconId=0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n  mDataTypeIconIdShown(NetworkType)=0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n  mWimaxIconId=0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n  mWifiIconId=0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n  mBluetoothTetherIconId=0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherIconId:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherIconId:I

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4658
    :cond_11
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    if-ne v0, v4, :cond_12

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    if-ne v0, v4, :cond_12

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastMobileDataDirectionOverlayIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    if-ne v0, v4, :cond_12

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastRoamingIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    if-ne v0, v4, :cond_12

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    if-ne v0, v4, :cond_12

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    if-ne v0, v4, :cond_12

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    if-ne v0, v4, :cond_12

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-ne v0, v4, :cond_12

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSimIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    if-eq v0, v4, :cond_3e

    .line 4674
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .line 4675
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    goto :goto_c

    .line 3861
    :cond_13
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    if-eqz v0, :cond_14

    .line 3862
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 3880
    :goto_d
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    if-eqz v5, :cond_19

    .line 3881
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 3925
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 3926
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 3927
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 3929
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 3932
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v4, :cond_61

    .line 3933
    const-string v4, "SBar.NetworkController"

    const-string v5, "refreshViews: mobile active:"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3935
    const-string v4, "SBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshViews:   combinedLabel=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3937
    const-string v4, "SBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshViews:   combinedActivityIconId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = mMobileActivityIconId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3940
    const-string v4, "SBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshViews:   combinedSignalIconId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = mDataSignalIconId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3943
    const-string v4, "SBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshViews:   roamingIconId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3945
    const-string v4, "SBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshViews:   mContentDescriptionCombinedSignal=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    move v3, v2

    move v2, v1

    move-object v1, v0

    goto/16 :goto_0

    .line 3863
    :cond_14
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    if-nez v0, :cond_15

    if-eqz v8, :cond_18

    .line 3864
    :cond_15
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    if-nez v0, :cond_16

    if-eqz v8, :cond_17

    .line 3866
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto/16 :goto_d

    .line 3869
    :cond_17
    const-string v0, ""

    goto/16 :goto_d

    .line 3874
    :cond_18
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto/16 :goto_d

    .line 3950
    :cond_19
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v5, :cond_1a

    .line 3952
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto/16 :goto_0

    .line 3957
    :cond_1a
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 3958
    const/4 v2, 0x0

    .line 3959
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 3960
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    goto/16 :goto_0

    .line 4001
    :cond_1b
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    .line 4002
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v2, :cond_2

    .line 4003
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "xxxxXXXXxxxxXXXX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 4034
    :cond_1c
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-eqz v5, :cond_1e

    .line 4035
    const-string v5, ""

    .line 4040
    :goto_e
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 4042
    sget-boolean v6, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v6, :cond_1d

    .line 4043
    const-string v6, "SBar.NetworkController"

    const-string v9, "refreshViews: wifi disabled:"

    invoke-static {v6, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4045
    const-string v6, "SBar.NetworkController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "refreshViews:   wifiLabel=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4047
    const-string v6, "SBar.NetworkController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "refreshViews:   mWifiActivityIconId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    move-object v11, v5

    move v5, v4

    move v4, v2

    move-object v2, v1

    move-object v1, v11

    goto/16 :goto_2

    .line 4037
    :cond_1e
    const v5, 0x7f090073

    invoke-virtual {v7, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_e

    .line 4086
    :cond_1f
    const-string v6, "null"

    goto/16 :goto_3

    .line 4090
    :cond_20
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 4127
    :cond_21
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-eqz v1, :cond_22

    .line 4129
    const-string v1, ""

    .line 4134
    :goto_f
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 4135
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto/16 :goto_5

    .line 4131
    :cond_22
    const v1, 0x7f090073

    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 4132
    goto :goto_f

    .line 4146
    :pswitch_0
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 4147
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 4148
    const v6, 0x7f02012f

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    goto/16 :goto_6

    .line 4151
    :pswitch_1
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 4152
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 4153
    const v6, 0x7f02013f

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    goto/16 :goto_6

    .line 4178
    :cond_23
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    if-nez v9, :cond_5f

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v9, :cond_5f

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    if-nez v9, :cond_5f

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-nez v9, :cond_5f

    if-nez v6, :cond_5f

    .line 4185
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v2, :cond_24

    .line 4186
    const-string v2, "SBar.NetworkController"

    const-string v3, "refreshViews: pretty much totally disconnected:"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4187
    const-string v2, "SBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshViews:   mDataConnected="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4188
    const-string v2, "SBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshViews:   mWifiConnected="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4189
    const-string v2, "SBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshViews:   mBluetoothTethered="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4190
    const-string v2, "SBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshViews:   mWimaxConnected="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4193
    :cond_24
    const v2, 0x7f090073

    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4196
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-eqz v2, :cond_27

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 4198
    :goto_10
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :goto_11
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 4226
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 4227
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    .line 4228
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 4231
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNoRoaming:Z

    if-nez v3, :cond_29

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingNoData:Z

    if-eqz v3, :cond_29

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 4233
    const v3, 0x7f020074

    .line 4234
    sget-boolean v6, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v6, :cond_25

    .line 4235
    const-string v6, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews: roamingIconId=R.drawable.stat_sys_data_connected_roam = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " (#A)"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4253
    :cond_25
    :goto_12
    sget-boolean v6, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v6, :cond_26

    .line 4254
    const-string v6, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews:   mPhoneSignalIconId="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4257
    const-string v6, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews:   mContentDescriptionCombinedSignal=\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4259
    const-string v6, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews:   combinedLabel=\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4261
    const-string v6, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews:   roamingIconId="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4263
    const-string v6, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews:   mDataTypeIconId(NetworkType)="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4266
    const-string v6, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews:   mDataTypeIconIdShown(NetworkType)="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    move v6, v2

    move-object v2, v1

    move-object v1, v0

    move v11, v3

    move-object v3, v5

    move v5, v11

    goto/16 :goto_7

    .line 4196
    :cond_27
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    goto/16 :goto_10

    .line 4198
    :cond_28
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    goto/16 :goto_11

    .line 4244
    :cond_29
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 4245
    sget-boolean v6, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v6, :cond_25

    .line 4246
    const-string v6, "SBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews: roamingIconId var = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " (#B)"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 4305
    :cond_2a
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_2b

    .line 4306
    const-string v0, "SBar.NetworkController"

    const-string v7, "Data is enabled, wifi is active, show both is false: show \"no icon\""

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4308
    :cond_2b
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    .line 4309
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 4310
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_d

    .line 4311
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    goto/16 :goto_8

    .line 4315
    :cond_2c
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_2d

    .line 4316
    const-string v0, "SBar.NetworkController"

    const-string v7, "Data is enabled, Wifi is inactive: check for attached mode"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4318
    :cond_2d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v0

    if-nez v0, :cond_33

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isLte()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    const/4 v7, 0x2

    if-eq v0, v7, :cond_33

    .line 4331
    :cond_2e
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_2f

    .line 4332
    const-string v0, "SBar.NetworkController"

    const-string v7, "is GSM"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4334
    :cond_2f
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isConnectingOrAttachedMobileDataTypeIconShown()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 4335
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_30

    .line 4336
    const-string v0, "SBar.NetworkController"

    const-string v7, "Data is enabled, wifi is inactive, is GSM, attached icon enabled: show \"attached icon\""

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4341
    :cond_30
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    .line 4342
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 4343
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_d

    .line 4344
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    goto/16 :goto_8

    .line 4347
    :cond_31
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_32

    .line 4348
    const-string v0, "SBar.NetworkController"

    const-string v7, "Show normal data and activity icons"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4350
    :cond_32
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    .line 4351
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 4352
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    goto/16 :goto_8

    .line 4355
    :cond_33
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_34

    .line 4356
    const-string v0, "SBar.NetworkController"

    const-string v7, "is CDMA"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4358
    :cond_34
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_35

    .line 4359
    const-string v0, "SBar.NetworkController"

    const-string v7, "Show normal data and activity icons"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4361
    :cond_35
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    .line 4362
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 4363
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    goto/16 :goto_8

    .line 4367
    :cond_36
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isDisabledMobileDataTypeIconShown()Z

    move-result v0

    if-nez v0, :cond_37

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigAlwaysShowAttachedNetworkType:Z

    if-eqz v0, :cond_39

    .line 4372
    :cond_37
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_38

    .line 4373
    const-string v0, "SBar.NetworkController"

    const-string v7, "Data is disabled, show \"disabled icon\""

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4375
    :cond_38
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    .line 4376
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 4377
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_d

    .line 4378
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    goto/16 :goto_8

    .line 4381
    :cond_39
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_3a

    .line 4382
    const-string v0, "SBar.NetworkController"

    const-string v7, "Data is disabled, show \"no icon\""

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4384
    :cond_3a
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    .line 4385
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 4386
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_d

    .line 4387
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    goto/16 :goto_8

    .line 4624
    :cond_3b
    const-string v0, ""

    goto/16 :goto_9

    :cond_3c
    const-string v0, ""

    goto/16 :goto_a

    :cond_3d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    .line 4679
    :cond_3e
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eq v0, v4, :cond_3f

    .line 4680
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    .line 4684
    :cond_3f
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    if-eq v0, v4, :cond_41

    .line 4685
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    .line 4686
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 4687
    const/4 v0, 0x0

    move v4, v0

    :goto_13
    if-ge v4, v7, :cond_41

    .line 4688
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4690
    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    if-nez v9, :cond_40

    .line 4691
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4687
    :goto_14
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_13

    .line 4693
    :cond_40
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4694
    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4695
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_14

    .line 4702
    :cond_41
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    if-eq v0, v4, :cond_42

    .line 4703
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    .line 4704
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 4705
    const/4 v0, 0x0

    move v4, v0

    :goto_15
    if-ge v4, v7, :cond_42

    .line 4706
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4707
    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4708
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4705
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_15

    .line 4713
    :cond_42
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSimIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    if-eq v0, v4, :cond_46

    .line 4714
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_43

    .line 4715
    const-string v0, "SBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changing Sim icon id to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4719
    :cond_43
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSimIconId:I

    .line 4720
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 4721
    const/4 v0, 0x0

    move v4, v0

    :goto_16
    if-ge v4, v7, :cond_46

    .line 4722
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4723
    if-eqz v0, :cond_44

    .line 4724
    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    if-nez v9, :cond_45

    .line 4725
    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4721
    :cond_44
    :goto_17
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_16

    .line 4727
    :cond_45
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4728
    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4729
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionSim:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 4737
    :cond_46
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    if-eq v0, v4, :cond_48

    .line 4738
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    .line 4739
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 4740
    const/4 v0, 0x0

    move v4, v0

    :goto_18
    if-ge v4, v7, :cond_48

    .line 4741
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4742
    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    if-nez v9, :cond_47

    .line 4743
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4740
    :goto_19
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_18

    .line 4745
    :cond_47
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4746
    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4747
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 4753
    :cond_48
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    if-eq v0, v4, :cond_4a

    .line 4754
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    .line 4755
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 4756
    const/4 v0, 0x0

    move v4, v0

    :goto_1a
    if-ge v4, v7, :cond_4a

    .line 4757
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4758
    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    if-nez v9, :cond_49

    .line 4759
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4756
    :goto_1b
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1a

    .line 4761
    :cond_49
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4762
    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4763
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1b

    .line 4769
    :cond_4a
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    if-eq v0, v6, :cond_4b

    .line 4770
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    .line 4771
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 4772
    const/4 v0, 0x0

    move v4, v0

    :goto_1c
    if-ge v4, v7, :cond_4b

    .line 4773
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4774
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4775
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4772
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1c

    .line 4781
    :cond_4b
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    if-eq v0, v4, :cond_4d

    .line 4782
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    .line 4783
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4784
    const/4 v0, 0x0

    move v4, v0

    :goto_1d
    if-ge v4, v6, :cond_4d

    .line 4785
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4786
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    if-nez v7, :cond_4c

    .line 4787
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4784
    :goto_1e
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1d

    .line 4789
    :cond_4c
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4790
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4791
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1e

    .line 4799
    :cond_4d
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    if-eq v0, v4, :cond_50

    .line 4800
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_4e

    .line 4801
    const-string v0, "SBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changing data overlay icon id to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4805
    :cond_4e
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    .line 4806
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4807
    const/4 v0, 0x0

    move v4, v0

    :goto_1f
    if-ge v4, v6, :cond_50

    .line 4808
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4809
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    if-nez v7, :cond_4f

    .line 4810
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4807
    :goto_20
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1f

    .line 4812
    :cond_4f
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4813
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4814
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_20

    .line 4819
    :cond_50
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastMobileDataDirectionOverlayIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    if-eq v0, v4, :cond_53

    .line 4820
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_51

    .line 4821
    const-string v0, "SBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changing data overlay icon id to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4825
    :cond_51
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastMobileDataDirectionOverlayIconId:I

    .line 4826
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4827
    const/4 v0, 0x0

    move v4, v0

    :goto_21
    if-ge v4, v6, :cond_53

    .line 4828
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4829
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    if-nez v7, :cond_52

    .line 4830
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4827
    :goto_22
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_21

    .line 4832
    :cond_52
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4833
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4834
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_22

    .line 4842
    :cond_53
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastRoamingIconId:I

    if-eq v0, v5, :cond_57

    .line 4843
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_54

    .line 4844
    const-string v0, "SBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changing roaming icon id to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4848
    :cond_54
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastRoamingIconId:I

    .line 4849
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4850
    const/4 v0, 0x0

    move v4, v0

    :goto_23
    if-ge v4, v6, :cond_57

    .line 4851
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4852
    if-eqz v0, :cond_55

    .line 4853
    if-nez v5, :cond_56

    .line 4854
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4850
    :cond_55
    :goto_24
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_23

    .line 4856
    :cond_56
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4857
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4858
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_24

    .line 4866
    :cond_57
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 4867
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    .line 4868
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 4869
    const/4 v0, 0x0

    move v4, v0

    :goto_25
    if-ge v4, v5, :cond_58

    .line 4870
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4871
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4869
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_25

    .line 4876
    :cond_58
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4877
    const/4 v0, 0x0

    move v3, v0

    :goto_26
    if-ge v3, v4, :cond_5a

    .line 4878
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4879
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4880
    const-string v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 4881
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4877
    :goto_27
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_26

    .line 4883
    :cond_59
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_27

    .line 4888
    :cond_5a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4889
    const/4 v0, 0x0

    move v2, v0

    :goto_28
    if-ge v2, v3, :cond_5c

    .line 4890
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4891
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4892
    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 4893
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4889
    :goto_29
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_28

    .line 4895
    :cond_5b
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_29

    .line 4900
    :cond_5c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmergencyLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4901
    const/4 v0, 0x0

    move v2, v0

    :goto_2a
    if-ge v2, v3, :cond_5e

    .line 4902
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmergencyLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4903
    if-nez v8, :cond_5d

    .line 4904
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4901
    :goto_2b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2a

    .line 4906
    :cond_5d
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4907
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2b

    .line 4910
    :cond_5e
    return-void

    :cond_5f
    move v6, v5

    move v5, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_7

    :cond_60
    move v5, v4

    move v4, v2

    move-object v2, v1

    goto/16 :goto_2

    :cond_61
    move v4, v3

    move v3, v2

    move v2, v1

    move-object v1, v0

    goto/16 :goto_0

    .line 4139
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected registerPhoneStateListener(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 526
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    .line 527
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x1e1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 533
    return-void
.end method

.method protected updateAirplaneMode()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1297
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    .line 1299
    return-void

    :cond_0
    move v0, v1

    .line 1297
    goto :goto_0
.end method

.method protected updateConnectivity(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3687
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3688
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

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3691
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3693
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 3696
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    .line 3697
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    if-eqz v0, :cond_4

    .line 3698
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    .line 3699
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 3705
    :goto_1
    const-string v0, "inetCondition"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3707
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v4, :cond_1

    .line 3708
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

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3709
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

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3713
    :cond_1
    const/16 v4, 0x32

    if-le v0, v4, :cond_5

    .line 3715
    :goto_2
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_2

    .line 3717
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    invoke-direct {p0, v0, v4, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->signalIconLog(Ljava/lang/String;II)V

    .line 3724
    :cond_2
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

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3729
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    packed-switch v0, :pswitch_data_0

    .line 3779
    :goto_3
    :pswitch_0
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_d

    .line 3780
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    .line 3801
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 3802
    return-void

    :cond_3
    move v0, v2

    .line 3696
    goto/16 :goto_0

    .line 3701
    :cond_4
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    .line 3702
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    move v1, v2

    .line 3713
    goto :goto_2

    .line 3731
    :pswitch_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3732
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_6

    .line 3733
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-eq v0, v1, :cond_6

    .line 3734
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

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3737
    :cond_6
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    goto :goto_3

    .line 3739
    :cond_7
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    goto :goto_3

    .line 3743
    :pswitch_2
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3744
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_8

    .line 3745
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetCondition:I

    if-eq v0, v1, :cond_8

    .line 3746
    const-string v0, "SBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateConnectivity:  Change mWifiInetCondition= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3749
    :cond_8
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetCondition:I

    goto :goto_3

    .line 3751
    :cond_9
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetCondition:I

    goto :goto_3

    .line 3755
    :pswitch_3
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3756
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_a

    .line 3757
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetCondition:I

    if-eq v0, v1, :cond_a

    .line 3758
    const-string v0, "SBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateConnectivity:  Change mWimaxInetCondition= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3761
    :cond_a
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetCondition:I

    goto/16 :goto_3

    .line 3763
    :cond_b
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetCondition:I

    goto/16 :goto_3

    .line 3767
    :pswitch_4
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->CHATTY:Z

    if-eqz v0, :cond_c

    .line 3768
    const-string v0, "SBar.NetworkController"

    const-string v1, "there is no connection, reset iNetCondition"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3770
    :cond_c
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    .line 3771
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetCondition:I

    .line 3772
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetCondition:I

    goto/16 :goto_3

    .line 3782
    :cond_d
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    goto/16 :goto_4

    .line 3729
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
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 3441
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 3442
    const-string v1, "SBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNetworkName: showSpn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " spn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " showPlmn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " plmn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3454
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPlmnAndSpn:Z

    .line 3456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3457
    const/4 v1, 0x0

    .line 3459
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 3460
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    .line 3463
    :cond_1
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 3464
    if-eqz v1, :cond_3

    .line 3465
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPlmnAndSpn:Z

    if-eqz v1, :cond_2

    if-eqz p4, :cond_2

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3466
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3467
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3476
    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    .line 3477
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 3483
    :goto_1
    return-void

    .line 3472
    :cond_3
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3479
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method protected updateSimState(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 1162
    const-string v0, "ss"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1163
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1164
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 1196
    :goto_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkController;->INFO:Z

    if-eqz v0, :cond_0

    .line 1197
    const-string v1, "SBar.NetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSimState: mSimState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v3, :cond_9

    const-string v0, "IccCard.State.ABSENT"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 1214
    return-void

    .line 1166
    :cond_1
    const-string v1, "ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1167
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1169
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

    .line 1175
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1177
    :cond_4
    const-string v1, "LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1178
    const-string v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1179
    const-string v1, "PIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1180
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1182
    :cond_5
    const-string v1, "PUK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1183
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 1186
    :cond_6
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 1189
    :cond_7
    const-string v1, "ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1190
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ERROR:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 1193
    :cond_8
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 1197
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v3, :cond_a

    const-string v0, "IccCard.State.READY"

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v3, :cond_b

    const-string v0, "IccCard.State.PIN_REQUIRED"

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v3, :cond_c

    const-string v0, "IccCard.State.PUK_REQUIRED"

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v3, :cond_d

    const-string v0, "IccCard.State.PERSO_LOCKED"

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ERROR:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v3, :cond_e

    const-string v0, "IccCard.State.ERROR"

    goto/16 :goto_1

    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v3, :cond_f

    const-string v0, "IccCard.State.UNKNOWN"

    goto/16 :goto_1

    :cond_f
    const-string v0, "-unknown-"

    goto/16 :goto_1
.end method

.method protected updateWifiActivityIcon()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3589
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v0, :cond_1

    .line 3590
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3591
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 3611
    :goto_0
    return-void

    .line 3593
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3604
    :pswitch_0
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto :goto_0

    .line 3595
    :pswitch_1
    const v0, 0x7f0200a1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto :goto_0

    .line 3598
    :pswitch_2
    const v0, 0x7f0200a3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto :goto_0

    .line 3601
    :pswitch_3
    const v0, 0x7f0200a2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto :goto_0

    .line 3609
    :cond_1
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto :goto_0

    .line 3593
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
    const/4 v0, 0x0

    .line 3555
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v1, :cond_0

    .line 3556
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 3557
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    .line 3567
    :goto_0
    return-void

    .line 3560
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataAndWifiStacked:Z

    if-eqz v1, :cond_1

    .line 3561
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 3565
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f09004f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_0

    .line 3563
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v1, :cond_2

    const v0, 0x7f0200ae

    :cond_2
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    goto :goto_1
.end method

.method protected updateWifiState(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/16 v4, -0xc8

    const/4 v2, 0x0

    .line 3513
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3514
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3515
    const-string v0, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    .line 3551
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiIcons()V

    .line 3552
    return-void

    :cond_1
    move v0, v2

    .line 3515
    goto :goto_0

    .line 3518
    :cond_2
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3519
    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 3521
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    .line 3522
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    .line 3524
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v0, :cond_7

    if-nez v3, :cond_7

    .line 3526
    const-string v0, "wifiInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    .line 3527
    if-nez v0, :cond_3

    .line 3528
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 3530
    :cond_3
    if-eqz v0, :cond_6

    .line 3531
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    .line 3541
    :cond_4
    :goto_3
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    .line 3542
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiRssi:I

    goto :goto_1

    :cond_5
    move v1, v2

    .line 3522
    goto :goto_2

    .line 3533
    :cond_6
    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    goto :goto_3

    .line 3535
    :cond_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v0, :cond_4

    .line 3536
    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    goto :goto_3

    .line 3543
    :cond_8
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3544
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v0, :cond_0

    .line 3545
    const-string v0, "newRssi"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiRssi:I

    .line 3546
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
    .line 3665
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_2

    .line 3666
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_1

    .line 3667
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    if-eqz v0, :cond_0

    .line 3668
    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_IDLE:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    .line 3671
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    .line 3681
    :goto_1
    return-void

    .line 3670
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    goto :goto_0

    .line 3674
    :cond_1
    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_DISCONNECTED:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    .line 3675
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f090054

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    goto :goto_1

    .line 3678
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    .line 3679
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

    .line 3641
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 3642
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    .line 3643
    const-string v3, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3644
    const-string v2, "4g_state"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3646
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    .line 3660
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 3661
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxIcons()V

    .line 3662
    return-void

    :cond_1
    move v0, v1

    .line 3646
    goto :goto_0

    .line 3648
    :cond_2
    const-string v3, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3649
    const-string v0, "newSignalLevel"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    goto :goto_1

    .line 3650
    :cond_3
    const-string v3, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3651
    const-string v2, "WimaxState"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    .line 3653
    const-string v2, "WimaxStateDetail"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    .line 3656
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_4

    move v2, v0

    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    .line 3658
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    :goto_3
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    goto :goto_1

    :cond_4
    move v2, v1

    .line 3656
    goto :goto_2

    :cond_5
    move v0, v1

    .line 3658
    goto :goto_3
.end method
