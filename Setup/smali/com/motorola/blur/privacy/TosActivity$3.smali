.class Lcom/motorola/blur/privacy/TosActivity$3;
.super Landroid/os/AsyncTask;
.source "TosActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/privacy/TosActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/privacy/TosActivity;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/motorola/blur/privacy/TosActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    iput-object p2, p0, Lcom/motorola/blur/privacy/TosActivity$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 230
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/blur/privacy/TosActivity$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 18
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 233
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    const/4 v3, 0x1

    # setter for: Lcom/motorola/blur/privacy/TosActivity;->mFinishActivity:Z
    invoke-static {v1, v3}, Lcom/motorola/blur/privacy/TosActivity;->access$102(Lcom/motorola/blur/privacy/TosActivity;Z)Z

    .line 234
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/TosActivity$3;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 320
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    # getter for: Lcom/motorola/blur/privacy/TosActivity;->mFinishActivity:Z
    invoke-static {v1}, Lcom/motorola/blur/privacy/TosActivity;->access$100(Lcom/motorola/blur/privacy/TosActivity;)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 321
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    # getter for: Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;
    invoke-static {v1}, Lcom/motorola/blur/privacy/TosActivity;->access$900(Lcom/motorola/blur/privacy/TosActivity;)Lcom/motorola/blur/fsm/SetupFSM;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    invoke-virtual {v1, v3}, Lcom/motorola/blur/fsm/SetupFSM;->finish(Landroid/app/Activity;)V

    .line 324
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 236
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    # getter for: Lcom/motorola/blur/privacy/TosActivity;->mFromExternalApp:Z
    invoke-static {v1}, Lcom/motorola/blur/privacy/TosActivity;->access$200(Lcom/motorola/blur/privacy/TosActivity;)Z

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    # getter for: Lcom/motorola/blur/privacy/TosActivity;->mSystemUpdateCase:Z
    invoke-static {v1}, Lcom/motorola/blur/privacy/TosActivity;->access$300(Lcom/motorola/blur/privacy/TosActivity;)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 237
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setResult(I)V

    .line 238
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    # getter for: Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;
    invoke-static {v1}, Lcom/motorola/blur/privacy/TosActivity;->access$400(Lcom/motorola/blur/privacy/TosActivity;)Lcom/motorola/blur/fsm/SetupFSM;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    invoke-virtual {v1, v3}, Lcom/motorola/blur/fsm/SetupFSM;->finish(Landroid/app/Activity;)V

    goto :goto_0

    .line 240
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    # getter for: Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;
    invoke-static {v1}, Lcom/motorola/blur/privacy/TosActivity;->access$500(Lcom/motorola/blur/privacy/TosActivity;)Lcom/motorola/blur/fsm/SetupFSM;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    const/16 v4, 0x9

    invoke-virtual {v1, v3, v4}, Lcom/motorola/blur/fsm/SetupFSM;->finishWithResult(Landroid/app/Activity;I)V

    goto :goto_0

    .line 246
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 247
    .local v10, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Lcom/motorola/blur/setup/SetupUtility;->isTabletFlow()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    invoke-static {v1}, Lcom/motorola/blur/setup/SetupUtility;->isVerizonFlow(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 248
    new-instance v9, Landroid/content/Intent;

    const-string v1, "com.motorola.blur.action.CANCAL_NOTIFICATION"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v9, "cancalNotification":Landroid/content/Intent;
    const-string v1, "NOTIFICATION_ID"

    const/16 v3, 0x66

    invoke-virtual {v9, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    invoke-virtual {v1, v9}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 252
    .local v15, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    const-class v3, Lcom/motorola/blur/privacy/PrivacyReminderReceiver;

    const/4 v4, 0x0

    invoke-static {v15, v1, v3, v4}, Lcom/motorola/blur/setup/SetupUtility;->disableComponent(Landroid/content/pm/PackageManager;Landroid/content/Context;Ljava/lang/Class;Z)Z

    .line 253
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    # getter for: Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;
    invoke-static {v1}, Lcom/motorola/blur/privacy/TosActivity;->access$600(Lcom/motorola/blur/privacy/TosActivity;)Lcom/motorola/blur/fsm/SetupFSM;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/motorola/blur/fsm/SetupFSM;->setTosAccepted(Landroid/content/Context;Z)V

    .line 254
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setResult(I)V

    .line 255
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    invoke-virtual {v1}, Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->finish()V

    .line 258
    .end local v9    # "cancalNotification":Landroid/content/Intent;
    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    # getter for: Lcom/motorola/blur/privacy/TosActivity;->mGatheringCheck:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/motorola/blur/privacy/TosActivity;->access$700(Lcom/motorola/blur/privacy/TosActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    # getter for: Lcom/motorola/blur/privacy/TosActivity;->mGatheringCheck:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/motorola/blur/privacy/TosActivity;->access$700(Lcom/motorola/blur/privacy/TosActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v11

    .line 259
    .local v11, "gather":Z
    :goto_1
    const/4 v1, 0x1

    if-ne v11, v1, :cond_5

    const/4 v12, 0x1

    .line 261
    .local v12, "gatherValue":I
    :goto_2
    const-string v1, "com.motorola.analytics.ada_accepted"

    invoke-static {v10, v1, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 262
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.motorola.analytics.ada_accepted"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.motorola.analytics.ada_accepted"

    invoke-virtual {v3, v4, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    # getter for: Lcom/motorola/blur/fsm/SetupActivityGroupFSM;->mFSM:Lcom/motorola/blur/fsm/SetupFSM;
    invoke-static {v1}, Lcom/motorola/blur/privacy/TosActivity;->access$800(Lcom/motorola/blur/privacy/TosActivity;)Lcom/motorola/blur/fsm/SetupFSM;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/motorola/blur/fsm/SetupFSM;->setTosAccepted(Landroid/content/Context;Z)V

    .line 273
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    # getter for: Lcom/motorola/blur/privacy/TosActivity;->mFromExternalApp:Z
    invoke-static {v1}, Lcom/motorola/blur/privacy/TosActivity;->access$200(Lcom/motorola/blur/privacy/TosActivity;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 274
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setResult(I)V

    goto/16 :goto_0

    .line 258
    .end local v11    # "gather":Z
    .end local v12    # "gatherValue":I
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 259
    .restart local v11    # "gather":Z
    :cond_5
    const/4 v12, 0x0

    goto :goto_2

    .line 275
    .restart local v12    # "gatherValue":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    # getter for: Lcom/motorola/blur/privacy/TosActivity;->mSystemUpdateCase:Z
    invoke-static {v1}, Lcom/motorola/blur/privacy/TosActivity;->access$300(Lcom/motorola/blur/privacy/TosActivity;)Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_7

    .line 276
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 277
    .local v13, "i":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v3, "com.android.settings.deviceinfo.CheckUpdate"

    invoke-virtual {v13, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    invoke-virtual {v1, v13}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setResult(I)V

    goto/16 :goto_0

    .line 281
    .end local v13    # "i":Landroid/content/Intent;
    :cond_7
    const/16 v17, -0x1

    .line 282
    .local v17, "result":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 283
    .local v14, "intent":Landroid/content/Intent;
    if-eqz v14, :cond_9

    .line 284
    const-string v1, "AccountType"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "accountType":Ljava/lang/String;
    const-string v1, "provider"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 286
    .local v16, "provider":Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 287
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    const/4 v3, 0x0

    # setter for: Lcom/motorola/blur/privacy/TosActivity;->mFinishActivity:Z
    invoke-static {v1, v3}, Lcom/motorola/blur/privacy/TosActivity;->access$102(Lcom/motorola/blur/privacy/TosActivity;Z)Z

    .line 288
    const/16 v17, -0x1

    .line 289
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 290
    .local v5, "accountBundle":Landroid/os/Bundle;
    const-string v1, "addSingleAccount"

    const-string v3, "addSingleAccount"

    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 291
    if-eqz v16, :cond_8

    .line 292
    const-string v1, "provider"

    move-object/from16 v0, v16

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/motorola/blur/privacy/TosActivity$3$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v2}, Lcom/motorola/blur/privacy/TosActivity$3$1;-><init>(Lcom/motorola/blur/privacy/TosActivity$3;Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 317
    .end local v2    # "accountType":Ljava/lang/String;
    .end local v5    # "accountBundle":Landroid/os/Bundle;
    .end local v16    # "provider":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/TosActivity$3;->this$0:Lcom/motorola/blur/privacy/TosActivity;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setResult(I)V

    goto/16 :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0000
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
