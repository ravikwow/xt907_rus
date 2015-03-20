.class Lcom/motorola/blur/setup/CreateBlurAccountCreator$3;
.super Landroid/os/Handler;
.source "CreateBlurAccountCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/CreateBlurAccountCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/CreateBlurAccountCreator;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/CreateBlurAccountCreator;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 339
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 405
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "SilentRegActionTemplyFailed"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    # getter for: Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->access$300(Lcom/motorola/blur/setup/CreateBlurAccountCreator;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.motorola.blur.setupprovider.Permissions.ACCESS_ACCOUNTS"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 408
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    const v3, 0x7f080065

    # invokes: Lcom/motorola/blur/setup/CreateBlurAccountCreator;->endProgressUI(I)V
    invoke-static {v2, v3}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->access$200(Lcom/motorola/blur/setup/CreateBlurAccountCreator;I)V

    .line 411
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 341
    :pswitch_2
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    # getter for: Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mReceivedDB:Z
    invoke-static {v2}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->access$000(Lcom/motorola/blur/setup/CreateBlurAccountCreator;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 342
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    # setter for: Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mReceivedDB:Z
    invoke-static {v2, v4}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->access$002(Lcom/motorola/blur/setup/CreateBlurAccountCreator;Z)Z

    .line 343
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    invoke-virtual {v2}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->nextProgressPoint()V

    .line 344
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    invoke-virtual {v2}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->updatePasswords()V

    .line 346
    :cond_1
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    invoke-virtual {v2}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->finishSetup()V

    goto :goto_0

    .line 355
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/blur/service/blur/WSResponse;

    .line 356
    .local v1, "resp":Lcom/motorola/blur/service/blur/WSResponse;
    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/WSResponse;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v2

    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-ne v2, v3, :cond_2

    .line 357
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    invoke-virtual {v2}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->nextProgressPoint()V

    .line 361
    const-string v2, "BAC"

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "request force sync now !!"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 362
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    # invokes: Lcom/motorola/blur/setup/CreateBlurAccountCreator;->requestSettings()V
    invoke-static {v2}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->access$100(Lcom/motorola/blur/setup/CreateBlurAccountCreator;)V

    goto :goto_0

    .line 364
    :cond_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;

    if-eqz v2, :cond_3

    .line 365
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/blur/service/blur/devicesetup/NewSessionWS$Response;

    .line 370
    :goto_1
    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/WSResponse;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v2

    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InvalidCredsError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-ne v2, v3, :cond_4

    .line 371
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    const v3, 0x7f080061

    # invokes: Lcom/motorola/blur/setup/CreateBlurAccountCreator;->endProgressUI(I)V
    invoke-static {v2, v3}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->access$200(Lcom/motorola/blur/setup/CreateBlurAccountCreator;I)V

    goto :goto_0

    .line 367
    :cond_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/blur/service/blur/devicesetup/NewAccountWS$Response;

    goto :goto_1

    .line 374
    :cond_4
    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/WSResponse;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v2

    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->AlreadyInitializedError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-ne v2, v3, :cond_5

    .line 375
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    # invokes: Lcom/motorola/blur/setup/CreateBlurAccountCreator;->requestSettings()V
    invoke-static {v2}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->access$100(Lcom/motorola/blur/setup/CreateBlurAccountCreator;)V

    goto :goto_0

    .line 378
    :cond_5
    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/WSResponse;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v2

    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->RadioDownError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-ne v2, v3, :cond_6

    .line 379
    new-instance v0, Landroid/content/Intent;

    const-string v2, "SilentRegActionRadioDown"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_2
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    # getter for: Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->access$300(Lcom/motorola/blur/setup/CreateBlurAccountCreator;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.motorola.blur.setupprovider.Permissions.ACCESS_ACCOUNTS"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 386
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    iget-object v3, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    # getter for: Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->access$300(Lcom/motorola/blur/setup/CreateBlurAccountCreator;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/motorola/blur/service/blur/WSResponse;->getError()Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->translate(Landroid/content/Context;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)I

    move-result v3

    # invokes: Lcom/motorola/blur/setup/CreateBlurAccountCreator;->endProgressUI(I)V
    invoke-static {v2, v3}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->access$200(Lcom/motorola/blur/setup/CreateBlurAccountCreator;I)V

    goto/16 :goto_0

    .line 382
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v2, "SilentRegActionTemplyFailed"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_2

    .line 394
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "resp":Lcom/motorola/blur/service/blur/WSResponse;
    :pswitch_4
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    # getter for: Lcom/motorola/blur/setup/CreateBlurAccountCreator;->mRequestInFlight:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->access$400(Lcom/motorola/blur/setup/CreateBlurAccountCreator;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 395
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    const v3, 0x7f08003f

    # invokes: Lcom/motorola/blur/setup/CreateBlurAccountCreator;->endProgressUI(I)V
    invoke-static {v2, v3}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->access$200(Lcom/motorola/blur/setup/CreateBlurAccountCreator;I)V

    goto/16 :goto_0

    .line 400
    :pswitch_5
    iget-object v2, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$3;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    # invokes: Lcom/motorola/blur/setup/CreateBlurAccountCreator;->showRetryDialog()V
    invoke-static {v2}, Lcom/motorola/blur/setup/CreateBlurAccountCreator;->access$500(Lcom/motorola/blur/setup/CreateBlurAccountCreator;)V

    goto/16 :goto_0

    .line 339
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method
