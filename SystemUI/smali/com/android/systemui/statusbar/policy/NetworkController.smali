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

.field mLastRoamingOverlayIconId:I

.field mLastSignalLevel:I

.field mLastSimIconId:I

.field mLastWifiIconId:I

.field mLastWimaxIconId:I

.field private final mLock:Ljava/lang/Object;

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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 351
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 115
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowDataDisabledIcon:I

    .line 119
    const-string v0, "ro.mot.noroamingicon"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNoRoaming:Z

    .line 122
    const-string v0, "ro.mot.roamingiconnodata"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingNoData:Z

    .line 126
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 127
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneState:I

    .line 128
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    .line 129
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    .line 130
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    .line 134
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCm:Landroid/net/ConnectivityManager;

    .line 135
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileDataEnabled:Z

    .line 136
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigShowBothWifiAndMobileNetwork:Z

    .line 137
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigAlwaysShowAttachedNetworkType:Z

    .line 147
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 163
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSimIconId:I

    .line 169
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPhoneRSSIForData:Z

    .line 170
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    .line 171
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    .line 193
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    .line 198
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->lastIconLevelChangeTime:J

    .line 199
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->currentShowingIconLevel:I

    .line 201
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$StatusBarHandler;

    invoke-direct {v0, p0, v6}, Lcom/android/systemui/statusbar/policy/NetworkController$StatusBarHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/statusbar/policy/NetworkController$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mStatusBarHandler:Landroid/os/Handler;

    .line 207
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLock:Ljava/lang/Object;

    .line 224
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 225
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 226
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    .line 229
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    .line 230
    const v0, 0x1080555

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherIconId:I

    .line 234
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    .line 235
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    .line 236
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    .line 237
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    .line 238
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    .line 239
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    .line 240
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    .line 241
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    .line 245
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    .line 251
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    .line 252
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    .line 259
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    .line 260
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetCondition:I

    .line 261
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetCondition:I

    .line 266
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    .line 267
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    .line 270
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPlmnAndSpn:Z

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconViews:Ljava/util/ArrayList;

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconOverlayViews:Ljava/util/ArrayList;

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconViews:Ljava/util/ArrayList;

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconViews:Ljava/util/ArrayList;

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconViews:Ljava/util/ArrayList;

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconViews:Ljava/util/ArrayList;

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconViews:Ljava/util/ArrayList;

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmergencyLabelViews:Ljava/util/ArrayList;

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    .line 300
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    .line 302
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastRoamingIconId:I

    .line 303
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastRoamingOverlayIconId:I

    .line 305
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    .line 306
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    .line 307
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    .line 308
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    .line 309
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    .line 310
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    .line 311
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    .line 314
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastMobileDataDirectionOverlayIconId:I

    .line 319
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataAndWifiStacked:Z

    .line 816
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 352
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    .line 353
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 357
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCm:Landroid/net/ConnectivityManager;

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileDataEnabled:Z

    .line 362
    const v0, 0x7f090004

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPhoneRSSIForData:Z

    .line 363
    const v0, 0x7f090005

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    .line 364
    const v0, 0x1110034

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    .line 368
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiIcons()V

    .line 369
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxIcons()V

    .line 372
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->registerPhoneStateListener(Landroid/content/Context;)V

    .line 373
    const v0, 0x7f090002

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    .line 377
    const v0, 0x7f090007

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspapDataDistinguishable:Z

    .line 385
    const v0, 0x111003f

    :try_start_0
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mGprsAttachIconDisplayable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "show_data_ps_attached"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mGprsAttachIconDisplayable:Z

    .line 395
    :cond_0
    const-string v0, "StatusBar.NetworkController"

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

    .line 400
    const v0, 0x104051d

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    .line 401
    const-string v0, "StatusBar.NetworkController"

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

    .line 406
    const v0, 0x111004d

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigShowBothWifiAndMobileNetwork:Z

    .line 409
    const v0, 0x111004e

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigAlwaysShowAttachedNetworkType:Z

    .line 415
    const v0, 0x1110046

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSmoothenCDMASignalStrength:Z

    .line 419
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a001b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    .line 420
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x1040306

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    .line 422
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 425
    const v0, 0x1110045

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDifferingIconForSimError:Z

    .line 430
    new-instance v0, Lcom/motorola/android/systemui/statusbar/VzwEri;

    invoke-direct {v0, p1}, Lcom/motorola/android/systemui/statusbar/VzwEri;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEri:Lcom/motorola/android/systemui/statusbar/VzwEri;

    .line 433
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->createWifiHandler()V

    .line 436
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 437
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 438
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 439
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 442
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 445
    const-string v1, "com.motorola.android.intent.action.GET_REAL_DATA_NET_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 448
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 449
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 452
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 453
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 454
    const v1, 0x1110039

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    .line 456
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    if-eqz v1, :cond_1

    .line 457
    const-string v1, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 458
    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 459
    const-string v1, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 461
    :cond_1
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 464
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateAirplaneMode()V

    .line 467
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 468
    return-void

    :cond_2
    move v0, v2

    .line 119
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 122
    goto/16 :goto_1

    .line 387
    :catch_0
    move-exception v0

    .line 388
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mGprsAttachIconDisplayable:Z

    goto/16 :goto_2
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataIcon()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateTelephonySignalStrength()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateRoamingIcon()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateSimIcon()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mStatusBarHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)Lcom/motorola/android/systemui/statusbar/VzwEri;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEri:Lcom/motorola/android/systemui/statusbar/VzwEri;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/NetworkController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private doesDisplayDataIcon()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4430
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mGprsAttachIconDisplayable:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigAlwaysShowAttachedNetworkType:Z

    if-eqz v2, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_3

    .line 4446
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v2

    if-eqz v2, :cond_2

    .line 4448
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 4446
    goto :goto_0

    .line 4448
    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private getLevel(Landroid/telephony/SignalStrength;)I
    .locals 3

    .prologue
    .line 4460
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isForced1xMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4462
    const-string v0, "StatusBar.NetworkController"

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

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4464
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 4469
    :goto_0
    return v0

    .line 4467
    :cond_0
    const-string v0, "StatusBar.NetworkController"

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

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4469
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    goto :goto_0
.end method

.method private hasDataService()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1053
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 1054
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1061
    const/4 v0, 0x1

    .line 1064
    :cond_0
    :pswitch_0
    return v0

    .line 1054
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

    .line 1037
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 1038
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1043
    :pswitch_0
    const/4 v0, 0x1

    .line 1046
    :cond_0
    :pswitch_1
    return v0

    .line 1038
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
    .line 3160
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 3161
    .local v3, "ssid":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 3171
    .end local v3    # "ssid":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 3165
    .restart local v3    # "ssid":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 3166
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

    .line 3167
    .local v1, "net":Landroid/net/wifi/WifiConfiguration;
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 3168
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 3171
    .end local v1    # "net":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2362
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isCdma()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1009
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 1010
    .local v0, "isCdma":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v4, :cond_3

    .line 1011
    if-eqz v0, :cond_2

    .line 1029
    :cond_0
    :goto_1
    return v2

    .end local v0    # "isCdma":Z
    :cond_1
    move v0, v3

    .line 1009
    goto :goto_0

    .restart local v0    # "isCdma":Z
    :cond_2
    move v2, v3

    .line 1014
    goto :goto_1

    .line 1017
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v1

    .line 1018
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

    .line 1029
    goto :goto_1
.end method

.method private isEvdo()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2197
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v2, :cond_1

    .line 2199
    :cond_0
    :goto_0
    return v1

    .line 2198
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    .line 2199
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

    .line 4480
    const-string v3, "StatusBar.NetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isForced1xMode: ( mPhoneState != TelephonyManager.CALL_STATE_IDLE )="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneState:I

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4482
    const-string v0, "StatusBar.NetworkController"

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

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4483
    const-string v0, "StatusBar.NetworkController"

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

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4484
    const-string v0, "StatusBar.NetworkController"

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

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4486
    const-string v0, "StatusBar.NetworkController"

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

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4487
    const-string v0, "StatusBar.NetworkController"

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

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4502
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isLte()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4503
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 4504
    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneState:I

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v3, 0x7

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEvdo()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ro.ril.svdo"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isLte()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "ro.ril.svlte1x"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 4520
    :cond_2
    const-string v0, "StatusBar.NetworkController"

    const-string v2, "isForced1xMode: returns true (use 1X mode)"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4531
    :goto_2
    return v1

    :cond_3
    move v0, v2

    .line 4480
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 4503
    goto :goto_1

    .line 4529
    :cond_5
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "isForced1xMode: returns false (use active radioTech\'s normal mode)"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 4531
    goto :goto_2
.end method

.method private isLte()Z
    .locals 2

    .prologue
    .line 992
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

.method private signalIconLog(Ljava/lang/String;II)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3177
    .line 3178
    sparse-switch p2, :sswitch_data_0

    .line 3192
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 3193
    const-string v2, "StatusBar.NetworkController"

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

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3197
    :cond_1
    return-void

    .line 3180
    :sswitch_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-eq p3, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 3183
    :sswitch_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetCondition:I

    if-eq p3, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 3186
    :sswitch_2
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetCondition:I

    if-eq p3, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 3193
    :cond_2
    const-string v0, "white."

    goto :goto_1

    .line 3178
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

    .line 2706
    .line 2713
    const-string v2, "StatusBar.NetworkController"

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

    if-nez v0, :cond_1

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

    .line 2727
    const-string v2, "StatusBar.NetworkController"

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

    if-ne v0, v4, :cond_5

    const-string v0, "DATA_UNKNOWN"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    const-string v2, "StatusBar.NetworkController"

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

    if-nez v0, :cond_a

    const-string v0, "DATA_ACTIVITY_NONE"

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isLte()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2752
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasDataService()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2753
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 2844
    :goto_3
    const-string v2, "StatusBar.NetworkController"

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

    .line 3013
    :goto_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isAirplaneModeOn()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ERROR:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_29

    .line 3018
    :cond_0
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 3023
    :goto_5
    const-string v0, "StatusBar.NetworkController"

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

    .line 3027
    return-void

    .line 2713
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    if-ne v0, v5, :cond_2

    const-string v0, "STATE_OUT_OF_SERVICE"

    goto/16 :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    if-ne v0, v6, :cond_3

    const-string v0, "STATE_EMERGENCY_ONLY"

    goto/16 :goto_0

    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    if-ne v0, v7, :cond_4

    const-string v0, "STATE_POWER_OFF"

    goto/16 :goto_0

    :cond_4
    const-string v0, "unknown"

    goto/16 :goto_0

    .line 2727
    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-nez v0, :cond_6

    const-string v0, "DATA_DISCONNECTED"

    goto/16 :goto_1

    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-ne v0, v5, :cond_7

    const-string v0, "DATA_CONNECTING"

    goto/16 :goto_1

    :cond_7
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-ne v0, v6, :cond_8

    const-string v0, "DATA_CONNECTED"

    goto/16 :goto_1

    :cond_8
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-ne v0, v7, :cond_9

    const-string v0, "DATA_SUSPENDED"

    goto/16 :goto_1

    :cond_9
    const-string v0, "unknown"

    goto/16 :goto_1

    .line 2741
    :cond_a
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    if-ne v0, v5, :cond_b

    const-string v0, "DATA_ACTIVITY_IN"

    goto/16 :goto_2

    :cond_b
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    if-ne v0, v6, :cond_c

    const-string v0, "DATA_ACTIVITY_OUT"

    goto/16 :goto_2

    :cond_c
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    if-ne v0, v7, :cond_d

    const-string v0, "DATA_ACTIVITY_INOUT"

    goto/16 :goto_2

    :cond_d
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    if-ne v0, v8, :cond_e

    const-string v0, "DATA_ACTIVITY_DORMANT"

    goto/16 :goto_2

    :cond_e
    const-string v0, "unknown"

    goto/16 :goto_2

    .line 2762
    :pswitch_0
    const-string v0, "att"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2763
    const v0, 0x7f02011c

    goto/16 :goto_3

    .line 2765
    :cond_f
    const v0, 0x7f02011a

    .line 2767
    goto/16 :goto_3

    .line 2770
    :pswitch_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    packed-switch v0, :pswitch_data_1

    .line 2774
    const-string v0, "att"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2775
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_10

    .line 2776
    const v0, 0x7f0200e5

    goto/16 :goto_3

    .line 2778
    :cond_10
    const v0, 0x7f0200f6

    goto/16 :goto_3

    .line 2781
    :cond_11
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v2

    aget v0, v0, v1

    goto/16 :goto_3

    .line 2787
    :pswitch_2
    const-string v0, "att"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2788
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_12

    .line 2789
    const v0, 0x7f020106

    goto/16 :goto_3

    .line 2791
    :cond_12
    const v0, 0x7f0200fa

    goto/16 :goto_3

    .line 2794
    :cond_13
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v2

    aget v0, v0, v5

    goto/16 :goto_3

    .line 2800
    :pswitch_3
    const-string v0, "att"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2801
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_14

    .line 2802
    const v0, 0x7f020121

    goto/16 :goto_3

    .line 2804
    :cond_14
    const v0, 0x7f0200ff

    goto/16 :goto_3

    .line 2807
    :cond_15
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v2

    aget v0, v0, v6

    goto/16 :goto_3

    .line 2813
    :pswitch_4
    const-string v0, "att"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2814
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_16

    .line 2815
    const v0, 0x7f020107

    goto/16 :goto_3

    .line 2817
    :cond_16
    const v0, 0x7f0200fb

    goto/16 :goto_3

    .line 2820
    :cond_17
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v2

    aget v0, v0, v7

    goto/16 :goto_3

    .line 2826
    :pswitch_5
    const-string v0, "att"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2827
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_18

    .line 2828
    const v0, 0x7f0200e5

    goto/16 :goto_3

    .line 2830
    :cond_18
    const v0, 0x7f0200f6

    goto/16 :goto_3

    .line 2833
    :cond_19
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v2

    aget v0, v0, v8

    goto/16 :goto_3

    .line 2849
    :cond_1a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v0

    if-nez v0, :cond_27

    .line 2851
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v2, :cond_1b

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v2, :cond_2a

    .line 2852
    :cond_1b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasDataService()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->doesDisplayDataIcon()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2853
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    packed-switch v0, :pswitch_data_2

    move v0, v1

    .line 2947
    :goto_6
    const-string v2, "StatusBar.NetworkController"

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

    .line 2863
    :pswitch_6
    const-string v0, "att"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2864
    const v0, 0x7f02011c

    goto :goto_6

    .line 2866
    :cond_1c
    const v0, 0x7f02011a

    .line 2868
    goto :goto_6

    .line 2871
    :pswitch_7
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    packed-switch v0, :pswitch_data_3

    .line 2875
    const-string v0, "att"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2876
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_1d

    .line 2877
    const v0, 0x7f0200e5

    goto :goto_6

    .line 2879
    :cond_1d
    const v0, 0x7f0200f6

    goto :goto_6

    .line 2882
    :cond_1e
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v2

    aget v0, v0, v1

    goto :goto_6

    .line 2888
    :pswitch_8
    const-string v0, "att"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2889
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_1f

    .line 2890
    const v0, 0x7f020106

    goto :goto_6

    .line 2892
    :cond_1f
    const v0, 0x7f0200fa

    goto/16 :goto_6

    .line 2895
    :cond_20
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v2

    aget v0, v0, v5

    goto/16 :goto_6

    .line 2901
    :pswitch_9
    const-string v0, "att"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2902
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_21

    .line 2903
    const v0, 0x7f020121

    goto/16 :goto_6

    .line 2905
    :cond_21
    const v0, 0x7f0200ff

    goto/16 :goto_6

    .line 2908
    :cond_22
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v2

    aget v0, v0, v6

    goto/16 :goto_6

    .line 2914
    :pswitch_a
    const-string v0, "att"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2915
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_23

    .line 2916
    const v0, 0x7f0200fb

    goto/16 :goto_6

    .line 2918
    :cond_23
    const v0, 0x7f020107

    goto/16 :goto_6

    .line 2921
    :cond_24
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v2

    aget v0, v0, v7

    goto/16 :goto_6

    .line 2927
    :pswitch_b
    const-string v0, "att"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2928
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_25

    .line 2929
    const v0, 0x7f0200e5

    goto/16 :goto_6

    .line 2931
    :cond_25
    const v0, 0x7f0200f6

    goto/16 :goto_6

    .line 2934
    :cond_26
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v2

    aget v0, v0, v8

    goto/16 :goto_6

    .line 2955
    :cond_27
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    packed-switch v0, :pswitch_data_4

    move v0, v1

    .line 3003
    :goto_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isForced1xMode()Z

    move-result v2

    if-eqz v2, :cond_28

    move v0, v1

    .line 3007
    :cond_28
    const-string v2, "StatusBar.NetworkController"

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

    .line 2965
    goto :goto_7

    .line 2968
    :pswitch_d
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    packed-switch v0, :pswitch_data_5

    .line 2972
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v2

    aget v0, v0, v1

    goto :goto_7

    .line 2977
    :pswitch_e
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v2

    aget v0, v0, v5

    goto :goto_7

    .line 2982
    :pswitch_f
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v2

    aget v0, v0, v6

    goto :goto_7

    .line 2987
    :pswitch_10
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v2

    aget v0, v0, v7

    goto :goto_7

    .line 2992
    :pswitch_11
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DIRECTION_ICONS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v2

    aget v0, v0, v8

    goto :goto_7

    .line 3020
    :cond_29
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto/16 :goto_5

    :cond_2a
    move v0, v1

    goto/16 :goto_6

    :cond_2b
    move v0, v1

    goto/16 :goto_3

    .line 2753
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2770
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 2853
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 2871
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 2955
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_c
    .end packed-switch

    .line 2968
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

    .line 2428
    .line 2437
    const-string v3, "StatusBar.NetworkController"

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

    if-nez v0, :cond_2

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

    .line 2451
    const-string v3, "StatusBar.NetworkController"

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

    if-ne v0, v5, :cond_6

    const-string v0, "DATA_UNKNOWN"

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    const-string v3, "StatusBar.NetworkController"

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

    if-nez v0, :cond_b

    const-string v0, "DATA_ACTIVITY_NONE"

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    if-nez v0, :cond_10

    move v2, v1

    move v0, v1

    .line 2665
    :goto_3
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    .line 2667
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isAirplaneModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ERROR:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v3, :cond_17

    .line 2672
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    .line 2679
    :goto_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    if-nez v0, :cond_1

    .line 2680
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    .line 2683
    :cond_1
    const-string v0, "StatusBar.NetworkController"

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

    .line 2684
    const-string v0, "StatusBar.NetworkController"

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

    .line 2691
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2693
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2696
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2699
    :goto_5
    return-void

    .line 2437
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    if-ne v0, v2, :cond_3

    const-string v0, "STATE_OUT_OF_SERVICE"

    goto/16 :goto_0

    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    if-ne v0, v6, :cond_4

    const-string v0, "STATE_EMERGENCY_ONLY"

    goto/16 :goto_0

    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    if-ne v0, v7, :cond_5

    const-string v0, "STATE_POWER_OFF"

    goto/16 :goto_0

    :cond_5
    const-string v0, "unknown"

    goto/16 :goto_0

    .line 2451
    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-nez v0, :cond_7

    const-string v0, "DATA_DISCONNECTED"

    goto/16 :goto_1

    :cond_7
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-ne v0, v2, :cond_8

    const-string v0, "DATA_CONNECTING"

    goto/16 :goto_1

    :cond_8
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-ne v0, v6, :cond_9

    const-string v0, "DATA_CONNECTED"

    goto/16 :goto_1

    :cond_9
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-ne v0, v7, :cond_a

    const-string v0, "DATA_SUSPENDED"

    goto/16 :goto_1

    :cond_a
    const-string v0, "unknown"

    goto/16 :goto_1

    .line 2465
    :cond_b
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    if-ne v0, v2, :cond_c

    const-string v0, "DATA_ACTIVITY_IN"

    goto/16 :goto_2

    :cond_c
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    if-ne v0, v6, :cond_d

    const-string v0, "DATA_ACTIVITY_OUT"

    goto/16 :goto_2

    :cond_d
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    if-ne v0, v7, :cond_e

    const-string v0, "DATA_ACTIVITY_INOUT"

    goto/16 :goto_2

    :cond_e
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    const/4 v5, 0x4

    if-ne v0, v5, :cond_f

    const-string v0, "DATA_ACTIVITY_DORMANT"

    goto/16 :goto_2

    :cond_f
    const-string v0, "unknown"

    goto/16 :goto_2

    .line 2480
    :cond_10
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isLte()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2482
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasDataService()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2483
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    move v2, v1

    .line 2535
    :goto_6
    const-string v3, "StatusBar.NetworkController"

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

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v0

    move v0, v2

    move v2, v8

    goto/16 :goto_3

    .line 2493
    :pswitch_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    move v8, v2

    move v2, v0

    move v0, v8

    .line 2494
    goto :goto_6

    .line 2497
    :pswitch_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    packed-switch v0, :pswitch_data_1

    .line 2501
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v1

    move v8, v2

    move v2, v0

    move v0, v8

    .line 2502
    goto :goto_6

    .line 2506
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v2

    move v8, v2

    move v2, v0

    move v0, v8

    .line 2507
    goto :goto_6

    .line 2511
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v6

    move v8, v2

    move v2, v0

    move v0, v8

    .line 2512
    goto :goto_6

    .line 2516
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v7

    move v8, v2

    move v2, v0

    move v0, v8

    .line 2517
    goto :goto_6

    .line 2521
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v1

    move v8, v2

    move v2, v0

    move v0, v8

    .line 2522
    goto :goto_6

    :cond_11
    move v0, v1

    move v2, v1

    .line 2532
    goto :goto_6

    .line 2540
    :cond_12
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v0

    if-nez v0, :cond_15

    .line 2542
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v3, :cond_13

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v3, :cond_18

    .line 2543
    :cond_13
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasDataService()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->doesDisplayDataIcon()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2544
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    packed-switch v0, :pswitch_data_2

    move v2, v1

    move v0, v1

    .line 2596
    :goto_7
    const-string v3, "StatusBar.NetworkController"

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

    .line 2554
    :pswitch_6
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    goto :goto_7

    .line 2558
    :pswitch_7
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    packed-switch v0, :pswitch_data_3

    .line 2562
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v1

    goto :goto_7

    .line 2567
    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v2

    goto :goto_7

    .line 2572
    :pswitch_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v6

    goto :goto_7

    .line 2577
    :pswitch_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v7

    goto :goto_7

    .line 2582
    :pswitch_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v1

    goto :goto_7

    :cond_14
    move v2, v1

    move v0, v1

    .line 2592
    goto :goto_7

    .line 2603
    :cond_15
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    packed-switch v0, :pswitch_data_4

    move v2, v1

    move v0, v1

    .line 2653
    :goto_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isForced1xMode()Z

    move-result v3

    if-eqz v3, :cond_16

    move v2, v1

    move v0, v1

    .line 2658
    :cond_16
    const-string v3, "StatusBar.NetworkController"

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

    .line 2615
    goto :goto_8

    .line 2618
    :pswitch_d
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    packed-switch v0, :pswitch_data_5

    .line 2622
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v1

    goto :goto_8

    .line 2627
    :pswitch_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v2

    goto :goto_8

    .line 2632
    :pswitch_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v6

    goto :goto_8

    .line 2637
    :pswitch_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v7

    goto :goto_8

    .line 2642
    :pswitch_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v1

    goto :goto_8

    .line 2676
    :cond_17
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    goto/16 :goto_4

    .line 2694
    :catch_0
    move-exception v0

    .line 2696
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_18
    move v0, v1

    goto/16 :goto_7

    .line 2483
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2497
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 2544
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 2558
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 2603
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_c
    .end packed-switch

    .line 2618
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private updateDataIconForDisabledOption()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1357
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowDataDisabledIcon:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "show_data_disabled_icon"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1360
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowDataDisabledIcon:I

    .line 1367
    :cond_0
    :goto_0
    const-string v0, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataIconForDisabledOption: showDataDisabledIcon = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowDataDisabledIcon:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowDataDisabledIcon:I

    if-ne v0, v1, :cond_3

    move v0, v1

    .line 1373
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataState()I

    move-result v3

    if-nez v3, :cond_4

    .line 1380
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileDataEnabled:Z

    .line 1382
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileDataEnabled:Z

    if-nez v0, :cond_1

    .line 1386
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    .line 1391
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 1394
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataIconForDisabledOption: Show Data Disabled icon mPhone.getNetworkType()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDataTypeIconIdShown(NetworkType)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    :cond_1
    return-void

    .line 1363
    :cond_2
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowDataDisabledIcon:I

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 1369
    goto :goto_1

    :cond_4
    move v1, v2

    .line 1373
    goto :goto_2
.end method

.method private final updateDataNetType()V
    .locals 8

    .prologue
    const v7, 0x7f0a005a

    const v6, 0x7f02010b

    const v5, 0x7f0200c4

    const v0, 0x7f02006f

    const/4 v4, 0x0

    .line 1420
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileDataEnabled:Z

    .line 1423
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v1, :cond_1

    .line 1424
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateDataNetType: (mIsWimaxEnabled && mWimaxConnected) == true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1429
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetCondition:I

    if-nez v0, :cond_0

    const v0, 0x7f020070

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1434
    const v0, 0x7f02010d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1438
    const v0, 0x7f0200c7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 1440
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a005c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2176
    :goto_1
    return-void

    .line 1429
    :cond_0
    const v0, 0x7f020077

    goto :goto_0

    .line 1444
    :cond_1
    const-string v1, "StatusBar.NetworkController"

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

    .line 1446
    const-string v1, "StatusBar.NetworkController"

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

    .line 1447
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v1, :pswitch_data_0

    .line 2163
    :pswitch_0
    const-string v0, "StatusBar.NetworkController"

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

    .line 2165
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    .line 2166
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    goto :goto_1

    .line 1450
    :pswitch_1
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "updateDataNetType: mDataNetType=NETWORK_TYPE_UNKNOWN"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v1, :cond_6

    .line 1453
    const-string v0, "att"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1454
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G_WAVES:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1457
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_2

    const v0, 0x7f0200de

    :goto_2
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1462
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1465
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 1490
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0059

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 1457
    :cond_2
    const v0, 0x7f0200ef

    goto :goto_2

    .line 1468
    :cond_3
    const-string v0, "sfr"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1469
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_2G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1472
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_4

    const v0, 0x7f0200d5

    :goto_4
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1477
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1478
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    goto :goto_3

    .line 1472
    :cond_4
    const v0, 0x7f0200e7

    goto :goto_4

    .line 1481
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1482
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1483
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1486
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    goto :goto_3

    .line 1499
    :cond_6
    :pswitch_2
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "updateDataNetType: mDataNetType=NETWORK_TYPE_EDGE"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v1, :cond_a

    .line 1501
    const-string v0, "att"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1502
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E_WAVES:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1505
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_7

    const v0, 0x7f0200dc

    :goto_5
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1510
    const v0, 0x7f020112

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1514
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 1533
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a005e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 1505
    :cond_7
    const v0, 0x7f0200ed

    goto :goto_5

    .line 1517
    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1520
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_9

    const v0, 0x7f020071

    :goto_7
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1525
    const v0, 0x7f020111

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1529
    const v0, 0x7f0200e6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    goto :goto_6

    .line 1520
    :cond_9
    const v0, 0x7f020078

    goto :goto_7

    .line 1542
    :cond_a
    :pswitch_3
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "updateDataNetType: mDataNetType=NETWORK_TYPE_UMTS"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    const-string v1, "att"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1544
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_WAVES:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1547
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_b

    const v0, 0x7f0200da

    :goto_8
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1552
    const v0, 0x7f020110

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1556
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 1558
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a005c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 1547
    :cond_b
    const v0, 0x7f0200eb

    goto :goto_8

    .line 1561
    :cond_c
    const-string v1, "bellca"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1562
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_HPLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1565
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_d

    const v0, 0x7f0200df

    :goto_9
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1570
    const v0, 0x7f020116

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1574
    const v0, 0x7f020102

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 1576
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 1565
    :cond_d
    const v0, 0x7f0200f0

    goto :goto_9

    .line 1579
    :cond_e
    const-string v1, "tmo"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1582
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1583
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1586
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v1, :cond_f

    :goto_a
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1591
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1595
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 1597
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 1586
    :cond_f
    const v0, 0x7f020076

    goto :goto_a

    .line 1600
    :cond_10
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1603
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_11

    const v0, 0x7f020070

    :goto_b
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1608
    const v0, 0x7f02010d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1612
    const v0, 0x7f0200c7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 1614
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a005c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 1603
    :cond_11
    const v0, 0x7f020077

    goto :goto_b

    .line 1618
    :cond_12
    const-string v1, "rogers"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "fido"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1625
    :cond_13
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1626
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1629
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v1, :cond_14

    :goto_c
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1634
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1638
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 1640
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 1629
    :cond_14
    const v0, 0x7f020076

    goto :goto_c

    .line 1643
    :cond_15
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_HPLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1646
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_16

    const v0, 0x7f0200df

    :goto_d
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1651
    const v0, 0x7f020116

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1655
    const v0, 0x7f020102

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 1657
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 1646
    :cond_16
    const v0, 0x7f0200f0

    goto :goto_d

    .line 1661
    :cond_17
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1664
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v1, :cond_18

    :goto_e
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1669
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1673
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 1675
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 1664
    :cond_18
    const v0, 0x7f020076

    goto :goto_e

    .line 1685
    :pswitch_4
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "updateDataNetType: mDataNetType=NETWORK_TYPE_HSDPA || NETWORK_TYPE_HSUPA || NETWORK_TYPE_HSPA || NETWORK_TYPE_HSPAP"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    const-string v1, "att"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1690
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_WAVES:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1693
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_19

    const v0, 0x7f0200da

    :goto_f
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1698
    const v0, 0x7f020110

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1702
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 1704
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a005c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 1693
    :cond_19
    const v0, 0x7f0200eb

    goto :goto_f

    .line 1707
    :cond_1a
    const-string v1, "bellca"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1708
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_HPLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1711
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_1b

    const v0, 0x7f0200df

    :goto_10
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1716
    const v0, 0x7f020116

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1720
    const v0, 0x7f020102

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 1722
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 1711
    :cond_1b
    const v0, 0x7f0200f0

    goto :goto_10

    .line 1726
    :cond_1c
    const-string v1, "sfr"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1727
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1730
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_1d

    const v0, 0x7f0200d6

    :goto_11
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1735
    const v0, 0x7f02010c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1737
    const v0, 0x7f0200c5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 1738
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0082

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 1730
    :cond_1d
    const v0, 0x7f0200d6

    goto :goto_11

    .line 1742
    :cond_1e
    const-string v1, "tmo"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1745
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1746
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1749
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v1, :cond_1f

    :cond_1f
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1754
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1758
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 1760
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 1763
    :cond_20
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1766
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_21

    const v0, 0x7f020070

    :goto_12
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1771
    const v0, 0x7f02010d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1775
    const v0, 0x7f0200c7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 1777
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a005c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 1766
    :cond_21
    const v0, 0x7f020077

    goto :goto_12

    .line 1781
    :cond_22
    const-string v1, "rogers"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "fido"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1788
    :cond_23
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1789
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1792
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v1, :cond_24

    :goto_13
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1797
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1801
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 1803
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 1792
    :cond_24
    const v0, 0x7f020076

    goto :goto_13

    .line 1806
    :cond_25
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_HPLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1809
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_26

    const v0, 0x7f0200df

    :goto_14
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1814
    const v0, 0x7f020116

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1818
    const v0, 0x7f020102

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 1820
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 1809
    :cond_26
    const v0, 0x7f0200f0

    goto :goto_14

    .line 1826
    :cond_27
    const-string v1, "orange"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1829
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_29

    .line 1830
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_HPLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1833
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_28

    const v0, 0x7f0200df

    :goto_15
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1838
    const v0, 0x7f020116

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1840
    const v0, 0x7f020102

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 1841
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 1833
    :cond_28
    const v0, 0x7f0200f0

    goto :goto_15

    .line 1844
    :cond_29
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1847
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_2a

    const v0, 0x7f0200d6

    :goto_16
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1852
    const v0, 0x7f02010c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1854
    const v0, 0x7f0200c5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 1855
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0082

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 1847
    :cond_2a
    const v0, 0x7f0200e8

    goto :goto_16

    .line 1863
    :cond_2b
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspapDataDistinguishable:Z

    if-eqz v1, :cond_2d

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_2d

    .line 1865
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_HPLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1868
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_2c

    const v0, 0x7f0200df

    :goto_17
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1873
    const v0, 0x7f020116

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1877
    const v0, 0x7f020102

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 1879
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 1868
    :cond_2c
    const v0, 0x7f0200f0

    goto :goto_17

    .line 1884
    :cond_2d
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v1, :cond_2f

    .line 1885
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1888
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_2e

    const v0, 0x7f020073

    :goto_18
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1893
    const v0, 0x7f020115

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1897
    const v0, 0x7f020101

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 1899
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a005b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 1888
    :cond_2e
    const v0, 0x7f02007a

    goto :goto_18

    .line 1902
    :cond_2f
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1905
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v1, :cond_30

    :goto_19
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1910
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1914
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 1916
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 1905
    :cond_30
    const v0, 0x7f020076

    goto :goto_19

    .line 1925
    :pswitch_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v1, :cond_32

    .line 1926
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateDataNetType: mDataNetType=NETWORK_TYPE_CDMA"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1931
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_31

    const v0, 0x7f02006e

    :goto_1a
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1936
    const v0, 0x7f020109

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1940
    const v0, 0x7f0200c2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 1942
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a005d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 1931
    :cond_31
    const v0, 0x7f020075

    goto :goto_1a

    .line 1950
    :cond_32
    :pswitch_6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v1, :cond_34

    .line 1951
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateDataNetType: mDataNetType=NETWORK_TYPE_1xRTT"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1955
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_33

    const v0, 0x7f02006e

    :goto_1b
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1960
    const v0, 0x7f020109

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1964
    const v0, 0x7f0200c2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 1966
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a005d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 1955
    :cond_33
    const v0, 0x7f020075

    goto :goto_1b

    .line 1977
    :cond_34
    :pswitch_7
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "updateDataNetType: mDataNetType=NETWORK_TYPE_EVDO_0 || NETWORK_TYPE_EVDO_A || NETWORK_TYPE_EVDO_B || NETWORK_TYPE_EHRPD"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1984
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v1, :cond_35

    :goto_1c
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1989
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 1993
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 1995
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 1984
    :cond_35
    const v0, 0x7f020076

    goto :goto_1c

    .line 2000
    :pswitch_8
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateDataNetType: mDataNetType=NETWORK_TYPE_LTE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    const-string v0, "att"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2004
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE_WAVES:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2007
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_36

    const v0, 0x7f0200d9

    :goto_1d
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2013
    const v0, 0x7f02010f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2017
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 2019
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0080

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 2007
    :cond_36
    const v0, 0x7f0200ea

    goto :goto_1d

    .line 2021
    :cond_37
    const-string v0, "vzw"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2022
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2025
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_38

    const v0, 0x7f0200d7

    :goto_1e
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2030
    const v0, 0x7f02010e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2034
    const v0, 0x7f0200c6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 2036
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0080

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 2025
    :cond_38
    const v0, 0x7f0200e9

    goto :goto_1e

    .line 2040
    :cond_39
    const-string v0, "rogers"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "fido"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "bellca"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "skt"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "kt"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "telus"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "tmo-intl"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2056
    :cond_3a
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2059
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_3b

    const v0, 0x7f0200e0

    :goto_1f
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2064
    const v0, 0x7f020117

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2068
    const v0, 0x7f020108

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 2070
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0081

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 2059
    :cond_3b
    const v0, 0x7f0200f1

    goto :goto_1f

    .line 2074
    :cond_3c
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2077
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_3d

    const v0, 0x7f020070

    :goto_20
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2082
    const v0, 0x7f02010d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2086
    const v0, 0x7f0200c7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 2088
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a005c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 2077
    :cond_3d
    const v0, 0x7f020077

    goto :goto_20

    .line 2094
    :pswitch_9
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v1, :cond_43

    .line 2096
    const-string v0, "att"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2097
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G_WAVES:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2100
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_3e

    const v0, 0x7f0200de

    :goto_21
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2105
    const v0, 0x7f020114

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2109
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 2140
    :goto_22
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0059

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 2100
    :cond_3e
    const v0, 0x7f0200ef

    goto :goto_21

    .line 2112
    :cond_3f
    const-string v0, "sfr"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2113
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_2G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2116
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_40

    const v0, 0x7f0200d5

    :goto_23
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2121
    const v0, 0x7f02010a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2122
    const v0, 0x7f0200c3

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    goto :goto_22

    .line 2116
    :cond_40
    const v0, 0x7f0200e7

    goto :goto_23

    .line 2125
    :cond_41
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2128
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v0, :cond_42

    const v0, 0x7f020072

    :goto_24
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2133
    const v0, 0x7f020113

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2137
    const v0, 0x7f020100

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    goto :goto_22

    .line 2128
    :cond_42
    const v0, 0x7f020079

    goto :goto_24

    .line 2143
    :cond_43
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2146
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-nez v1, :cond_44

    :goto_25
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2151
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    .line 2155
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 2157
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 2146
    :cond_44
    const v0, 0x7f020076

    goto :goto_25

    .line 1447
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
    .line 803
    const-string v0, "showRealDataNetType"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 804
    if-nez v0, :cond_0

    .line 813
    :goto_0
    return-void

    .line 807
    :cond_0
    const-string v0, "realDataNetType"

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 809
    const-string v1, "StatusBar.NetworkController"

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

    .line 812
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {v1, v2, v0}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(II)V

    goto :goto_0
.end method

.method private final updateRoamingIcon()V
    .locals 7

    .prologue
    const v5, 0x7f0a0097

    const v6, 0x7f0a0098

    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 2215
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2222
    :cond_0
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 2223
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0096

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    .line 2226
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateRoamingIcon: no Service"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    :goto_0
    const-string v0, "StatusBar.NetworkController"

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

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRoamingIcon: mContentDescriptionRoaming=\""

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

    .line 2357
    return-void

    .line 2230
    :cond_1
    const-string v0, "StatusBar.NetworkController"

    const-string v2, "updateRoamingIcon: has Service"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2234
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateRoamingIcon: not CDMA"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNoRoaming:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2240
    const v0, 0x7f020074

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 2242
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateRoamingIcon: mRoamingIconId = R.drawable.stat_sys_data_connected_roam (#1)"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    goto/16 :goto_0

    .line 2246
    :cond_2
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 2247
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateRoamingIcon: mRoamingIconId = 0 (#2)"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    goto/16 :goto_0

    .line 2253
    :cond_3
    const-string v0, "StatusBar.NetworkController"

    const-string v2, "updateRoamingIcon: CDMA"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-static {v0}, Lcom/motorola/android/systemui/statusbar/MotoSystemUIUtils;->updateCdmaFemtoIcon(Landroid/telephony/ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2259
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateRoamingIcon: CDMA FemtoCell"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    const v0, 0x7f020122

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 2262
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0099

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    goto/16 :goto_0

    .line 2267
    :cond_4
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_ROAMING_INDICATOR_CDMA:[I

    .line 2268
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 2269
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v4

    .line 2271
    :goto_2
    if-ne v0, v1, :cond_7

    .line 2272
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "getCdmaEriIconIndex returned null, skipping ERI icon update"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 2268
    goto :goto_1

    :cond_6
    move v4, v1

    .line 2269
    goto :goto_2

    .line 2274
    :cond_7
    if-ne v4, v1, :cond_8

    .line 2275
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "getCdmeEriIconMode returned null, skipping ERI icon update"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2278
    :cond_8
    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 2279
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "Cdma ROAMING_INDICATOR_OFF, removing ERI icon"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 2281
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateRoamingIcon: mRoamingIconId = 0 (#3)"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    goto/16 :goto_0

    .line 2289
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEri:Lcom/motorola/android/systemui/statusbar/VzwEri;

    invoke-virtual {v1}, Lcom/motorola/android/systemui/statusbar/VzwEri;->isVzwEriOn()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2290
    packed-switch v4, :pswitch_data_0

    move-object v1, v2

    .line 2304
    :goto_3
    array-length v2, v1

    if-lt v0, v2, :cond_a

    .line 2306
    const-string v2, "StatusBar.NetworkController"

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

    .line 2309
    :cond_a
    aget v0, v1, v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 2311
    const-string v0, "StatusBar.NetworkController"

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

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    goto/16 :goto_0

    .line 2293
    :pswitch_0
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "updateRoamingIcon: CDMA \"VzwEriOn\" normal mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_ROAMING_INDICATOR_CDMA_VZW:[I

    goto :goto_3

    .line 2299
    :pswitch_1
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "updateRoamingIcon: CDMA \"VzwEriOn\" flashing mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_ROAMING_INDICATOR_CDMA_FLASH_VZW:[I

    goto :goto_3

    .line 2316
    :cond_b
    packed-switch v4, :pswitch_data_1

    goto/16 :goto_0

    .line 2319
    :pswitch_2
    const-string v1, "StatusBar.NetworkController"

    const-string v3, "updateRoamingIcon: CDMA normal mode"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    aget v0, v2, v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 2323
    const-string v0, "StatusBar.NetworkController"

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

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    goto/16 :goto_0

    .line 2329
    :pswitch_3
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateRoamingIcon: CDMA flashing mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    const v0, 0x7f02008b

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 2333
    const-string v0, "StatusBar.NetworkController"

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

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    goto/16 :goto_0

    .line 2290
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2316
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private final updateSimIcon()V
    .locals 3

    .prologue
    .line 2369
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In updateSimIcon simState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ERROR:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_2

    .line 2381
    :cond_0
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateSimIcon: mSimIconId = NO_SIM or SIM_CORRUPT"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    const v0, 0x7f020087

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    .line 2383
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a009a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionSim:Ljava/lang/String;

    .line 2386
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDifferingIconForSimError:Z

    if-eqz v0, :cond_1

    const-string v0, "vzw"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2391
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ERROR:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_1

    .line 2392
    const v0, 0x7f0200c1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    .line 2393
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a009b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionSim:Ljava/lang/String;

    .line 2405
    :cond_1
    :goto_0
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSimIcon: mSimIconId="

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

    .line 2411
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 2412
    return-void

    .line 2401
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    .line 2402
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionSim:Ljava/lang/String;

    goto :goto_0
.end method

.method private final updateTelephonySignalStrength()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const v7, 0x7f020143

    const v6, 0x7f020141

    const v5, 0x7f020140

    const v4, 0x7f020130

    .line 1078
    const-string v1, "StatusBar.NetworkController"

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

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_1

    .line 1083
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getMaxLevel()I

    move-result v1

    .line 1084
    if-lez v1, :cond_0

    .line 1085
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    .line 1088
    :cond_0
    const-string v1, "StatusBar.NetworkController"

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

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 1097
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    .line 1099
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    const/4 v2, 0x6

    if-le v1, v2, :cond_3

    .line 1100
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    .line 1106
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1110
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateTelephonySignalStrength:  No service"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    packed-switch v0, :pswitch_data_0

    .line 1113
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1114
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 1126
    :goto_0
    const-string v0, "StatusBar.NetworkController"

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

    .line 1131
    const-string v0, "StatusBar.NetworkController"

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

    .line 1334
    :goto_1
    return-void

    .line 1117
    :pswitch_0
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1118
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto :goto_0

    .line 1121
    :pswitch_1
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1122
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto :goto_0

    .line 1140
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v1, :cond_6

    .line 1143
    const-string v1, "StatusBar.NetworkController"

    const-string v2, "updateTelephonySignalStrength: mSignalStrength == null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1147
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateTelephonySignalStrength: EmergencyOnly mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1149
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 1150
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0095

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    goto :goto_1

    .line 1159
    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    packed-switch v1, :pswitch_data_1

    .line 1161
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1162
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 1174
    :goto_2
    const-string v1, "StatusBar.NetworkController"

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

    const-string v3, " NumBars="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    goto :goto_1

    .line 1165
    :pswitch_2
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1166
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto :goto_2

    .line 1169
    :pswitch_3
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1170
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto :goto_2

    .line 1192
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getLevel(Landroid/telephony/SignalStrength;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    .line 1197
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1198
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "updateTelephonySignalStrength: EmergencyOnly mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1200
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 1201
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0095

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    goto/16 :goto_1

    .line 1210
    :cond_7
    if-gez v1, :cond_11

    .line 1216
    :goto_3
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    if-le v0, v1, :cond_8

    .line 1217
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    .line 1221
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1224
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    packed-switch v1, :pswitch_data_2

    .line 1226
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    .line 1236
    :goto_4
    const-string v2, "StatusBar.NetworkController"

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

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSmoothenCDMASignalStrength:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 1247
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1248
    iget-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->lastIconLevelChangeTime:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_9

    .line 1249
    const-string v4, "StatusBar.NetworkController"

    const-string v5, "Clock Skew reset lastIconLevelChangeTime"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    iput-wide v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->lastIconLevelChangeTime:J

    .line 1252
    :cond_9
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mStatusBarHandler:Landroid/os/Handler;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1253
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->currentShowingIconLevel:I

    if-ge v0, v4, :cond_e

    .line 1254
    iget-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->lastIconLevelChangeTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x7d0

    cmp-long v4, v4, v6

    if-lez v4, :cond_a

    .line 1256
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->currentShowingIconLevel:I

    if-lez v4, :cond_a

    .line 1257
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->currentShowingIconLevel:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->currentShowingIconLevel:I

    .line 1258
    iput-wide v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->lastIconLevelChangeTime:J

    .line 1271
    :cond_a
    :goto_5
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->currentShowingIconLevel:I

    if-eq v0, v2, :cond_b

    .line 1272
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mStatusBarHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mStatusBarHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1277
    :cond_b
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->currentShowingIconLevel:I

    .line 1312
    :cond_c
    :goto_6
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    if-ge v0, v2, :cond_10

    .line 1314
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 1322
    :goto_7
    array-length v2, v1

    if-lt v0, v2, :cond_d

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 1323
    :cond_d
    aget v2, v1, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1330
    aget v0, v1, v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto/16 :goto_1

    .line 1229
    :pswitch_4
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_5_BAR:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    goto/16 :goto_4

    .line 1232
    :pswitch_5
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_6_BAR:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    goto/16 :goto_4

    .line 1261
    :cond_e
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->currentShowingIconLevel:I

    if-le v0, v4, :cond_a

    .line 1262
    iget-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->lastIconLevelChangeTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-lez v4, :cond_a

    .line 1265
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->currentShowingIconLevel:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    if-gt v4, v5, :cond_a

    .line 1266
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->currentShowingIconLevel:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->currentShowingIconLevel:I

    .line 1267
    iput-wide v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->lastIconLevelChangeTime:J

    goto :goto_5

    .line 1292
    :cond_f
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    packed-switch v1, :pswitch_data_3

    .line 1294
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    .line 1304
    :goto_8
    const-string v2, "StatusBar.NetworkController"

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

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1297
    :pswitch_6
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_5_BAR:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    goto :goto_8

    .line 1300
    :pswitch_7
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_6_BAR:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v1, v2

    goto :goto_8

    .line 1317
    :cond_10
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    .line 1318
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    goto/16 :goto_7

    :cond_11
    move v0, v1

    goto/16 :goto_3

    .line 1111
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1159
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1224
    :pswitch_data_2
    .packed-switch 0x5
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1292
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
    .line 546
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    return-void
.end method

.method public addDataDirectionOverlayIconView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    return-void
.end method

.method public addDataTypeIconView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    return-void
.end method

.method public addEmergencyLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmergencyLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    return-void
.end method

.method public addMobileLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    return-void
.end method

.method public addPhoneSignalIconView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    return-void
.end method

.method public addRoamingOverlayIconView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconOverlayViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    return-void
.end method

.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V
    .locals 1
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    .line 564
    return-void
.end method

.method public addWifiIconView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    return-void
.end method

.method public addWifiLabelView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    return-void
.end method

.method protected createWifiHandler()V
    .locals 4

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 477
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 478
    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 479
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 480
    if-eqz v1, :cond_0

    .line 481
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 483
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4268
    const-string v0, "NetworkController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4269
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

    .line 4272
    const-string v0, "  - telephony ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4273
    const-string v0, "  hasService()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4274
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4276
    const-string v0, "  hasDataService()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4277
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasDataService()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4279
    const-string v0, "  mHspaDataDistinguishable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4280
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4281
    const-string v0, "  mDataConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4282
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4283
    const-string v0, "  mSimState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4284
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4285
    const-string v0, "  mPhoneState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4286
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4287
    const-string v0, "  mDataState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4288
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4289
    const-string v0, "  mDataActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4290
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4291
    const-string v0, "  mDataNetType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4292
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4293
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4294
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4295
    const-string v0, "  mServiceState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4296
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4297
    const-string v0, "  mSignalStrength="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4298
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4299
    const-string v0, "  mLastSignalLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4300
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4301
    const-string v0, "  mNetworkName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4302
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4303
    const-string v0, "  mNetworkNameDefault="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4304
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4305
    const-string v0, "  mNetworkNameSeparator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4306
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4307
    const-string v0, "  mPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4308
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4309
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4310
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4311
    const-string v0, "  mDataDirectionIconId(NetworkType)="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4312
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4313
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4314
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4316
    const-string v0, "  mRoamingIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4317
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4318
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4319
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4322
    const-string v0, "  mSimIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4323
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4324
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4325
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4327
    const-string v0, "  mDataSignalIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4328
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4329
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4330
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4331
    const-string v0, "  mDataTypeIconId(NetworkType)="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4332
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4333
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4334
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4336
    const-string v0, "  mDataTypeIconIdShown(NetworkType)="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4337
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4338
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4339
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4342
    const-string v0, "  - wifi ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4343
    const-string v0, "  mWifiEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4344
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4345
    const-string v0, "  mWifiConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4346
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4347
    const-string v0, "  mWifiRssi="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4348
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiRssi:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4349
    const-string v0, "  mWifiLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4350
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4351
    const-string v0, "  mWifiSsid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4352
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4353
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

    .line 4355
    const-string v0, "  mWifiActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4356
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4358
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    if-eqz v0, :cond_0

    .line 4359
    const-string v0, "  - wimax ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4360
    const-string v0, "  mIsWimaxEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4361
    const-string v0, "  mWimaxState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4362
    const-string v0, "  mWimaxConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4363
    const-string v0, "  mWimaxIdle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4364
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

    .line 4365
    const-string v0, "  mWimaxSignal=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4366
    const-string v0, "  mWimaxState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4367
    const-string v0, "  mWimaxExtraState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4370
    :cond_0
    const-string v0, "  - Bluetooth ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4371
    const-string v0, "  mBtReverseTethered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4372
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4374
    const-string v0, "  - connectivity ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4375
    const-string v0, "  mMobileInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4376
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4377
    const-string v0, "  mWifiInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4378
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4379
    const-string v0, "  mWimaxInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4380
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4382
    const-string v0, "  - icons ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4383
    const-string v0, "  mLastPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4384
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4385
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4386
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4387
    const-string v0, "  mLastDataDirectionIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4388
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4389
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4390
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4391
    const-string v0, "  mLastDataDirectionOverlayIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4392
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4393
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4394
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4395
    const-string v0, "  mLastWifiIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4396
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4397
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4398
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4399
    const-string v0, "  mLastCombinedSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4400
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4401
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4402
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4403
    const-string v0, "  mLastDataTypeIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4404
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4405
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4406
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4407
    const-string v0, "  mLastCombinedLabel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4408
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4409
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4410
    return-void

    .line 4269
    :cond_1
    const-string v0, "DISCONNECTED"

    goto/16 :goto_0
.end method

.method protected getResourceName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 4413
    if-eqz p1, :cond_0

    .line 4414
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4416
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4421
    :goto_0
    return-object v0

    .line 4417
    :catch_0
    move-exception v0

    .line 4418
    const-string v0, "(unknown)"

    goto :goto_0

    .line 4421
    :cond_0
    const-string v0, "(null)"

    goto :goto_0
.end method

.method public hasMobileDataFeature()Z
    .locals 1

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    return v0
.end method

.method public isEmergencyOnly()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1339
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 1340
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1350
    :cond_0
    :goto_0
    return v0

    .line 1344
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1340
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 726
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 727
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

    if-eqz v1, :cond_2

    .line 731
    :cond_0
    const-string v0, "StatusBar.NetworkController"

    const-string v1, " WifiManager.RSSI_CHANGED_ACTION | WIFI_STATE_CHANGED_ACTION | NETWORK_STATE_CHANGED_ACTION Received"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiState(Landroid/content/Intent;)V

    .line 734
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 795
    :cond_1
    :goto_0
    return-void

    .line 738
    :cond_2
    const-string v1, "com.motorola.android.intent.action.GET_REAL_DATA_NET_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 739
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateRealDataNetType(Landroid/content/Intent;)V

    goto :goto_0

    .line 742
    :cond_3
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 743
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "TelephonyIntents.ACTION_SIM_STATE_CHANGED) Received"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateSimState(Landroid/content/Intent;)V

    .line 748
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateTelephonySignalStrength()V

    .line 750
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateSimIcon()V

    .line 753
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataIcon()V

    .line 754
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto :goto_0

    .line 755
    :cond_4
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 756
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "Telephony.Intents.SPN_STRINGS_UPDATED_ACTION Received"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
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

    .line 761
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto :goto_0

    .line 762
    :cond_5
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 764
    :cond_6
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "ConnectivityManager.CONNECTIVITY_ACTION | INET_CONDITION_ACTION Received"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateConnectivity(Landroid/content/Intent;)V

    .line 766
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto :goto_0

    .line 770
    :cond_7
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 771
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "ACTION_BOOT_COMPLETED Received"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mStatusBarHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 774
    :cond_8
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 775
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "Intent.ACTION_CONFIGURATION_CHANGED Received"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104051d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorName_string:Ljava/lang/String;

    .line 778
    const-string v0, "StatusBar.NetworkController"

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

    .line 779
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 780
    :cond_9
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 781
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "Intent.ACTION_AIRPLANE_MODE_CHANGED Received"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateAirplaneMode()V

    .line 783
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 784
    :cond_a
    const-string v1, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 788
    :cond_b
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "WimaxManagerConstants.NET_4G_STATE_CHANGED_ACTION | SIGNAL_LEVEL_CHANGED_ACTION | WIMAX_NETWORK_STATE_CHANGED_ACTION Received"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxState(Landroid/content/Intent;)V

    .line 792
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0
.end method

.method public refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V
    .locals 11

    .prologue
    const/4 v1, 0x1

    .line 568
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setWifiIndicators(ZIILjava/lang/String;)V

    .line 576
    const-string v0, "StatusBar.NetworkController"

    const-string v2, "refreshSignalCluster: wifi cluster - shows wifi status:"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const-string v0, "StatusBar.NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mWifiConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  Wifi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  Activity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_5

    .line 602
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_1
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

    .line 618
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "refreshSignalCluster: signal cluster - shows wimax:"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "    mHasMobileDataFeature=true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const-string v1, "StatusBar.NetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Signal="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  Roaming="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  =\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    DataTypeShown="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  Activity="

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

    const-string v2, "  \"(none)\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mSimIconId="

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

    const-string v2, "  =\""

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

    .line 717
    :goto_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setIsAirplaneMode(ZI)V

    .line 718
    return-void

    .line 568
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 602
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    goto/16 :goto_1

    .line 625
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    goto/16 :goto_2

    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    goto/16 :goto_3

    .line 664
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_6

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_5
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

    .line 680
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "refreshSignalCluster: signal cluster - shows normal mobile data:"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mHasMobileDataFeature="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const-string v1, "StatusBar.NetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Signal="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  Roaming="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    DataTypeShown="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Activity="

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

    const-string v2, "  \""

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

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mSimIconId="

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

    const-string v2, "  =\""

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

    goto/16 :goto_4

    .line 664
    :cond_6
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto/16 :goto_5

    .line 687
    :cond_7
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto/16 :goto_6

    :cond_8
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto/16 :goto_7
.end method

.method refreshViews()V
    .locals 12

    .prologue
    .line 3353
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    .line 3355
    const/4 v4, 0x0

    .line 3357
    const/4 v3, 0x0

    .line 3359
    const/4 v2, 0x0

    .line 3360
    const-string v1, ""

    .line 3361
    const-string v0, ""

    .line 3362
    const-string v0, ""

    .line 3364
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v8

    .line 3366
    const-string v0, "StatusBar.NetworkController"

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

    .line 3370
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-nez v0, :cond_10

    .line 3371
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 3372
    const-string v0, ""

    .line 3480
    :goto_0
    const-string v5, "StatusBar.NetworkController"

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

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3483
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v5, :cond_19

    .line 3484
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    if-nez v1, :cond_18

    .line 3485
    const v1, 0x7f0a0074

    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3486
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 3508
    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 3510
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 3511
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 3514
    const-string v5, "StatusBar.NetworkController"

    const-string v6, "refreshViews: wifi active:"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3516
    const-string v5, "StatusBar.NetworkController"

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

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3518
    const-string v5, "StatusBar.NetworkController"

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

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3523
    const-string v5, "StatusBar.NetworkController"

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

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3527
    const-string v5, "StatusBar.NetworkController"

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

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3529
    const-string v5, "StatusBar.NetworkController"

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

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    move v4, v2

    move-object v2, v1

    .line 3555
    :goto_2
    const-string v6, "StatusBar.NetworkController"

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

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3558
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    if-eqz v6, :cond_0

    .line 3559
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v3, 0x7f0a001c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3560
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherIconId:I

    .line 3561
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0061

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 3564
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 3567
    const-string v6, "StatusBar.NetworkController"

    const-string v9, "refreshViews: bluetooth tethering active:"

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3569
    const-string v6, "StatusBar.NetworkController"

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

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3574
    const-string v6, "StatusBar.NetworkController"

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

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3576
    const-string v6, "StatusBar.NetworkController"

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

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3582
    :cond_0
    const-string v6, "StatusBar.NetworkController"

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

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3583
    const-string v6, "StatusBar.NetworkController"

    const-string v9, "refreshViews: or no service:"

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3584
    const-string v6, "StatusBar.NetworkController"

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

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3585
    const-string v6, "StatusBar.NetworkController"

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

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3586
    const-string v9, "StatusBar.NetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "refreshViews:   mServiceState.isEmergencyOnly()="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v6, :cond_1b

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

    invoke-static {v9, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3590
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    const/16 v9, 0x9

    if-ne v6, v9, :cond_1c

    const/4 v6, 0x1

    .line 3591
    :goto_4
    if-eqz v6, :cond_1

    .line 3593
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 3596
    :cond_1
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eqz v9, :cond_1f

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v9, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v9

    if-nez v9, :cond_1f

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v9

    if-nez v9, :cond_1f

    .line 3601
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v9, 0x7f0a0062

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 3603
    const v6, 0x7f020098

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    .line 3604
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 3605
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    .line 3607
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3608
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    .line 3609
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 3612
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v6, :cond_1d

    .line 3614
    const-string v0, ""

    .line 3628
    :goto_5
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxSignalLevel:I

    packed-switch v6, :pswitch_data_0

    .line 3630
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 3631
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 3632
    const v6, 0x7f020098

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    .line 3647
    :goto_6
    const-string v6, "StatusBar.NetworkController"

    const-string v7, "refreshViews: airplane mode or no service:"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3649
    const-string v6, "StatusBar.NetworkController"

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

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3651
    const-string v6, "StatusBar.NetworkController"

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

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3653
    const-string v6, "StatusBar.NetworkController"

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

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3655
    const-string v6, "StatusBar.NetworkController"

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

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3658
    const-string v6, "StatusBar.NetworkController"

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

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3661
    const-string v6, "StatusBar.NetworkController"

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

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3663
    const-string v6, "StatusBar.NetworkController"

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

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    move v5, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 3771
    :goto_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isLte()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    const/4 v7, 0x2

    if-ne v0, v7, :cond_8

    .line 3778
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileDataEnabled:Z

    .line 3780
    const-string v0, "StatusBar.NetworkController"

    const-string v7, "refreshViews: Show/Hide data icon when wifi is active:"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3781
    const-string v0, "StatusBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews:   is CDMA || LTE : mDataState="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " mConfigShowBothWifiAndMobileNetwork="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigShowBothWifiAndMobileNetwork:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " mWifiConnected="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " mConfigAlwaysShowAttachedNetworkType="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigAlwaysShowAttachedNetworkType:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " mMobileDataEnabled="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileDataEnabled:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " isEmergencyOnly="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3789
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    const/4 v7, 0x2

    if-eq v0, v7, :cond_24

    .line 3790
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileDataEnabled:Z

    .line 3791
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigShowBothWifiAndMobileNetwork:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v0, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigAlwaysShowAttachedNetworkType:Z

    if-eqz v0, :cond_23

    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileDataEnabled:Z

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_23

    .line 3812
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    .line 3813
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 3817
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    .line 3837
    :cond_6
    :goto_8
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    if-nez v0, :cond_7

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 3840
    :cond_7
    const-string v0, "StatusBar.NetworkController"

    const-string v7, "refreshViews: CDMA || LTE:"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3841
    const-string v0, "StatusBar.NetworkController"

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

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3844
    const-string v0, "StatusBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews:   mMobileActivityIconId="

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

    .line 3851
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isLte()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    const/4 v7, 0x2

    if-eq v0, v7, :cond_e

    .line 3860
    :cond_9
    const-string v0, "StatusBar.NetworkController"

    const-string v7, "refreshViews: Show/hide data icon when wifi is active:"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3861
    const-string v0, "StatusBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews:   not CDMA: doesDisplayDataIcon()="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->doesDisplayDataIcon()Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " mDataState="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " isEmergencyOnly()="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " mConfigShowBothWifiAndMobileNetwork="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigShowBothWifiAndMobileNetwork:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " mWifiConnected="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " mConfigAlwaysShowAttachedNetworkType="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigAlwaysShowAttachedNetworkType:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3871
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->doesDisplayDataIcon()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_26

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigShowBothWifiAndMobileNetwork:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v0, :cond_b

    :cond_a
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConfigAlwaysShowAttachedNetworkType:Z

    if-eqz v0, :cond_26

    .line 3898
    :cond_b
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    const/4 v7, 0x2

    if-eq v0, v7, :cond_25

    .line 3901
    const-string v0, "StatusBar.NetworkController"

    const-string v7, "refreshViews:   attached, but not connected"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3903
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeNotConnectedIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    .line 3904
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 3933
    :cond_c
    :goto_9
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    if-nez v0, :cond_d

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 3936
    :cond_d
    const-string v0, "StatusBar.NetworkController"

    const-string v7, "refreshViews: not CDMA (is LTE or GSM):"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3937
    const-string v0, "StatusBar.NetworkController"

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

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3940
    const-string v0, "StatusBar.NetworkController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews:   mMobileActivityIconId="

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

    .line 3950
    :cond_e
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataIconForDisabledOption()V

    .line 3956
    const-string v7, "StatusBar.NetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "refreshViews: SUMMARY:\n connected to={"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v0, :cond_28

    const-string v0, " wifi"

    :goto_a
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    if-eqz v0, :cond_29

    const-string v0, " data"

    :goto_b
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " }\n level="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_2a

    const-string v0, "null"

    :goto_c
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

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3990
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    if-ne v0, v4, :cond_f

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    if-ne v0, v4, :cond_f

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastMobileDataDirectionOverlayIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    if-ne v0, v4, :cond_f

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastRoamingIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    if-ne v0, v4, :cond_f

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    if-ne v0, v4, :cond_f

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    if-ne v0, v4, :cond_f

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    if-ne v0, v4, :cond_f

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-ne v0, v4, :cond_f

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSimIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    if-eq v0, v4, :cond_2b

    .line 4006
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .line 4007
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    goto :goto_d

    .line 3382
    :cond_10
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    if-eqz v0, :cond_11

    .line 3383
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 3399
    :goto_e
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    if-eqz v5, :cond_16

    .line 3400
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 3406
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataActivityIcon()V

    .line 3440
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 3441
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 3442
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 3444
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 3448
    const-string v4, "StatusBar.NetworkController"

    const-string v5, "refreshViews: mobile active:"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3450
    const-string v4, "StatusBar.NetworkController"

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

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3452
    const-string v4, "StatusBar.NetworkController"

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

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3455
    const-string v4, "StatusBar.NetworkController"

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

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    const-string v4, "StatusBar.NetworkController"

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

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3460
    const-string v4, "StatusBar.NetworkController"

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

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    move v3, v2

    move v2, v1

    move-object v1, v0

    goto/16 :goto_0

    .line 3384
    :cond_11
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    if-nez v0, :cond_12

    if-eqz v8, :cond_15

    .line 3385
    :cond_12
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    if-nez v0, :cond_13

    if-eqz v8, :cond_14

    .line 3387
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto/16 :goto_e

    .line 3390
    :cond_14
    const-string v0, ""

    goto/16 :goto_e

    .line 3393
    :cond_15
    const v0, 0x7f0a0073

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 3465
    :cond_16
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v5, :cond_17

    .line 3467
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto/16 :goto_0

    .line 3472
    :cond_17
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 3473
    const/4 v2, 0x0

    .line 3474
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 3475
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    goto/16 :goto_0

    .line 3488
    :cond_18
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    .line 3490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "xxxxXXXXxxxxXXXX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3492
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_1

    .line 3503
    :pswitch_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 3494
    :pswitch_1
    const v2, 0x7f0200a0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 3497
    :pswitch_2
    const v2, 0x7f0200a2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 3500
    :pswitch_3
    const v2, 0x7f0200a1

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 3534
    :cond_19
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-eqz v5, :cond_1a

    .line 3535
    const-string v5, ""

    .line 3540
    :goto_f
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 3543
    const-string v6, "StatusBar.NetworkController"

    const-string v9, "refreshViews: wifi disabled:"

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3545
    const-string v6, "StatusBar.NetworkController"

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

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3547
    const-string v6, "StatusBar.NetworkController"

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

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v5

    move v5, v4

    move v4, v2

    move-object v2, v1

    move-object v1, v11

    goto/16 :goto_2

    .line 3537
    :cond_1a
    const v5, 0x7f0a0073

    invoke-virtual {v7, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_f

    .line 3586
    :cond_1b
    const-string v6, "null"

    goto/16 :goto_3

    .line 3590
    :cond_1c
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 3616
    :cond_1d
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-eqz v1, :cond_1e

    .line 3618
    const-string v1, ""

    .line 3623
    :goto_10
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 3624
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto/16 :goto_5

    .line 3620
    :cond_1e
    const v1, 0x7f0a0073

    invoke-virtual {v7, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 3621
    goto :goto_10

    .line 3635
    :pswitch_4
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 3636
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 3637
    const v6, 0x7f02012f

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    goto/16 :goto_6

    .line 3640
    :pswitch_5
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 3641
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 3642
    const v6, 0x7f02013f

    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    goto/16 :goto_6

    .line 3667
    :cond_1f
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    if-nez v9, :cond_4b

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v9, :cond_4b

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    if-nez v9, :cond_4b

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-nez v9, :cond_4b

    if-nez v6, :cond_4b

    .line 3675
    const-string v2, "StatusBar.NetworkController"

    const-string v3, "refreshViews: pretty much totally disconnected:"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3676
    const-string v2, "StatusBar.NetworkController"

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

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3677
    const-string v2, "StatusBar.NetworkController"

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

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3678
    const-string v2, "StatusBar.NetworkController"

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

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3679
    const-string v2, "StatusBar.NetworkController"

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

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3682
    const v2, 0x7f0a0073

    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3685
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-eqz v2, :cond_20

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 3687
    :goto_11
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :goto_12
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 3715
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3716
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    .line 3717
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 3720
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNoRoaming:Z

    if-nez v3, :cond_22

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingNoData:Z

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 3722
    const v3, 0x7f020074

    .line 3724
    const-string v6, "StatusBar.NetworkController"

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

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3743
    :goto_13
    const-string v6, "StatusBar.NetworkController"

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

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3746
    const-string v6, "StatusBar.NetworkController"

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

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3748
    const-string v6, "StatusBar.NetworkController"

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

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3750
    const-string v6, "StatusBar.NetworkController"

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

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3752
    const-string v6, "StatusBar.NetworkController"

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

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3755
    const-string v6, "StatusBar.NetworkController"

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

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v2

    move-object v2, v1

    move-object v1, v0

    move v11, v3

    move-object v3, v5

    move v5, v11

    goto/16 :goto_7

    .line 3685
    :cond_20
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    goto/16 :goto_11

    .line 3687
    :cond_21
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    goto/16 :goto_12

    .line 3733
    :cond_22
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 3735
    const-string v6, "StatusBar.NetworkController"

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

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 3821
    :cond_23
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    .line 3822
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 3826
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    goto/16 :goto_8

    .line 3832
    :cond_24
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    goto/16 :goto_8

    .line 3908
    :cond_25
    const-string v0, "StatusBar.NetworkController"

    const-string v7, "refreshViews:   normal connected (mobile active) state"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3910
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    goto/16 :goto_9

    .line 3919
    :cond_26
    const-string v0, "StatusBar.NetworkController"

    const-string v7, "refreshViews:   mobile icon and activity icon are disabled"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3920
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "StatusBar.NetworkController"

    const-string v7, "refreshViews:   mMobileInetCondition set to 0"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3923
    :cond_27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    .line 3924
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 3928
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    goto/16 :goto_9

    .line 3956
    :cond_28
    const-string v0, ""

    goto/16 :goto_a

    :cond_29
    const-string v0, ""

    goto/16 :goto_b

    :cond_2a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 4011
    :cond_2b
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eq v0, v4, :cond_2c

    .line 4012
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    .line 4016
    :cond_2c
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    if-eq v0, v4, :cond_2e

    .line 4017
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    .line 4018
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 4019
    const/4 v0, 0x0

    move v4, v0

    :goto_14
    if-ge v4, v7, :cond_2e

    .line 4020
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4022
    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    if-nez v9, :cond_2d

    .line 4023
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4019
    :goto_15
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_14

    .line 4025
    :cond_2d
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4026
    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4027
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 4034
    :cond_2e
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    if-eq v0, v4, :cond_2f

    .line 4035
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    .line 4036
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 4037
    const/4 v0, 0x0

    move v4, v0

    :goto_16
    if-ge v4, v7, :cond_2f

    .line 4038
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4039
    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4040
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4037
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_16

    .line 4045
    :cond_2f
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSimIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    if-eq v0, v4, :cond_32

    .line 4047
    const-string v0, "StatusBar.NetworkController"

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

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4051
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSimIconId:I

    .line 4052
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 4053
    const/4 v0, 0x0

    move v4, v0

    :goto_17
    if-ge v4, v7, :cond_32

    .line 4054
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4055
    if-eqz v0, :cond_30

    .line 4056
    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    if-nez v9, :cond_31

    .line 4057
    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4053
    :cond_30
    :goto_18
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_17

    .line 4059
    :cond_31
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4060
    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4061
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionSim:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_18

    .line 4069
    :cond_32
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    if-eq v0, v4, :cond_34

    .line 4070
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    .line 4071
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 4072
    const/4 v0, 0x0

    move v4, v0

    :goto_19
    if-ge v4, v7, :cond_34

    .line 4073
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4074
    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    if-nez v9, :cond_33

    .line 4075
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4072
    :goto_1a
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_19

    .line 4077
    :cond_33
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4078
    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4079
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 4085
    :cond_34
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    if-eq v0, v4, :cond_36

    .line 4086
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    .line 4087
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 4088
    const/4 v0, 0x0

    move v4, v0

    :goto_1b
    if-ge v4, v7, :cond_36

    .line 4089
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4090
    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    if-nez v9, :cond_35

    .line 4091
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4088
    :goto_1c
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1b

    .line 4093
    :cond_35
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4094
    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4095
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1c

    .line 4101
    :cond_36
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    if-eq v0, v6, :cond_37

    .line 4102
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    .line 4103
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 4104
    const/4 v0, 0x0

    move v4, v0

    :goto_1d
    if-ge v4, v7, :cond_37

    .line 4105
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4106
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4107
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4104
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1d

    .line 4113
    :cond_37
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    if-eq v0, v4, :cond_39

    .line 4114
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    .line 4115
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4116
    const/4 v0, 0x0

    move v4, v0

    :goto_1e
    if-ge v4, v6, :cond_39

    .line 4117
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4118
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    if-nez v7, :cond_38

    .line 4119
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4116
    :goto_1f
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1e

    .line 4121
    :cond_38
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4122
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconIdShown:I

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4123
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1f

    .line 4131
    :cond_39
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    if-eq v0, v4, :cond_3b

    .line 4133
    const-string v0, "StatusBar.NetworkController"

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

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4137
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    .line 4138
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4139
    const/4 v0, 0x0

    move v4, v0

    :goto_20
    if-ge v4, v6, :cond_3b

    .line 4140
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4141
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    if-nez v7, :cond_3a

    .line 4142
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4139
    :goto_21
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_20

    .line 4144
    :cond_3a
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4145
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4146
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_21

    .line 4151
    :cond_3b
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastMobileDataDirectionOverlayIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    if-eq v0, v4, :cond_3d

    .line 4153
    const-string v0, "StatusBar.NetworkController"

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

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4157
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastMobileDataDirectionOverlayIconId:I

    .line 4158
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4159
    const/4 v0, 0x0

    move v4, v0

    :goto_22
    if-ge v4, v6, :cond_3d

    .line 4160
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4161
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    if-nez v7, :cond_3c

    .line 4162
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4159
    :goto_23
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_22

    .line 4164
    :cond_3c
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4165
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4166
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_23

    .line 4174
    :cond_3d
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastRoamingIconId:I

    if-eq v0, v5, :cond_40

    .line 4176
    const-string v0, "StatusBar.NetworkController"

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

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4180
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastRoamingIconId:I

    .line 4181
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4182
    const/4 v0, 0x0

    move v4, v0

    :goto_24
    if-ge v4, v6, :cond_40

    .line 4183
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4184
    if-eqz v0, :cond_3e

    .line 4185
    if-nez v5, :cond_3f

    .line 4186
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4182
    :cond_3e
    :goto_25
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_24

    .line 4188
    :cond_3f
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4189
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4190
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_25

    .line 4196
    :cond_40
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastRoamingOverlayIconId:I

    if-eq v0, v5, :cond_43

    .line 4198
    const-string v0, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changing overlayRoaming overlay icon id to "

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

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4202
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastRoamingOverlayIconId:I

    .line 4203
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconOverlayViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4204
    const/4 v0, 0x0

    move v4, v0

    :goto_26
    if-ge v4, v6, :cond_43

    .line 4205
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconOverlayViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4206
    if-eqz v0, :cond_41

    .line 4207
    if-nez v5, :cond_42

    .line 4208
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4204
    :cond_41
    :goto_27
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_26

    .line 4210
    :cond_42
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4211
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4212
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionRoaming:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_27

    .line 4220
    :cond_43
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 4221
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    .line 4222
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 4223
    const/4 v0, 0x0

    move v4, v0

    :goto_28
    if-ge v4, v5, :cond_44

    .line 4224
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4225
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4223
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_28

    .line 4230
    :cond_44
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4231
    const/4 v0, 0x0

    move v3, v0

    :goto_29
    if-ge v3, v4, :cond_46

    .line 4232
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4233
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4234
    const-string v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 4235
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4231
    :goto_2a
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_29

    .line 4237
    :cond_45
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2a

    .line 4242
    :cond_46
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4243
    const/4 v0, 0x0

    move v2, v0

    :goto_2b
    if-ge v2, v3, :cond_48

    .line 4244
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4245
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4246
    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 4247
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4243
    :goto_2c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2b

    .line 4249
    :cond_47
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2c

    .line 4254
    :cond_48
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmergencyLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4255
    const/4 v0, 0x0

    move v2, v0

    :goto_2d
    if-ge v2, v3, :cond_4a

    .line 4256
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmergencyLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4257
    if-nez v8, :cond_49

    .line 4258
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4255
    :goto_2e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2d

    .line 4260
    :cond_49
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4261
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2e

    .line 4265
    :cond_4a
    return-void

    :cond_4b
    move v6, v5

    move v5, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_7

    .line 3628
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 3492
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected registerPhoneStateListener(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 487
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    .line 488
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x1e1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 494
    return-void
.end method

.method protected updateAirplaneMode()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1071
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    .line 1073
    return-void

    :cond_0
    move v0, v1

    .line 1071
    goto :goto_0
.end method

.method protected updateConnectivity(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3249
    const-string v0, "StatusBar.NetworkController"

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

    .line 3252
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3254
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 3257
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    .line 3258
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    if-eqz v0, :cond_1

    .line 3259
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    .line 3260
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 3266
    :goto_1
    const-string v0, "inetCondition"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3269
    const-string v4, "StatusBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateConnectivity: networkInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3270
    const-string v4, "StatusBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateConnectivity: connectionStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3274
    const/16 v4, 0x32

    if-le v0, v4, :cond_2

    .line 3278
    :goto_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    invoke-direct {p0, v0, v4, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->signalIconLog(Ljava/lang/String;II)V

    .line 3285
    const-string v0, "StatusBar.NetworkController"

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

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3290
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    packed-switch v0, :pswitch_data_0

    .line 3328
    :goto_3
    :pswitch_0
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 3329
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    .line 3335
    :goto_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 3336
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxIcons()V

    .line 3337
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataIcon()V

    .line 3338
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateTelephonySignalStrength()V

    .line 3340
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateRoamingIcon()V

    .line 3343
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateSimIcon()V

    .line 3345
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiIcons()V

    .line 3346
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 3347
    return-void

    :cond_0
    move v0, v2

    .line 3257
    goto/16 :goto_0

    .line 3262
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    .line 3263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    move v1, v2

    .line 3274
    goto :goto_2

    .line 3293
    :pswitch_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-eq v0, v1, :cond_3

    .line 3294
    const-string v0, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateConnectivity:  Change mMobileInetCondition= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3297
    :cond_3
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    goto :goto_3

    .line 3301
    :pswitch_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetCondition:I

    if-eq v0, v1, :cond_4

    .line 3302
    const-string v0, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateConnectivity:  Change mWifiInetCondition= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3305
    :cond_4
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetCondition:I

    goto :goto_3

    .line 3309
    :pswitch_3
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetCondition:I

    if-eq v0, v1, :cond_5

    .line 3310
    const-string v0, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateConnectivity:  Change mWimaxInetCondition= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3313
    :cond_5
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetCondition:I

    goto/16 :goto_3

    .line 3317
    :pswitch_4
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "there is no connection, reset iNetCondition"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3319
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    .line 3320
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetCondition:I

    .line 3321
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetCondition:I

    goto/16 :goto_3

    .line 3331
    :cond_6
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    goto/16 :goto_4

    .line 3290
    nop

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
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3044
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPlmnAndSpn:Z

    .line 3046
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3047
    const/4 v1, 0x0

    .line 3049
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 3050
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    .line 3053
    :cond_0
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 3054
    if-eqz v1, :cond_2

    .line 3055
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPlmnAndSpn:Z

    if-eqz v1, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3056
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3057
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3066
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 3067
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 3073
    :goto_1
    return-void

    .line 3062
    :cond_2
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3069
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method protected updateSimState(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 940
    const-string v0, "ss"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 941
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 942
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 974
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateSimIcon()V

    .line 977
    const-string v1, "StatusBar.NetworkController"

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

    if-ne v0, v3, :cond_8

    const-string v0, "IccCard.State.ABSENT"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    return-void

    .line 944
    :cond_0
    const-string v1, "CARD_IO_ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 945
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 947
    :cond_1
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "IMSI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "LOADED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 953
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 955
    :cond_3
    const-string v1, "LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 956
    const-string v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 957
    const-string v1, "PIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 958
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 960
    :cond_4
    const-string v1, "PUK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 961
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 964
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 967
    :cond_6
    const-string v1, "ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 968
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ERROR:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 971
    :cond_7
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto/16 :goto_0

    .line 977
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v3, :cond_9

    const-string v0, "IccCard.State.READY"

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v3, :cond_a

    const-string v0, "IccCard.State.PIN_REQUIRED"

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v3, :cond_b

    const-string v0, "IccCard.State.PUK_REQUIRED"

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v3, :cond_c

    const-string v0, "IccCard.State.PERSO_LOCKED"

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->ERROR:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v3, :cond_d

    const-string v0, "IccCard.State.ERROR"

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v3, :cond_e

    const-string v0, "IccCard.State.UNKNOWN"

    goto/16 :goto_1

    :cond_e
    const-string v0, "-unknown-"

    goto/16 :goto_1
.end method

.method protected updateWifiIcons()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3145
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v1, :cond_0

    .line 3146
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 3147
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    .line 3157
    :goto_0
    return-void

    .line 3150
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataAndWifiStacked:Z

    if-eqz v1, :cond_1

    .line 3151
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 3155
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a004f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_0

    .line 3153
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v1, :cond_2

    const v0, 0x7f0200ad

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

    .line 3103
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3104
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3105
    const-string v0, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    .line 3141
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiIcons()V

    .line 3142
    return-void

    :cond_1
    move v0, v2

    .line 3105
    goto :goto_0

    .line 3108
    :cond_2
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3109
    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 3111
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    .line 3112
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    .line 3114
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v0, :cond_7

    if-nez v3, :cond_7

    .line 3116
    const-string v0, "wifiInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    .line 3117
    if-nez v0, :cond_3

    .line 3118
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 3120
    :cond_3
    if-eqz v0, :cond_6

    .line 3121
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    .line 3131
    :cond_4
    :goto_3
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    .line 3132
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiRssi:I

    goto :goto_1

    :cond_5
    move v1, v2

    .line 3112
    goto :goto_2

    .line 3123
    :cond_6
    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    goto :goto_3

    .line 3125
    :cond_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v0, :cond_4

    .line 3126
    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    goto :goto_3

    .line 3133
    :cond_8
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3134
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v0, :cond_0

    .line 3135
    const-string v0, "newRssi"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiRssi:I

    .line 3136
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
    .line 3226
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_2

    .line 3227
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_1

    .line 3228
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    if-eqz v0, :cond_0

    .line 3229
    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_IDLE:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    .line 3232
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    .line 3242
    :goto_1
    return-void

    .line 3231
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    goto :goto_0

    .line 3235
    :cond_1
    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_DISCONNECTED:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    .line 3236
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0054

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    goto :goto_1

    .line 3239
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    .line 3240
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

    .line 3202
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 3203
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    .line 3204
    const-string v3, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3205
    const-string v2, "4g_state"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3207
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    .line 3221
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 3222
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxIcons()V

    .line 3223
    return-void

    :cond_1
    move v0, v1

    .line 3207
    goto :goto_0

    .line 3209
    :cond_2
    const-string v3, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3210
    const-string v0, "newSignalLevel"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    goto :goto_1

    .line 3211
    :cond_3
    const-string v3, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3212
    const-string v2, "WimaxState"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    .line 3214
    const-string v2, "WimaxStateDetail"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    .line 3217
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_4

    move v2, v0

    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    .line 3219
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    :goto_3
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    goto :goto_1

    :cond_4
    move v2, v1

    .line 3217
    goto :goto_2

    :cond_5
    move v0, v1

    .line 3219
    goto :goto_3
.end method
