.class Lcom/android/settings/deviceinfo/CheckUpdate$3;
.super Ljava/lang/Object;
.source "CheckUpdate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/CheckUpdate;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/CheckUpdate;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/CheckUpdate;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/settings/deviceinfo/CheckUpdate$3;->this$0:Lcom/android/settings/deviceinfo/CheckUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 226
    const-string v0, "CheckUpdate"

    const-string v1, "CheckUpdate dialog is dismissed, close CheckUpdate activity."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckUpdate$3;->this$0:Lcom/android/settings/deviceinfo/CheckUpdate;

    # getter for: Lcom/android/settings/deviceinfo/CheckUpdate;->mUpdateReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/CheckUpdate;->access$000(Lcom/android/settings/deviceinfo/CheckUpdate;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    const-string v0, "CheckUpdate"

    const-string v1, "unregister receiver in onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckUpdate$3;->this$0:Lcom/android/settings/deviceinfo/CheckUpdate;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/CheckUpdate$3;->this$0:Lcom/android/settings/deviceinfo/CheckUpdate;

    # getter for: Lcom/android/settings/deviceinfo/CheckUpdate;->mUpdateReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/settings/deviceinfo/CheckUpdate;->access$000(Lcom/android/settings/deviceinfo/CheckUpdate;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckUpdate$3;->this$0:Lcom/android/settings/deviceinfo/CheckUpdate;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/deviceinfo/CheckUpdate;->mUpdateReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/CheckUpdate;->access$002(Lcom/android/settings/deviceinfo/CheckUpdate;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckUpdate$3;->this$0:Lcom/android/settings/deviceinfo/CheckUpdate;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 233
    return-void
.end method
