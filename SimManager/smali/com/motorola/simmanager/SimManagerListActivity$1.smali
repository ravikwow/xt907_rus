.class Lcom/motorola/simmanager/SimManagerListActivity$1;
.super Landroid/os/Handler;
.source "SimManagerListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/simmanager/SimManagerListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/simmanager/SimManagerListActivity;


# direct methods
.method constructor <init>(Lcom/motorola/simmanager/SimManagerListActivity;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/motorola/simmanager/SimManagerListActivity$1;->this$0:Lcom/motorola/simmanager/SimManagerListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 52
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 60
    :goto_0
    return-void

    .line 54
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 55
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "filter_text"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "filterText":Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/simmanager/SimManagerListActivity$1;->this$0:Lcom/motorola/simmanager/SimManagerListActivity;

    invoke-virtual {v2, v1}, Lcom/motorola/simmanager/SimManagerListActivity;->onProcessChecking(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
