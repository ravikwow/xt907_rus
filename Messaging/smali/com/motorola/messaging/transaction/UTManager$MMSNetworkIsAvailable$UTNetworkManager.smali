.class Lcom/motorola/messaging/transaction/UTManager$MMSNetworkIsAvailable$UTNetworkManager;
.super Lcom/motorola/messaging/transaction/NetworkManager;
.source "UTManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/transaction/UTManager$MMSNetworkIsAvailable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UTNetworkManager"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/NetworkManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/transaction/UTManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/transaction/UTManager$1;

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/UTManager$MMSNetworkIsAvailable$UTNetworkManager;-><init>()V

    return-void
.end method


# virtual methods
.method public isMmsNetworkAvailable()Z
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x1

    return v0
.end method
