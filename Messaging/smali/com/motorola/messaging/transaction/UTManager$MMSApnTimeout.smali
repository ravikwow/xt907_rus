.class Lcom/motorola/messaging/transaction/UTManager$MMSApnTimeout;
.super Lcom/motorola/messaging/transaction/UTManager;
.source "UTManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/transaction/UTManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MMSApnTimeout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/transaction/UTManager$MMSApnTimeout$UTNetworkManager;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/UTManager;-><init>()V

    .line 266
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/transaction/UTManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/transaction/UTManager$1;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/UTManager$MMSApnTimeout;-><init>()V

    return-void
.end method


# virtual methods
.method public getNetworkManager()Lcom/motorola/messaging/transaction/NetworkManager;
    .locals 2

    .prologue
    .line 277
    new-instance v0, Lcom/motorola/messaging/transaction/UTManager$MMSApnTimeout$UTNetworkManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/messaging/transaction/UTManager$MMSApnTimeout$UTNetworkManager;-><init>(Lcom/motorola/messaging/transaction/UTManager$1;)V

    return-object v0
.end method
