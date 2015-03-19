.class Lcom/android/settings/deviceinfo/CheckUpdate$1;
.super Landroid/content/BroadcastReceiver;
.source "CheckUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/CheckUpdate;->registerUpdateReceiver()V
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
    .line 124
    iput-object p1, p0, Lcom/android/settings/deviceinfo/CheckUpdate$1;->this$0:Lcom/android/settings/deviceinfo/CheckUpdate;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v8, 0x7f0b0042

    const/4 v6, 0x3

    const/4 v7, 0x1

    .line 128
    const-string v4, "com.motorola.blur.service.blur.upgrade.requestid"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 129
    .local v3, "requestId":I
    if-eqz v3, :cond_1

    .line 131
    const-string v4, "CheckUpdate"

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    const-string v4, "CheckUpdate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignore check update response, requestId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    const-string v4, "com.motorola.blur.service.blur.upgrade.check_error"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "errorCode":Ljava/lang/String;
    const-string v4, "CheckUpdate"

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 140
    const-string v4, "CheckUpdate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received check update response, code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_2
    const-string v4, "ERR_OK"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "ERR_ALREADY"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 144
    :cond_3
    iget-object v4, p0, Lcom/android/settings/deviceinfo/CheckUpdate$1;->this$0:Lcom/android/settings/deviceinfo/CheckUpdate;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 148
    :cond_4
    const-string v4, "ERR_NET"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 151
    iget-object v4, p0, Lcom/android/settings/deviceinfo/CheckUpdate$1;->this$0:Lcom/android/settings/deviceinfo/CheckUpdate;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-ne v4, v7, :cond_6

    .line 152
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 154
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 155
    .local v2, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-ne v4, v7, :cond_5

    .line 156
    iget-object v4, p0, Lcom/android/settings/deviceinfo/CheckUpdate$1;->this$0:Lcom/android/settings/deviceinfo/CheckUpdate;

    invoke-virtual {v4, v8}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 158
    :cond_5
    iget-object v4, p0, Lcom/android/settings/deviceinfo/CheckUpdate$1;->this$0:Lcom/android/settings/deviceinfo/CheckUpdate;

    const v5, 0x7f0b0040

    invoke-virtual {v4, v5}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 163
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "netInfo":Landroid/net/NetworkInfo;
    :cond_6
    iget-object v4, p0, Lcom/android/settings/deviceinfo/CheckUpdate$1;->this$0:Lcom/android/settings/deviceinfo/CheckUpdate;

    invoke-virtual {v4, v8}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 166
    :cond_7
    const-string v4, "ERR_DOWNLOADING"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 167
    iget-object v4, p0, Lcom/android/settings/deviceinfo/CheckUpdate$1;->this$0:Lcom/android/settings/deviceinfo/CheckUpdate;

    const v5, 0x7f0b0046

    invoke-virtual {v4, v5}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 168
    :cond_8
    const-string v4, "ERR_NOTFOUND"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 169
    iget-object v4, p0, Lcom/android/settings/deviceinfo/CheckUpdate$1;->this$0:Lcom/android/settings/deviceinfo/CheckUpdate;

    const v5, 0x7f0b0043

    invoke-virtual {v4, v5}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 170
    :cond_9
    const-string v4, "ERR_TEMP"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 171
    iget-object v4, p0, Lcom/android/settings/deviceinfo/CheckUpdate$1;->this$0:Lcom/android/settings/deviceinfo/CheckUpdate;

    const v5, 0x7f0b0044

    invoke-virtual {v4, v5}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 172
    :cond_a
    const-string v4, "ERR_FAIL"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 173
    iget-object v4, p0, Lcom/android/settings/deviceinfo/CheckUpdate$1;->this$0:Lcom/android/settings/deviceinfo/CheckUpdate;

    const v5, 0x7f0b0045

    invoke-virtual {v4, v5}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0

    .line 174
    :cond_b
    const-string v4, "ERR_BADPARAM"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 175
    iget-object v4, p0, Lcom/android/settings/deviceinfo/CheckUpdate$1;->this$0:Lcom/android/settings/deviceinfo/CheckUpdate;

    const v5, 0x7f0b0041

    invoke-virtual {v4, v5}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0
.end method
