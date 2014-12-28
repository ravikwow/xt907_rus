.class public Lcom/android/systemui/statusbar/policy/MSimNetworkController;
.super Lcom/android/systemui/statusbar/policy/NetworkController;
.source "MSimNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimWifiHandler;,
        Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;
    }
.end annotation


# instance fields
.field mDefaultSubscription:I

.field mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

.field mMSimContentDescriptionDataType:[Ljava/lang/String;

.field mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

.field mMSimDataActivity:[I

.field mMSimDataConnected:[Z

.field mMSimDataDirectionIconId:[I

.field mMSimDataServiceState:[I

.field mMSimDataSignalIconId:[I

.field mMSimDataTypeIconId:[I

.field private mMSimIconId:[I

.field mMSimLastCombinedSignalIconId:[I

.field mMSimLastDataDirectionIconId:[I

.field mMSimLastDataTypeIconId:[I

.field mMSimLastPhoneSignalIconId:[I

.field mMSimLastSimIconId:[I

.field mMSimMobileActivityIconId:[I

.field mMSimNetworkName:[Ljava/lang/String;

.field mMSimPhoneSignalIconId:[I

.field private mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field mMSimServiceState:[Landroid/telephony/ServiceState;

.field mMSimSignalStrength:[Landroid/telephony/SignalStrength;

.field mMSimState:[Lcom/android/internal/telephony/IccCard$State;

.field mMSimcombinedActivityIconId:[I

.field mMSimcombinedSignalIconId:[I

.field mNoMSimIconId:[I

.field private mPhone:Landroid/telephony/MSimTelephonyManager;

.field mSimSignalClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 129
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mSimSignalClusters:Ljava/util/ArrayList;

    .line 131
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v1

    .line 132
    .local v1, "numPhones":I
    new-array v2, v1, [Landroid/telephony/SignalStrength;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    .line 133
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataServiceState:[I

    .line 134
    new-array v2, v1, [Landroid/telephony/ServiceState;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    .line 135
    new-array v2, v1, [Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;

    .line 136
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimIconId:[I

    .line 137
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[I

    .line 138
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    .line 139
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    .line 140
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileActivityIconId:[I

    .line 141
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    .line 142
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastPhoneSignalIconId:[I

    .line 143
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimNetworkName:[Ljava/lang/String;

    .line 144
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataTypeIconId:[I

    .line 145
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    .line 146
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    .line 147
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataDirectionIconId:[I

    .line 148
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataDirectionIconId:[I

    .line 149
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastCombinedSignalIconId:[I

    .line 150
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    .line 151
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedActivityIconId:[I

    .line 152
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataActivity:[I

    .line 153
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    .line 154
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    .line 155
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastSimIconId:[I

    .line 157
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 158
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    new-instance v3, Landroid/telephony/SignalStrength;

    invoke-direct {v3}, Landroid/telephony/SignalStrength;-><init>()V

    aput-object v3, v2, v0

    .line 159
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    new-instance v3, Landroid/telephony/ServiceState;

    invoke-direct {v3}, Landroid/telephony/ServiceState;-><init>()V

    aput-object v3, v2, v0

    .line 160
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    aput-object v3, v2, v0

    .line 162
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[I

    const v3, 0x7f02009c

    aput v3, v2, v0

    .line 163
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastPhoneSignalIconId:[I

    aput v5, v2, v0

    .line 164
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataTypeIconId:[I

    aput v5, v2, v0

    .line 165
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aput-boolean v4, v2, v0

    .line 166
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataDirectionIconId:[I

    aput v5, v2, v0

    .line 167
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastCombinedSignalIconId:[I

    aput v5, v2, v0

    .line 168
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    aput v4, v2, v0

    .line 169
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedActivityIconId:[I

    aput v4, v2, v0

    .line 170
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataActivity:[I

    aput v4, v2, v0

    .line 171
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastSimIconId:[I

    aput v4, v2, v0

    .line 172
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimNetworkName:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 173
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataServiceState:[I

    const/4 v3, 0x1

    aput v3, v2, v0

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    .line 177
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget-boolean v2, v2, v3

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    .line 178
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 179
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataActivity:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    .line 180
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataServiceState:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    .line 181
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    .line 182
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 183
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 185
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimNetworkName:[Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 186
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 187
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastPhoneSignalIconId:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    .line 189
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataDirectionIconId:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    .line 190
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 191
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 193
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimIconId:I

    .line 195
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileActivityIconId:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 197
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 198
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 200
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 202
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataDirectionIconId:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    .line 203
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastCombinedSignalIconId:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    .line 204
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataTypeIconId:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    .line 205
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastSimIconId:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSimIconId:I

    .line 206
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkController;
    .param p1, "x1"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateTelephonySignalStrength(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkController;
    .param p1, "x1"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataNetType(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkController;
    .param p1, "x1"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataIcon(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MSimNetworkController;
    .param p1, "x1"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->isCdma(I)Z

    move-result v0

    return v0
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 322
    new-instance v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;-><init>(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 385
    .local v0, "mMSimPhoneStateListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private hasService(I)Z
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    const/4 v1, 0x0

    .line 451
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v2, p1

    .line 452
    .local v0, "ss":Landroid/telephony/ServiceState;
    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 458
    :pswitch_0
    const/4 v1, 0x1

    .line 461
    :cond_0
    :pswitch_1
    return v1

    .line 453
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isCdma(I)Z
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final updateDataIcon(I)V
    .locals 12
    .param p1, "subscription"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 673
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDataIcon subscription ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const/4 v1, 0x0

    .line 675
    .local v1, "iconId":I
    const/4 v4, 0x1

    .line 676
    .local v4, "visible":Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "multi_sim_data_call"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 678
    .local v0, "dataSub":I
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDataIcon dataSub ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    if-eq p1, v0, :cond_0

    .line 681
    const-string v5, "StatusBar.MSimNetworkController"

    const-string v6, "updateDataIcon return"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :goto_0
    return-void

    .line 685
    :cond_0
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDataIcon  when SimState ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;

    aget-object v7, v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    if-nez v5, :cond_1

    .line 688
    const/4 v4, 0x0

    .line 744
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 746
    .local v2, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mPhone:Landroid/telephony/MSimTelephonyManager;

    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getNetworkType(I)I

    move-result v6

    invoke-interface {v5, v6, v4}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 753
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataDirectionIconId:[I

    aput v1, v5, p1

    .line 754
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aput-boolean v4, v5, p1

    .line 755
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDataIcon when mMSimDataConnected ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aget-boolean v7, v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 689
    .end local v2    # "ident":J
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->isCdma(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 690
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDataIcon  when gsm mMSimState ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;

    aget-object v7, v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;

    aget-object v5, v5, p1

    sget-object v6, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;

    aget-object v5, v5, p1

    sget-object v6, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v5, v6, :cond_4

    .line 694
    :cond_2
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-ne v5, v8, :cond_3

    .line 695
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataActivity:[I

    aget v5, v5, p1

    packed-switch v5, :pswitch_data_0

    .line 706
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v1, v5, v9

    .line 709
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataDirectionIconId:[I

    aput v1, v5, p1

    goto :goto_1

    .line 697
    :pswitch_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v1, v5, v10

    .line 698
    goto :goto_3

    .line 700
    :pswitch_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v1, v5, v8

    .line 701
    goto :goto_3

    .line 703
    :pswitch_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v1, v5, v11

    .line 704
    goto :goto_3

    .line 711
    :cond_3
    const/4 v1, 0x0

    .line 712
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 715
    :cond_4
    const-string v5, "StatusBar.MSimNetworkController"

    const-string v6, "updateDataIcon when no sim"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const v1, 0x7f020088

    .line 717
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 721
    :cond_5
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-ne v5, v8, :cond_6

    .line 722
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataActivity:[I

    aget v5, v5, p1

    packed-switch v5, :pswitch_data_1

    .line 734
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v1, v5, v9

    .line 735
    goto/16 :goto_1

    .line 724
    :pswitch_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v1, v5, v10

    .line 725
    goto/16 :goto_1

    .line 727
    :pswitch_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v1, v5, v8

    .line 728
    goto/16 :goto_1

    .line 730
    :pswitch_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v1, v5, v11

    .line 731
    goto/16 :goto_1

    .line 738
    :cond_6
    const/4 v1, 0x0

    .line 739
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 748
    .restart local v2    # "ident":J
    :catch_0
    move-exception v5

    .line 750
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2

    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 695
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 722
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final updateDataNetType(I)V
    .locals 8
    .param p1, "subscription"    # I

    .prologue
    const v7, 0x7f020070

    const v6, 0x7f02006e

    const/4 v5, 0x0

    const v4, 0x7f09005a

    const v3, 0x7f02006f

    .line 519
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_1

    .line 522
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 523
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v7, v0, p1

    .line 524
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v2, 0x7f09005c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    .line 637
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 638
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->isCdmaEri(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    const v1, 0x7f020074

    aput v1, v0, p1

    .line 644
    :cond_0
    :goto_1
    return-void

    .line 527
    :cond_1
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataNetType sub = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDataNetType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 629
    :pswitch_0
    const-string v0, "StatusBar.MSimNetworkController"

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

    .line 631
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    .line 632
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v5, v0, p1

    goto :goto_0

    .line 532
    :pswitch_1
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "updateDataNetType NETWORK_TYPE_UNKNOWN"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_2

    .line 536
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 537
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v5, v0, p1

    .line 538
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v2, 0x7f090059

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_0

    .line 545
    :cond_2
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_3

    .line 547
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 548
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    const v1, 0x7f020071

    aput v1, v0, p1

    .line 549
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v2, 0x7f09005e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_0

    .line 557
    :cond_3
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 558
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v3, v0, p1

    .line 559
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_0

    .line 566
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_4

    .line 568
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 569
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    const v1, 0x7f020073

    aput v1, v0, p1

    .line 570
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v2, 0x7f09005b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_0

    .line 574
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 575
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v3, v0, p1

    .line 576
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_0

    .line 583
    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 584
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v6, v0, p1

    .line 585
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v2, 0x7f09005d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_0

    .line 590
    :pswitch_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 591
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v6, v0, p1

    .line 592
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v2, 0x7f09005d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_0

    .line 600
    :pswitch_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 601
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v3, v0, p1

    .line 602
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_0

    .line 607
    :pswitch_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 608
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v7, v0, p1

    .line 609
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v2, 0x7f09005c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_0

    .line 613
    :pswitch_9
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_5

    .line 615
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 616
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    const v1, 0x7f020072

    aput v1, v0, p1

    .line 617
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v2, 0x7f090059

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_0

    .line 621
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 622
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v3, v0, p1

    .line 623
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto/16 :goto_0

    .line 641
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mPhone:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/MSimTelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    const v1, 0x7f020074

    aput v1, v0, p1

    goto/16 :goto_1

    .line 529
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

.method private final updateSimIcon(I)V
    .locals 3
    .param p1, "cardIndex"    # I

    .prologue
    .line 663
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In updateSimIcon card ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", simState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_0

    .line 665
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    const v1, 0x7f020088

    aput v1, v0, p1

    .line 669
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 670
    return-void

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    goto :goto_0
.end method

.method private final updateTelephonySignalStrength(I)V
    .locals 6
    .param p1, "subscription"    # I

    .prologue
    const v5, 0x7f02009c

    .line 466
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTelephonySignalStrength: subscription ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->hasService(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataServiceState:[I

    aget v2, v2, p1

    if-eqz v2, :cond_0

    .line 469
    const-string v2, "StatusBar.MSimNetworkController"

    const-string v3, " No service"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[I

    aput v5, v2, p1

    .line 471
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aput v5, v2, p1

    .line 516
    :goto_0
    return-void

    .line 473
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v2, v2, p1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    if-nez v2, :cond_2

    .line 475
    :cond_1
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Null object, mMSimSignalStrength= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMSimServiceState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[I

    aput v5, v2, p1

    .line 480
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aput v5, v2, p1

    .line 481
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    goto :goto_0

    .line 486
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->isCdma(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v2, :cond_5

    .line 487
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .local v0, "iconLevel":I
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    .line 488
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAlwaysShowCdmaRssi= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " set to cdmaLevel= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " instead of level= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->isCdma(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->isCdmaEri(I)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mPhone:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v2, p1}, Landroid/telephony/MSimTelephonyManager;->isNetworkRoaming(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 500
    :cond_4
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v2, v3

    .line 505
    .local v1, "iconList":[I
    :goto_2
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTelephonySignalStrength iconList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "iconLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMobileInetCondition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[I

    aget v3, v1, v0

    aput v3, v2, p1

    .line 508
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 511
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v3, v3, v4

    aget v3, v3, v0

    aput v3, v2, p1

    goto/16 :goto_0

    .line 493
    .end local v0    # "iconLevel":I
    .end local v1    # "iconList":[I
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    .restart local v0    # "iconLevel":I
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    goto :goto_1

    .line 502
    :cond_6
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    aget-object v1, v2, v3

    .restart local v1    # "iconList":[I
    goto :goto_2
.end method


# virtual methods
.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;I)V
    .locals 1
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;
    .param p2, "subscription"    # I

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mSimSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;I)V

    .line 240
    return-void
.end method

.method protected createWifiHandler()V
    .locals 4

    .prologue
    .line 211
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 212
    new-instance v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimWifiHandler;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimWifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)V

    .line 213
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 214
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 215
    .local v1, "wifiMessenger":Landroid/os/Messenger;
    if-eqz v1, :cond_0

    .line 216
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 218
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1240
    const-string v0, "NetworkController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1241
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

    .line 1244
    const-string v0, "  - telephony ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1245
    const-string v0, "  hasService()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1246
    invoke-direct {p0, p4}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->hasService(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1247
    const-string v0, "  mHspaDataDistinguishable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1248
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1249
    const-string v0, "  mMSimDataConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1250
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aget-boolean v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1251
    const-string v0, "  mMSimState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1252
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;

    aget-object v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1253
    const-string v0, "  mPhoneState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1254
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1255
    const-string v0, "  mDataState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1256
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1257
    const-string v0, "  mMSimDataActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1258
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataActivity:[I

    aget v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1259
    const-string v0, "  mDataNetType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1260
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1261
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1262
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1263
    const-string v0, "  mMSimServiceState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1264
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1265
    const-string v0, "  mMSimSignalStrength="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1266
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1267
    const-string v0, "  mLastSignalLevel"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1268
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1269
    const-string v0, "  mMSimNetworkName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1270
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1271
    const-string v0, "  mNetworkNameDefault="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1272
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1273
    const-string v0, "  mNetworkNameSeparator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1274
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1275
    const-string v0, "  mMSimPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1276
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1277
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1278
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1279
    const-string v0, "  mMSimDataDirectionIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1280
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataDirectionIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1281
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1282
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataDirectionIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1283
    const-string v0, "  mMSimDataSignalIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1284
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1285
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1286
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1287
    const-string v0, "  mMSimDataTypeIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1288
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1289
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1290
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1292
    const-string v0, "  - wifi ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1293
    const-string v0, "  mWifiEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1294
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1295
    const-string v0, "  mWifiConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1296
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1297
    const-string v0, "  mWifiRssi="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1298
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiRssi:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1299
    const-string v0, "  mWifiLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1300
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1301
    const-string v0, "  mWifiSsid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1302
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1303
    const-string v0, "  mWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1305
    const-string v0, "  mWifiActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1306
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1308
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    if-eqz v0, :cond_0

    .line 1309
    const-string v0, "  - wimax ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1310
    const-string v0, "  mIsWimaxEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1311
    const-string v0, "  mWimaxConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1312
    const-string v0, "  mWimaxIdle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1313
    const-string v0, "  mWimaxIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1315
    const-string v0, "  mWimaxSignal=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1316
    const-string v0, "  mWimaxState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1317
    const-string v0, "  mWimaxExtraState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1320
    :cond_0
    const-string v0, "  - Bluetooth ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1321
    const-string v0, "  mBtReverseTethered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1322
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1325
    const-string v0, "  - connectivity ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1326
    const-string v0, "  mMobileInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1327
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1328
    const-string v0, "  mWimaxInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1329
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1330
    const-string v0, "  mWifiInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1331
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1334
    const-string v0, "  - icons ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1335
    const-string v0, "  mMSimLastPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1336
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastPhoneSignalIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1337
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1338
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastPhoneSignalIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1339
    const-string v0, "  mMSimLastDataDirectionIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1340
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataDirectionIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1341
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1342
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataDirectionIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1343
    const-string v0, "  mLastDataDirectionOverlayIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1344
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1345
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1346
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1347
    const-string v0, "  mLastWifiIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1348
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1349
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1350
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1351
    const-string v0, "  mMSimLastCombinedSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1352
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastCombinedSignalIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1353
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1354
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastCombinedSignalIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1355
    const-string v0, "  mMSimLastDataTypeIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1356
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataTypeIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1357
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1358
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataTypeIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1359
    const-string v0, "  mMSimLastCombinedLabel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1360
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1361
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1362
    return-void

    .line 1241
    :cond_1
    const-string v0, "DISCONNECTED"

    goto/16 :goto_0
.end method

.method isCdmaEri(I)Z
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    const/4 v2, 0x1

    .line 647
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->hasService(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataServiceState:[I

    aget v3, v3, p1

    if-nez v3, :cond_2

    .line 650
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 651
    .local v0, "iconIndex":I
    if-eq v0, v2, :cond_2

    .line 652
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 653
    .local v1, "iconMode":I
    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_2

    .line 659
    .end local v0    # "iconIndex":I
    .end local v1    # "iconMode":I
    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 284
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 285
    .local v6, "action":Ljava/lang/String;
    const-string v0, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateWifiState(Landroid/content/Intent;)V

    .line 289
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 317
    :cond_1
    :goto_0
    return-void

    .line 290
    :cond_2
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 291
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateSimState(Landroid/content/Intent;)V

    .line 292
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataIcon(I)V

    .line 293
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    goto :goto_0

    .line 294
    :cond_3
    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 295
    const-string v0, "subscription"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 296
    .local v5, "subscription":I
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received SPN update on sub :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string v0, "showSpn"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v0, "spn"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "showPlmn"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v0, "plmn"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;I)V

    .line 301
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    goto :goto_0

    .line 302
    .end local v5    # "subscription":I
    :cond_4
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 304
    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateConnectivity(Landroid/content/Intent;)V

    .line 305
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    goto :goto_0

    .line 306
    :cond_6
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 307
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    goto/16 :goto_0

    .line 308
    :cond_7
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 309
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateAirplaneMode()V

    .line 310
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    goto/16 :goto_0

    .line 311
    :cond_8
    const-string v0, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    :cond_9
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateWimaxState(Landroid/content/Intent;)V

    .line 315
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    goto/16 :goto_0
.end method

.method public refreshSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;I)V
    .locals 10
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;
    .param p2, "subscription"    # I

    .prologue
    const/4 v9, 0x1

    .line 243
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-nez v0, :cond_1

    :cond_0
    move v0, v9

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;->setWifiIndicators(ZIILjava/lang/String;)V

    .line 249
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[I

    aget v2, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileActivityIconId:[I

    aget v3, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aget v4, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    aget-object v5, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v6, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    aget v7, v0, p2

    move-object v0, p1

    move v8, p2

    invoke-interface/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;II)V

    .line 257
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_3

    .line 259
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileActivityIconId:[I

    aget v3, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aget v4, v0, p2

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v6, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    aget v7, v0, p2

    move-object v0, p1

    move v1, v9

    move v8, p2

    invoke-interface/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;II)V

    .line 279
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;->setIsAirplaneMode(ZI)V

    .line 280
    return-void

    .line 243
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 259
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    goto :goto_1

    .line 269
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[I

    aget v2, v0, p2

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileActivityIconId:[I

    aget v3, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aget v4, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    aget-object v5, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v6, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    aget v7, v0, p2

    move-object v0, p1

    move v8, p2

    invoke-interface/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aget v2, v0, p2

    goto :goto_3
.end method

.method protected refreshViews(I)V
    .locals 12

    .prologue
    const v10, 0x7f020074

    const v9, 0x7f090073

    const/16 v8, 0x8

    const/4 v4, 0x0

    .line 879
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    .line 881
    const-string v1, ""

    .line 882
    const-string v0, ""

    .line 883
    const-string v0, ""

    .line 885
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshViews subscription ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mMSimDataConnected ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aget-boolean v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshViews mMSimDataActivity ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataActivity:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-nez v0, :cond_5

    .line 889
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[I

    aput v4, v2, p1

    aput v4, v0, p1

    .line 890
    const-string v0, ""

    .line 940
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v2, :cond_a

    .line 941
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 942
    const v1, 0x7f090074

    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 944
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 966
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedActivityIconId:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    aput v3, v2, p1

    .line 968
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    aput v3, v2, p1

    .line 969
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    aput-object v3, v2, p1

    move-object v2, v1

    .line 979
    :goto_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    if-eqz v3, :cond_1

    .line 980
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v3, 0x7f09001c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 981
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherIconId:I

    aput v6, v3, p1

    .line 982
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v7, 0x7f090061

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, p1

    .line 986
    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    const/16 v6, 0x9

    if-ne v3, v6, :cond_c

    const/4 v3, 0x1

    .line 988
    :goto_3
    if-eqz v3, :cond_2

    .line 990
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 993
    :cond_2
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v6, v6, p1

    if-eqz v6, :cond_3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->hasService(I)Z

    move-result v6

    if-nez v6, :cond_f

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v6

    if-nez v6, :cond_f

    .line 999
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v7, 0x7f090062

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, p1

    .line 1001
    const v3, 0x7f020099

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    .line 1002
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[I

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v4, v7, p1

    aput v4, v6, p1

    aput v4, v3, p1

    .line 1004
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    aput v4, v3, p1

    .line 1007
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v3, :cond_d

    .line 1009
    const-string v0, ""

    .line 1023
    :goto_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v4, v3, p1

    .line 1024
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    aput v4, v3, p1

    .line 1026
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aget v5, v5, p1

    aput v5, v3, p1

    move-object v3, v2

    move-object v2, v0

    .line 1050
    :goto_5
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshViews connected={"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v0, :cond_14

    const-string v0, " wifi"

    :goto_6
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_15

    const-string v0, " data"

    :goto_7
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " } level="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    if-nez v0, :cond_16

    const-string v0, "??"

    :goto_8
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mMSimcombinedSignalIconId=0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    aget v6, v6, p1

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mMSimcombinedActivityIconId=0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedActivityIconId:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mAirplaneMode="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mMSimDataActivity="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataActivity:[I

    aget v6, v6, p1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mMSimPhoneSignalIconId=0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mMSimDataDirectionIconId=0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataDirectionIconId:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mMSimDataSignalIconId=0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mMSimDataTypeIconId=0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mNoMSimIconId=0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mWifiIconId=0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mBluetoothTetherIconId=0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherIconId:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastPhoneSignalIconId:[I

    aget v0, v0, p1

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[I

    aget v5, v5, p1

    if-ne v0, v5, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedActivityIconId:[I

    aget v5, v5, p1

    if-ne v0, v5, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    if-ne v0, v5, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataTypeIconId:[I

    aget v0, v0, p1

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aget v5, v5, p1

    if-ne v0, v5, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastSimIconId:[I

    aget v0, v0, p1

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    aget v5, v5, p1

    if-eq v0, v5, :cond_17

    .line 1085
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mSimSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;

    .line 1086
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;I)V

    goto :goto_9

    .line 900
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_6

    .line 901
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 914
    :goto_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_0

    .line 915
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aget v2, v2, p1

    aput v2, v1, p1

    .line 916
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataActivity:[I

    aget v1, v1, p1

    packed-switch v1, :pswitch_data_0

    .line 927
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileActivityIconId:[I

    aput v4, v1, p1

    .line 932
    :goto_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedActivityIconId:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileActivityIconId:[I

    aget v2, v2, p1

    aput v2, v1, p1

    .line 934
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aget v2, v2, p1

    aput v2, v1, p1

    .line 935
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v2, v2, p1

    aput-object v2, v1, p1

    move-object v1, v0

    goto/16 :goto_0

    .line 902
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    if-eqz v0, :cond_8

    .line 903
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 904
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_a

    .line 906
    :cond_7
    const-string v0, ""

    goto :goto_a

    .line 909
    :cond_8
    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 918
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileActivityIconId:[I

    const v2, 0x7f02009a

    aput v2, v1, p1

    goto :goto_b

    .line 921
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileActivityIconId:[I

    const v2, 0x7f02009d

    aput v2, v1, p1

    goto :goto_b

    .line 924
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileActivityIconId:[I

    const v2, 0x7f02009b

    aput v2, v1, p1

    goto :goto_b

    .line 946
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    .line 948
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "xxxxXXXXxxxxXXXX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 950
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_1

    .line 961
    :pswitch_3
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 952
    :pswitch_4
    const v2, 0x7f0200a1

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 955
    :pswitch_5
    const v2, 0x7f0200a3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 958
    :pswitch_6
    const v2, 0x7f0200a2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 971
    :cond_a
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-eqz v2, :cond_b

    .line 972
    const-string v2, ""

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto/16 :goto_2

    .line 974
    :cond_b
    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto/16 :goto_2

    :cond_c
    move v3, v4

    .line 986
    goto/16 :goto_3

    .line 1011
    :cond_d
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-eqz v1, :cond_e

    .line 1013
    const-string v1, ""

    .line 1019
    :goto_c
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    aput-object v5, v3, p1

    .line 1021
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aget v5, v5, p1

    aput v5, v3, p1

    goto/16 :goto_4

    .line 1015
    :cond_e
    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 1017
    goto :goto_c

    .line 1028
    :cond_f
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aget-boolean v6, v6, p1

    if-nez v6, :cond_2b

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v6, :cond_2b

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    if-nez v6, :cond_2b

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-nez v6, :cond_2b

    if-nez v3, :cond_2b

    .line 1032
    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1035
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aget v2, v2, p1

    :goto_d
    aput v2, v5, p1

    .line 1037
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v2, v2, p1

    :goto_e
    aput-object v2, v5, p1

    .line 1040
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v4, v2, p1

    .line 1041
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->isCdma(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1042
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->isCdmaEri(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1043
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v10, v2, p1

    move-object v2, v0

    goto/16 :goto_5

    .line 1035
    :cond_10
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    goto :goto_d

    .line 1037
    :cond_11
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_e

    .line 1045
    :cond_12
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mPhone:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v2, p1}, Landroid/telephony/MSimTelephonyManager;->isNetworkRoaming(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1046
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v10, v2, p1

    :cond_13
    move-object v2, v0

    goto/16 :goto_5

    .line 1050
    :cond_14
    const-string v0, ""

    goto/16 :goto_6

    :cond_15
    const-string v0, ""

    goto/16 :goto_7

    :cond_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 1090
    :cond_17
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eq v0, v5, :cond_18

    .line 1091
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    .line 1095
    :cond_18
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastPhoneSignalIconId:[I

    aget v0, v0, p1

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[I

    aget v5, v5, p1

    if-eq v0, v5, :cond_1a

    .line 1096
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastPhoneSignalIconId:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[I

    aget v5, v5, p1

    aput v5, v0, p1

    .line 1097
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v4

    .line 1098
    :goto_f
    if-ge v5, v6, :cond_1a

    .line 1099
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1100
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    if-nez v7, :cond_19

    .line 1101
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1098
    :goto_10
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_f

    .line 1103
    :cond_19
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1104
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1105
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 1111
    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataDirectionIconId:[I

    aget v0, v0, p1

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataDirectionIconId:[I

    aget v5, v5, p1

    if-eq v0, v5, :cond_1b

    .line 1112
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataDirectionIconId:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataDirectionIconId:[I

    aget v5, v5, p1

    aput v5, v0, p1

    .line 1113
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v4

    .line 1114
    :goto_11
    if-ge v5, v6, :cond_1b

    .line 1115
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1116
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataDirectionIconId:[I

    aget v7, v7, p1

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1117
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1114
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_11

    .line 1121
    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastSimIconId:[I

    aget v0, v0, p1

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    aget v5, v5, p1

    if-eq v0, v5, :cond_1c

    .line 1122
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastSimIconId:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    aget v5, v5, p1

    aput v5, v0, p1

    .line 1126
    :cond_1c
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    if-eq v0, v5, :cond_1e

    .line 1127
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    .line 1128
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v4

    .line 1129
    :goto_12
    if-ge v5, v6, :cond_1e

    .line 1130
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1131
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    if-nez v7, :cond_1d

    .line 1132
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1129
    :goto_13
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_12

    .line 1134
    :cond_1d
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1135
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1136
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 1142
    :cond_1e
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    if-eq v0, v5, :cond_20

    .line 1143
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    .line 1144
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v4

    .line 1145
    :goto_14
    if-ge v5, v6, :cond_20

    .line 1146
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1147
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    if-nez v7, :cond_1f

    .line 1148
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1145
    :goto_15
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_14

    .line 1150
    :cond_1f
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1151
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1152
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 1157
    :cond_20
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastCombinedSignalIconId:[I

    aget v0, v0, p1

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    aget v5, v5, p1

    if-eq v0, v5, :cond_21

    .line 1159
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastCombinedSignalIconId:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    aget v5, v5, p1

    aput v5, v0, p1

    .line 1160
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v4

    .line 1161
    :goto_16
    if-ge v5, v6, :cond_21

    .line 1162
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1163
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    aget v7, v7, p1

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1164
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1161
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_16

    .line 1169
    :cond_21
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataTypeIconId:[I

    aget v0, v0, p1

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aget v5, v5, p1

    if-eq v0, v5, :cond_23

    .line 1170
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataTypeIconId:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aget v5, v5, p1

    aput v5, v0, p1

    .line 1171
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v4

    .line 1172
    :goto_17
    if-ge v5, v6, :cond_23

    .line 1173
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1174
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aget v7, v7, p1

    if-nez v7, :cond_22

    .line 1175
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1172
    :goto_18
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_17

    .line 1177
    :cond_22
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1178
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aget v7, v7, p1

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1179
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_18

    .line 1185
    :cond_23
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedActivityIconId:[I

    aget v5, v5, p1

    if-eq v0, v5, :cond_25

    .line 1187
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changing data overlay icon id to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedActivityIconId:[I

    aget v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedActivityIconId:[I

    aget v0, v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    .line 1191
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v4

    .line 1192
    :goto_19
    if-ge v5, v6, :cond_25

    .line 1193
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1194
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedActivityIconId:[I

    aget v7, v7, p1

    if-nez v7, :cond_24

    .line 1195
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1192
    :goto_1a
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_19

    .line 1197
    :cond_24
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1198
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedActivityIconId:[I

    aget v7, v7, p1

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1199
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 1205
    :cond_25
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 1206
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    .line 1207
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v4

    .line 1208
    :goto_1b
    if-ge v5, v6, :cond_26

    .line 1209
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1210
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1208
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1b

    .line 1215
    :cond_26
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v4

    .line 1216
    :goto_1c
    if-ge v3, v5, :cond_28

    .line 1217
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1218
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1219
    const-string v6, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 1220
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1216
    :goto_1d
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1c

    .line 1222
    :cond_27
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1d

    .line 1227
    :cond_28
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v4

    .line 1228
    :goto_1e
    if-ge v1, v3, :cond_2a

    .line 1229
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1230
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1231
    const-string v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 1232
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1228
    :goto_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1e

    .line 1234
    :cond_29
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1f

    .line 1237
    :cond_2a
    return-void

    :cond_2b
    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_5

    .line 916
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 950
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected registerPhoneStateListener(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v1

    .line 224
    .local v1, "numPhones":I
    const-string v2, "phone_msim"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/MSimTelephonyManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mPhone:Landroid/telephony/MSimTelephonyManager;

    .line 225
    new-array v2, v1, [Landroid/telephony/PhoneStateListener;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 226
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 227
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v3

    aput-object v3, v2, v0

    .line 228
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mPhone:Landroid/telephony/MSimTelephonyManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v3, v3, v0

    const/16 v4, 0x1e1

    invoke-virtual {v2, v3, v4}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_0
    return-void
.end method

.method protected updateConnectivity(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 788
    const-string v0, "StatusBar.MSimNetworkController"

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

    .line 791
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 793
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 796
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    .line 797
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    if-eqz v0, :cond_1

    .line 798
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    .line 799
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 805
    :goto_1
    const-string v0, "inetCondition"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 808
    const/16 v4, 0x32

    if-le v0, v4, :cond_2

    .line 819
    :goto_2
    const-string v0, "StatusBar.MSimNetworkController"

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

    .line 824
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    packed-switch v0, :pswitch_data_0

    .line 862
    :goto_3
    :pswitch_0
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 863
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    .line 869
    :goto_4
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataNetType(I)V

    .line 870
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateWimaxIcons()V

    .line 871
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataIcon(I)V

    .line 872
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateTelephonySignalStrength(I)V

    .line 873
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateWifiIcons()V

    .line 874
    return-void

    :cond_0
    move v0, v2

    .line 796
    goto :goto_0

    .line 801
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    .line 802
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move v1, v2

    .line 808
    goto :goto_2

    .line 827
    :pswitch_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    if-eq v0, v1, :cond_3

    .line 828
    const-string v0, "StatusBar.MSimNetworkController"

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

    .line 831
    :cond_3
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    goto :goto_3

    .line 835
    :pswitch_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetCondition:I

    if-eq v0, v1, :cond_4

    .line 836
    const-string v0, "StatusBar.MSimNetworkController"

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

    .line 839
    :cond_4
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetCondition:I

    goto :goto_3

    .line 843
    :pswitch_3
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetCondition:I

    if-eq v0, v1, :cond_5

    .line 844
    const-string v0, "StatusBar.MSimNetworkController"

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

    .line 847
    :cond_5
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetCondition:I

    goto/16 :goto_3

    .line 851
    :pswitch_4
    const-string v0, "StatusBar.MSimNetworkController"

    const-string v1, "there is no connection, reset iNetCondition"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileInetCondition:I

    .line 854
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiInetCondition:I

    .line 855
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxInetCondition:I

    goto/16 :goto_3

    .line 865
    :cond_6
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    goto/16 :goto_4

    .line 824
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

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;I)V
    .locals 4
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;
    .param p5, "subscription"    # I

    .prologue
    .line 764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 765
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 766
    .local v0, "something":Z
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 767
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    const/4 v0, 0x1

    .line 770
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 771
    if-eqz v0, :cond_1

    .line 772
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    const/4 v0, 0x1

    .line 777
    :cond_2
    if-eqz v0, :cond_3

    .line 778
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimNetworkName:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p5

    .line 782
    :goto_0
    return-void

    .line 780
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimNetworkName:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    aput-object v3, v2, p5

    goto :goto_0
.end method

.method protected updateSimState(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 411
    const-string v4, "ss"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 413
    .local v2, "stateExtra":Ljava/lang/String;
    const-string v4, "subscription"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 414
    .local v3, "sub":I
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimState for subscription :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-string v4, "ABSENT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 416
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    .line 439
    .local v1, "simState":Lcom/android/internal/telephony/IccCard$State;
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;

    aput-object v1, v4, v3

    .line 440
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimState simState ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateSimIcon(I)V

    .line 442
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataIcon(I)V

    .line 443
    return-void

    .line 418
    .end local v1    # "simState":Lcom/android/internal/telephony/IccCard$State;
    :cond_0
    const-string v4, "READY"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "IMSI"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "LOADED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 423
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    .restart local v1    # "simState":Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 425
    .end local v1    # "simState":Lcom/android/internal/telephony/IccCard$State;
    :cond_2
    const-string v4, "LOCKED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 426
    const-string v4, "reason"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "lockedReason":Ljava/lang/String;
    const-string v4, "PIN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 428
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v1    # "simState":Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 430
    .end local v1    # "simState":Lcom/android/internal/telephony/IccCard$State;
    :cond_3
    const-string v4, "PUK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 431
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v1    # "simState":Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 434
    .end local v1    # "simState":Lcom/android/internal/telephony/IccCard$State;
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    .restart local v1    # "simState":Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0

    .line 437
    .end local v0    # "lockedReason":Ljava/lang/String;
    .end local v1    # "simState":Lcom/android/internal/telephony/IccCard$State;
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    .restart local v1    # "simState":Lcom/android/internal/telephony/IccCard$State;
    goto :goto_0
.end method
