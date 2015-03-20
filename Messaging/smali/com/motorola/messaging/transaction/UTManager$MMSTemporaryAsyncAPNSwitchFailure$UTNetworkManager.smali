.class Lcom/motorola/messaging/transaction/UTManager$MMSTemporaryAsyncAPNSwitchFailure$UTNetworkManager;
.super Lcom/motorola/messaging/transaction/NetworkManager;
.source "UTManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/transaction/UTManager$MMSTemporaryAsyncAPNSwitchFailure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UTNetworkManager"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/NetworkManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/transaction/UTManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/transaction/UTManager$1;

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/UTManager$MMSTemporaryAsyncAPNSwitchFailure$UTNetworkManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnectedMmsNetwork()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 495
    sget-boolean v0, Lcom/motorola/messaging/transaction/UTManager$MMSTemporaryAsyncAPNSwitchFailure;->beginOk:Z

    if-nez v0, :cond_0

    .line 496
    const/4 v0, 0x0

    .line 499
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
    .line 484
    sget v0, Lcom/motorola/messaging/transaction/UTManager$MMSTemporaryAsyncAPNSwitchFailure;->beginNum:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/motorola/messaging/transaction/UTManager$MMSTemporaryAsyncAPNSwitchFailure;->beginNum:I

    .line 485
    sget v0, Lcom/motorola/messaging/transaction/UTManager$MMSTemporaryAsyncAPNSwitchFailure;->beginNum:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 486
    sget v0, Lcom/motorola/messaging/frameworkadapter/telephony/Phone;->APN_REQUEST_STARTED:I

    .line 490
    :goto_0
    return v0

    .line 489
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/motorola/messaging/transaction/UTManager$MMSTemporaryAsyncAPNSwitchFailure;->beginOk:Z

    .line 490
    invoke-super {p0, p1, p2}, Lcom/motorola/messaging/transaction/NetworkManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
