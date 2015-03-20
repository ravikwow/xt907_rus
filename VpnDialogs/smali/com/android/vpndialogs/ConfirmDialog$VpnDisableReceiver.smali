.class Lcom/android/vpndialogs/ConfirmDialog$VpnDisableReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConfirmDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vpndialogs/ConfirmDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VpnDisableReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vpndialogs/ConfirmDialog;


# direct methods
.method constructor <init>(Lcom/android/vpndialogs/ConfirmDialog;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/vpndialogs/ConfirmDialog$VpnDisableReceiver;->this$0:Lcom/android/vpndialogs/ConfirmDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    if-nez p2, :cond_1

    .line 70
    :try_start_0
    const-string v0, "VpnConfirm"

    const-string v1, "Getting intent failed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const-string v0, "com.motorola.app.action.VPN_DISABLED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/vpndialogs/ConfirmDialog$VpnDisableReceiver;->this$0:Lcom/android/vpndialogs/ConfirmDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    goto :goto_0
.end method
