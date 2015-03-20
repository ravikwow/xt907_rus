.class Lcom/motorola/messaging/transaction/UTManager$SmsPowerUpResend$UTMOSmsManager;
.super Lcom/motorola/messaging/transaction/MOSmsManager;
.source "UTManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/transaction/UTManager$SmsPowerUpResend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UTMOSmsManager"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1401
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/MOSmsManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/transaction/UTManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/transaction/UTManager$1;

    .prologue
    .line 1401
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/UTManager$SmsPowerUpResend$UTMOSmsManager;-><init>()V

    return-void
.end method


# virtual methods
.method public moveMessageToFolder(Landroid/net/Uri;III)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "folder"    # I
    .param p3, "resultCode"    # I
    .param p4, "errorCode"    # I

    .prologue
    .line 1405
    return-void
.end method
