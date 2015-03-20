.class Lcom/motorola/messaging/transaction/UTManager$MMSApnTimeout$UTNetworkManager;
.super Lcom/motorola/messaging/transaction/NetworkManager;
.source "UTManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/transaction/UTManager$MMSApnTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UTNetworkManager"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/NetworkManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/transaction/UTManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/transaction/UTManager$1;

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/UTManager$MMSApnTimeout$UTNetworkManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnectedMmsNetwork()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;)I
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 268
    sget v0, Lcom/motorola/messaging/frameworkadapter/telephony/Phone;->APN_REQUEST_STARTED:I

    return v0
.end method
