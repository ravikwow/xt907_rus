.class Lcom/motorola/contacts/util/MELogger$MESyncHandler;
.super Landroid/os/Handler;
.source "MELogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/contacts/util/MELogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MESyncHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/contacts/util/MELogger;


# direct methods
.method constructor <init>(Lcom/motorola/contacts/util/MELogger;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/motorola/contacts/util/MELogger$MESyncHandler;->this$0:Lcom/motorola/contacts/util/MELogger;

    .line 102
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 103
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 115
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 118
    :goto_0
    return-void

    .line 110
    :pswitch_0
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/android/provider/CheckinEvent;

    iget-object v1, p0, Lcom/motorola/contacts/util/MELogger$MESyncHandler;->this$0:Lcom/motorola/contacts/util/MELogger;

    # getter for: Lcom/motorola/contacts/util/MELogger;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/motorola/contacts/util/MELogger;->access$000(Lcom/motorola/contacts/util/MELogger;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->publish(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
