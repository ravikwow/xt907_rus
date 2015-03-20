.class Lcom/motorola/messaging/transaction/UTManager$MMSTemporarySyncAPNSwitchFailure;
.super Lcom/motorola/messaging/transaction/UTManager;
.source "UTManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/transaction/UTManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MMSTemporarySyncAPNSwitchFailure"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/transaction/UTManager$MMSTemporarySyncAPNSwitchFailure$UTNetworkManager;
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

    .line 519
    sput v0, Lcom/motorola/messaging/transaction/UTManager$MMSTemporarySyncAPNSwitchFailure;->beginNum:I

    .line 520
    sput-boolean v0, Lcom/motorola/messaging/transaction/UTManager$MMSTemporarySyncAPNSwitchFailure;->beginOk:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 518
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/UTManager;-><init>()V

    .line 523
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/transaction/UTManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/transaction/UTManager$1;

    .prologue
    .line 518
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/UTManager$MMSTemporarySyncAPNSwitchFailure;-><init>()V

    return-void
.end method


# virtual methods
.method public getNetworkManager()Lcom/motorola/messaging/transaction/NetworkManager;
    .locals 2

    .prologue
    .line 546
    new-instance v0, Lcom/motorola/messaging/transaction/UTManager$MMSTemporarySyncAPNSwitchFailure$UTNetworkManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/messaging/transaction/UTManager$MMSTemporarySyncAPNSwitchFailure$UTNetworkManager;-><init>(Lcom/motorola/messaging/transaction/UTManager$1;)V

    return-object v0
.end method
