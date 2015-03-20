.class Lcom/motorola/blur/setup/CreateBlurAccountCreator$2;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/motorola/blur/setup/CreateBlurAccountCreator;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/motorola/blur/setup/CreateBlurAccountCreator$2;->this$0:Lcom/motorola/blur/setup/CreateBlurAccountCreator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 273
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "action":Ljava/lang/String;
    const-string v3, "BAC"

    new-array v4, v7, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BAC BroadcastReceiver, action = !!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 275
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/motorola/blur/setup/CreateBlurAccountService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 276
    .local v2, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    invoke-virtual {v2, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 278
    const-string v3, "com.motorola.blur.setup.intent.extra.EXTRA_BOOLEAN_IS_BLUR_ACCOUNT_CREATOR"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 279
    const-string v3, "com.motorola.blur.setup.intent.extra.EXTRA_STRING_BLUR_ACCOUNT_CREATOR_ACTION"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    .line 281
    .local v1, "serviceComponent":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    const-string v3, "BAC"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "Unable to start CreateBlurAccountService"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
