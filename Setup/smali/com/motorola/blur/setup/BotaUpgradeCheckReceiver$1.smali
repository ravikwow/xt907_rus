.class Lcom/motorola/blur/setup/BotaUpgradeCheckReceiver$1;
.super Landroid/os/AsyncTask;
.source "BotaUpgradeCheckReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/BotaUpgradeCheckReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
.field final synthetic this$0:Lcom/motorola/blur/setup/BotaUpgradeCheckReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/BotaUpgradeCheckReceiver;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/motorola/blur/setup/BotaUpgradeCheckReceiver$1;->this$0:Lcom/motorola/blur/setup/BotaUpgradeCheckReceiver;

    iput-object p2, p0, Lcom/motorola/blur/setup/BotaUpgradeCheckReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/BotaUpgradeCheckReceiver$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "param"    # [Ljava/lang/Void;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/motorola/blur/setup/BotaUpgradeCheckReceiver$1;->this$0:Lcom/motorola/blur/setup/BotaUpgradeCheckReceiver;

    iget-object v1, p0, Lcom/motorola/blur/setup/BotaUpgradeCheckReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/BotaUpgradeCheckReceiver;->checkBotaUpgradeAvail(Landroid/content/Context;)Z

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method
