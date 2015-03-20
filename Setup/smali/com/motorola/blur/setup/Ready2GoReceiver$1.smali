.class Lcom/motorola/blur/setup/Ready2GoReceiver$1;
.super Ljava/lang/Object;
.source "Ready2GoReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/Ready2GoReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/Ready2GoReceiver;

.field final synthetic val$ctxt:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/Ready2GoReceiver;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/motorola/blur/setup/Ready2GoReceiver$1;->this$0:Lcom/motorola/blur/setup/Ready2GoReceiver;

    iput-object p2, p0, Lcom/motorola/blur/setup/Ready2GoReceiver$1;->val$ctxt:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 27
    iget-object v2, p0, Lcom/motorola/blur/setup/Ready2GoReceiver$1;->val$ctxt:Landroid/content/Context;

    const-string v3, "DeviceSetup"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 28
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 29
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "R2GConfigured"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 30
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 31
    const-string v2, "Ready2GoReceiver"

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "Ready2Go complete pref saved"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 33
    return-void
.end method
