.class public Lcom/motorola/blur/setup/Ready2GoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Ready2GoReceiver.java"


# static fields
.field private static final READY2GO_CONFIGURED:Ljava/lang/String; = "com.dashwire.config.CONFIGURED"

.field public static final TAG:Ljava/lang/String; = "Ready2GoReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    move-object v1, p1

    .line 19
    .local v1, "ctxt":Landroid/content/Context;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.dashwire.config.CONFIGURED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    const-string v2, "Ready2GoReceiver"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Ready2Go complete intent received"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 25
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/motorola/blur/setup/Ready2GoReceiver$1;

    invoke-direct {v3, p0, v1}, Lcom/motorola/blur/setup/Ready2GoReceiver$1;-><init>(Lcom/motorola/blur/setup/Ready2GoReceiver;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 37
    :cond_0
    return-void
.end method
