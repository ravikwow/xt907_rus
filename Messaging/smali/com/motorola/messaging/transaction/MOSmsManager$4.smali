.class final Lcom/motorola/messaging/transaction/MOSmsManager$4;
.super Ljava/lang/Object;
.source "MOSmsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/transaction/MOSmsManager;->treatPowerUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 927
    # getter for: Lcom/motorola/messaging/transaction/MOSmsManager;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/transaction/MOSmsManager;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    const-string v0, "MOSmsManager"

    const-string v1, "MSG-THREAD START - treatPowerUp"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    :cond_0
    # invokes: Lcom/motorola/messaging/transaction/MOSmsManager;->cleanOutgoingData()V
    invoke-static {}, Lcom/motorola/messaging/transaction/MOSmsManager;->access$400()V

    .line 932
    const-wide/32 v0, 0xafc8

    invoke-static {v0, v1}, Lcom/motorola/messaging/transaction/MOSmsManager;->sendFirstQueuedMessage(J)V

    .line 933
    # getter for: Lcom/motorola/messaging/transaction/MOSmsManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/motorola/messaging/transaction/MOSmsManager;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/messaging/util/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;)V

    .line 935
    # getter for: Lcom/motorola/messaging/transaction/MOSmsManager;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/transaction/MOSmsManager;->access$300()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 936
    const-string v0, "MOSmsManager"

    const-string v1, "MSG-THREAD END - treatPowerUp"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    :cond_1
    return-void
.end method
