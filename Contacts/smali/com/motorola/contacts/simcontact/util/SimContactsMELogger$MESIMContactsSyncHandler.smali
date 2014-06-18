.class Lcom/motorola/contacts/simcontact/util/SimContactsMELogger$MESIMContactsSyncHandler;
.super Landroid/os/Handler;
.source "SimContactsMELogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MESIMContactsSyncHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;


# direct methods
.method constructor <init>(Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger$MESIMContactsSyncHandler;->this$0:Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;

    .line 54
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 55
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 59
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 67
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 70
    :goto_0
    return-void

    .line 62
    :pswitch_0
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/data/event/api/Event;

    iget-object v1, p0, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger$MESIMContactsSyncHandler;->this$0:Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;

    # getter for: Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;->access$000(Lcom/motorola/contacts/simcontact/util/SimContactsMELogger;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/data/event/api/Event;->publish(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
