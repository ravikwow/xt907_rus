.class Lcom/motorola/messaging/transaction/UTManager$MMSTemporaryAsyncAPNSwitchFailure;
.super Lcom/motorola/messaging/transaction/UTManager;
.source "UTManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/transaction/UTManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MMSTemporaryAsyncAPNSwitchFailure"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/transaction/UTManager$MMSTemporaryAsyncAPNSwitchFailure$UTNetworkManager;
    }
.end annotation


# static fields
.field static beginNum:I

.field static beginOk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 478
    sput v0, Lcom/motorola/messaging/transaction/UTManager$MMSTemporaryAsyncAPNSwitchFailure;->beginNum:I

    .line 479
    sput-boolean v0, Lcom/motorola/messaging/transaction/UTManager$MMSTemporaryAsyncAPNSwitchFailure;->beginOk:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/UTManager;-><init>()V

    .line 482
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/transaction/UTManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/transaction/UTManager$1;

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/UTManager$MMSTemporaryAsyncAPNSwitchFailure;-><init>()V

    return-void
.end method


# virtual methods
.method public getNetworkManager()Lcom/motorola/messaging/transaction/NetworkManager;
    .locals 2

    .prologue
    .line 505
    new-instance v0, Lcom/motorola/messaging/transaction/UTManager$MMSTemporaryAsyncAPNSwitchFailure$UTNetworkManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/messaging/transaction/UTManager$MMSTemporaryAsyncAPNSwitchFailure$UTNetworkManager;-><init>(Lcom/motorola/messaging/transaction/UTManager$1;)V

    return-object v0
.end method
