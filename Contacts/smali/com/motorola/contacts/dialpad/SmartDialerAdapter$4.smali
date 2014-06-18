.class Lcom/motorola/contacts/dialpad/SmartDialerAdapter$4;
.super Landroid/os/Handler;
.source "SmartDialerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/contacts/dialpad/SmartDialerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;


# direct methods
.method constructor <init>(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)V
    .locals 0

    .prologue
    .line 988
    iput-object p1, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$4;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v5, 0x3ea

    const/16 v1, 0x3e9

    const/4 v6, 0x0

    .line 991
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1025
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1028
    :cond_0
    :goto_0
    return-void

    .line 994
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$4;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->activityGone:Z
    invoke-static {v0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$600(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$4;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    invoke-virtual {v0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->notifyDataSetChanged()V

    .line 996
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$4;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    invoke-virtual {v0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->updateSingleItemAndTitle()V

    goto :goto_0

    .line 1001
    :pswitch_1
    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->DBG:Z
    invoke-static {}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$4;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    const-string v3, "start real query"

    # invokes: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V
    invoke-static {v0, v3}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$300(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)V

    .line 1002
    :cond_1
    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->DBG:Z
    invoke-static {}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$200()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$4;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    const-string v3, "start START_DELAYED_QUERY"

    # invokes: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V
    invoke-static {v0, v3}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$300(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)V

    .line 1003
    :cond_2
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$4;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # invokes: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->getInputDigits()Ljava/lang/String;
    invoke-static {v0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$1400(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Ljava/lang/String;

    move-result-object v2

    .line 1005
    .local v2, "digits":Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$4;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mAsyncQueryHandler:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;
    invoke-static {v0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$1500(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$4;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mAsyncQueryHandler:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;
    invoke-static {v0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$1500(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    move-result-object v0

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->cancelOperation(I)V

    .line 1007
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$4;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mAsyncQueryHandler:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;
    invoke-static {v0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$1500(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->cancelOperation(I)V

    .line 1008
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$4;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mAsyncQueryHandler:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;
    invoke-static {v0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$1500(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->cancelOperation(I)V

    .line 1009
    invoke-static {v2}, Lcom/motorola/contacts/dialpad/SmartDialerUtil;->noAlphaChar(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1010
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$4;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mAsyncQueryHandler:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;
    invoke-static {v0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$1500(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    move-result-object v0

    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->SMARTDIALER_FUZZY_CONTENT_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$1600()Landroid/net/Uri;

    move-result-object v3

    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->PHONES_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$1700()[Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$4;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    # setter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mContactStartTime:J
    invoke-static {v0, v3, v4}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$802(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;J)J

    goto :goto_0

    .line 1015
    :cond_3
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$4;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mAsyncQueryHandler:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;
    invoke-static {v0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$1500(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    move-result-object v0

    sget-object v1, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->SMARTDIALER_EXACT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    # getter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->PEOPLE_PHONE_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$1800()[Ljava/lang/String;

    move-result-object v4

    move v1, v5

    move-object v5, v6

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$4;->this$0:Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    # setter for: Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mContactStartTime:J
    invoke-static {v0, v3, v4}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->access$802(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;J)J

    goto/16 :goto_0

    .line 991
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
