.class Lcom/motorola/messaging/transaction/UTManager$MMSTemporarySyncAPNSwitchFailure$UTNetworkManager;
.super Lcom/motorola/messaging/transaction/NetworkManager;
.source "UTManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/transaction/UTManager$MMSTemporarySyncAPNSwitchFailure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UTNetworkManager"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 523
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/NetworkManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/transaction/UTManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/transaction/UTManager$1;

    .prologue
    .line 523
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/UTManager$MMSTemporarySyncAPNSwitchFailure$UTNetworkManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnectedMmsNetwork()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 536
    sget-boolean v0, Lcom/motorola/messaging/transaction/UTManager$MMSTemporarySyncAPNSwitchFailure;->beginOk:Z

    if-nez v0, :cond_0

    .line 537
    const/4 v0, 0x0

    .line 540
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/motorola/messaging/transaction/NetworkManager;->getConnectedMmsNetwork()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;)I
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 525
    sget v0, Lcom/motorola/messaging/transaction/UTManager$MMSTemporarySyncAPNSwitchFailure;->beginNum:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/motorola/messaging/transaction/UTManager$MMSTemporarySyncAPNSwitchFailure;->beginNum:I

    .line 526
    sget v0, Lcom/motorola/messaging/transaction/UTManager$MMSTemporarySyncAPNSwitchFailure;->beginNum:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 527
    sget v0, Lcom/motorola/messaging/frameworkadapter/telephony/Phone;->APN_REQUEST_FAILED:I

    .line 531
    :goto_0
    return v0

    .line 530
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/motorola/messaging/transaction/UTManager$MMSTemporarySyncAPNSwitchFailure;->beginOk:Z

    .line 531
    invoke-super {p0, p1, p2}, Lcom/motorola/messaging/transaction/NetworkManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
