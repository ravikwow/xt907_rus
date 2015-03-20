.class Lcom/motorola/contacts/util/MEContacts$MEContactsSyncHandler;
.super Landroid/os/Handler;
.source "MEContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/contacts/util/MEContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MEContactsSyncHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/contacts/util/MEContacts;


# direct methods
.method constructor <init>(Lcom/motorola/contacts/util/MEContacts;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/motorola/contacts/util/MEContacts$MEContactsSyncHandler;->this$0:Lcom/motorola/contacts/util/MEContacts;

    .line 79
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 80
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 91
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 94
    :goto_0
    return-void

    .line 86
    :pswitch_0
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/data/event/api/Event;

    iget-object v1, p0, Lcom/motorola/contacts/util/MEContacts$MEContactsSyncHandler;->this$0:Lcom/motorola/contacts/util/MEContacts;

    # getter for: Lcom/motorola/contacts/util/MEContacts;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/motorola/contacts/util/MEContacts;->access$000(Lcom/motorola/contacts/util/MEContacts;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/data/event/api/Event;->publish(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
