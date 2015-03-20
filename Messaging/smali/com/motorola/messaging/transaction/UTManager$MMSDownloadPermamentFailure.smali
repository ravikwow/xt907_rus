.class Lcom/motorola/messaging/transaction/UTManager$MMSDownloadPermamentFailure;
.super Lcom/motorola/messaging/transaction/UTManager;
.source "UTManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/transaction/UTManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MMSDownloadPermamentFailure"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/UTManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/transaction/UTManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/transaction/UTManager$1;

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/UTManager$MMSDownloadPermamentFailure;-><init>()V

    return-void
.end method


# virtual methods
.method public onRetrieveStatus(I)I
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 241
    const/16 v0, 0xe1

    return v0
.end method
