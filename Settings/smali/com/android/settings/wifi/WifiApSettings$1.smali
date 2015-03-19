.class Lcom/android/settings/wifi/WifiApSettings$1;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApSettings;->confirmOpenConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApSettings;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 303
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 304
    const-string v0, "WifiApSettings"

    const-string v1, "User Selecetd Ok"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    # invokes: Lcom/android/settings/wifi/WifiApSettings;->handleNewConfig()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApSettings;->access$000(Lcom/android/settings/wifi/WifiApSettings;)V

    .line 310
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 311
    return-void

    .line 306
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 307
    const-string v0, "WifiApSettings"

    const-string v1, "User Selecetd Cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method
