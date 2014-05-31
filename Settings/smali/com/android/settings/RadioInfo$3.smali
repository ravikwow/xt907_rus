.class Lcom/android/settings/RadioInfo$3;
.super Landroid/content/BroadcastReceiver;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 387
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 389
    iget-object v2, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    const-string v3, "showSpn"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    # setter for: Lcom/android/settings/RadioInfo;->showSpn:Z
    invoke-static {v2, v3}, Lcom/android/settings/RadioInfo;->access$2302(Lcom/android/settings/RadioInfo;Z)Z

    .line 390
    iget-object v2, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    const-string v3, "spn"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/settings/RadioInfo;->mSpn:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/settings/RadioInfo;->access$2402(Lcom/android/settings/RadioInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 391
    const-string v2, "phone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive intent SPN_STRINGS_UPDATED_ACTION showSpn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    # getter for: Lcom/android/settings/RadioInfo;->showSpn:Z
    invoke-static {v4}, Lcom/android/settings/RadioInfo;->access$2300(Lcom/android/settings/RadioInfo;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " spn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    # getter for: Lcom/android/settings/RadioInfo;->mSpn:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/RadioInfo;->access$2400(Lcom/android/settings/RadioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    const-string v2, "com.motorola.android.intent.action.GET_REAL_DATA_NET_TYPE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 395
    const-string v2, "showRealDataNetType"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 396
    .local v1, "showReal":Z
    if-eqz v1, :cond_0

    .line 397
    iget-object v2, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    # invokes: Lcom/android/settings/RadioInfo;->updateDataState()V
    invoke-static {v2}, Lcom/android/settings/RadioInfo;->access$000(Lcom/android/settings/RadioInfo;)V

    .line 398
    iget-object v2, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    # invokes: Lcom/android/settings/RadioInfo;->updateDataStats()V
    invoke-static {v2}, Lcom/android/settings/RadioInfo;->access$100(Lcom/android/settings/RadioInfo;)V

    .line 399
    iget-object v2, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    # invokes: Lcom/android/settings/RadioInfo;->updatePdpList()V
    invoke-static {v2}, Lcom/android/settings/RadioInfo;->access$200(Lcom/android/settings/RadioInfo;)V

    .line 400
    iget-object v2, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    # invokes: Lcom/android/settings/RadioInfo;->updateNetworkType()V
    invoke-static {v2}, Lcom/android/settings/RadioInfo;->access$300(Lcom/android/settings/RadioInfo;)V

    goto :goto_0

    .line 405
    .end local v1    # "showReal":Z
    :cond_2
    const-string v2, "phone"

    const-string v3, "receive unknow intent!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
