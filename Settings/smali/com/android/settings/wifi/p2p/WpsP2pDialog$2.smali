.class Lcom/android/settings/wifi/p2p/WpsP2pDialog$2;
.super Ljava/util/TimerTask;
.source "WpsP2pDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WpsP2pDialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WpsP2pDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WpsP2pDialog;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WpsP2pDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WpsP2pDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WpsP2pDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WpsP2pDialog;->access$500(Lcom/android/settings/wifi/p2p/WpsP2pDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/p2p/WpsP2pDialog$2$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/p2p/WpsP2pDialog$2$1;-><init>(Lcom/android/settings/wifi/p2p/WpsP2pDialog$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    return-void
.end method
